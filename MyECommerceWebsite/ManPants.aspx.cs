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



public partial class ManPants : BasePage
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["BuyNow"] == "YES")
                {

                }
                BindProductRepeater();
            }
        }
        else
        {
            if (Request.QueryString["BuyNow"] == "YES")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
    }


    private void BindProductRepeater()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("procBindAllProductsManPants", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrProducts.DataSource = dt;
                    rptrProducts.DataBind();
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
    protected void txtFilterGrid1Record_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(CS);
        con.Open();
        string qr = "select A.*,B.*,C.Name ,A.PPrice-A.PSelPrice as DiscAmount,B.Name as ImageName, C.Name as BrandName from tblProducts A inner join tblBrands C on C.BrandID =A.PBrandID inner join tblCategory as t2 on t2.CatID=A.PCategoryID cross apply( select top 1 * from tblProductImages B where B.PID= A.PID order by B.PID desc )B where t2.CatName='Pants' AND A.PName like '" + txtFilterGrid1Record.Text + "%' order by A.PID desc";
        SqlDataAdapter da = new SqlDataAdapter(qr, con);
        string text = ((TextBox)sender).Text;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            rptrProducts.DataSource = ds.Tables[0];
            rptrProducts.DataBind();
        }
    }
}