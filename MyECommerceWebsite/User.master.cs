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


public partial class User : System.Web.UI.MasterPage
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            if (ddlLanguages.Items.FindByValue(CultureInfo.CurrentCulture.Name) != null)
            {
                ddlLanguages.Items.FindByValue(CultureInfo.CurrentCulture.Name).Selected = true;
            }
        }

        if (Session["Username"] != null)
        {
            btnlogout.Visible = true;
            btnLogin.Visible = false;
            Button1.Text = "Welcome: " + Session["Username"].ToString().ToUpper();

        }
        else
        {
            btnlogout.Visible = false;
            btnLogin.Visible = true;

        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;

        Response.Redirect("Default.aspx");

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
}
