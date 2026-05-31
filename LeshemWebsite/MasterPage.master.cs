using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Channels;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != "Admin") {
            adminLink.Visible = false;
        }
        if (Session["username"] == "אורח") {
            regLink.Visible = true;
            exitLink.Visible = false;
            AdminLinkTwo.Visible = false;
        }
        if (Session["username"] != null)
        {
            regLink.Visible = false;
            exitLink.Visible = true;
            logInLink.Visible = false;
            AdminLinkTwo.Visible = true;
        }
        else { 
            regLink.Visible = true;
            exitLink.Visible = false;
            logInLink.Visible = true;
            AdminLinkTwo.Visible = false;
        }
    }
}