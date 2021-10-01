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

public partial class WomanTop : BasePage
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
            using (SqlCommand cmd = new SqlCommand("procBindAllProductsWomanTop", con))
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
}