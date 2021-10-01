using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Globalization;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            if (ddlLanguages.Items.FindByValue(CultureInfo.CurrentCulture.Name) != null)
            {
                ddlLanguages.Items.FindByValue(CultureInfo.CurrentCulture.Name).Selected = true;
            }
        }
    }

    protected void btnAdminlogout_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Login.aspx");
        Session["Username"] = null;
    }
}
