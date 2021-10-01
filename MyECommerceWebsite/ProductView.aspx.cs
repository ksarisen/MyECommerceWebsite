using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Threading;

public partial class ProductView : BasePage
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["PID"] != null)
        {
            if (!IsPostBack)
            {
                //divSuccess.Visible = false;
                BindProductImage();
                BindProductDetails();
            }
        }
        else
        {
            Response.Redirect("~/Products.aspx");
        }
    }


    private void BindProductDetails()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SP_BindProductDetails", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddWithValue("@PID", PID);
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                rptrProductDetails.DataSource = dt;
                rptrProductDetails.DataBind();
                Session["CartPID"] = Convert.ToInt32(dt.Rows[0]["PID"].ToString());
                Session["myPName"] = dt.Rows[0]["PName"].ToString();
                Session["myPPrice"] = dt.Rows[0]["PPrice"].ToString();
                Session["myPSelPrice"] = dt.Rows[0]["PSelPrice"].ToString();
            }

        }
    }

    private void BindProductImage()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SP_BindProductImages", con)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddWithValue("@PID", PID);
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                rptrImage.DataSource = dt;
                rptrImage.DataBind();
            }
        }
    }

    protected string GetActiveImgClass(int ItemIndex)
    {
        if (ItemIndex == 0)
        {
            return "active";
        }
        else
        {
            return "";

        }
    }

    protected void rptrProductDetails_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string BrandID = (e.Item.FindControl("hfBrandID") as HiddenField).Value;
            string CatID = (e.Item.FindControl("hfCatID") as HiddenField).Value;
            string SubCatID = (e.Item.FindControl("hfSubCatID") as HiddenField).Value;
            string GenderID = (e.Item.FindControl("hfGenderID") as HiddenField).Value;

            RadioButtonList rblSize = e.Item.FindControl("rblSize") as RadioButtonList;

            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select * from tblSizes where BrandID='" + BrandID + "' and CategoryID=" + CatID + " and SubCategoryID=" + SubCatID + " and GenderID=" + GenderID + "", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rblSize.DataSource = dt;
                        rblSize.DataTextField = "sizename";
                        rblSize.DataValueField = "sizeid";
                        rblSize.DataBind();
                    }
                }
            }
        }
    }

    protected void btnAddtoCart_Click(object sender, EventArgs e)
    {
        string SelectedSize = string.Empty;
        foreach (RepeaterItem item in rptrProductDetails.Items)
        {
            if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
            {
                var rbList = item.FindControl("rblSize") as RadioButtonList;
                SelectedSize = rbList.SelectedValue;
                var lblError = item.FindControl("lblError") as Label;
                lblError.Text = "";
            }
        }

        if (SelectedSize != "")
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            Response.Redirect("ProductView.aspx?PID=" + PID);
        }
        else
        {
            foreach (RepeaterItem item in rptrProductDetails.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    var lblError = item.FindControl("lblError") as Label;
                    lblError.Text = "Please select a size";
                }
            }

        }



    }

    protected override void InitializeCulture()
    {
        CultureInfo ci = new CultureInfo("en-US");
        ci.NumberFormat.CurrencySymbol = "TL";
        Thread.CurrentThread.CurrentCulture = ci;

        base.InitializeCulture();
    }

    protected void btnCart2_ServerClick(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}