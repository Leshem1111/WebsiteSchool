using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Default2 : Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            Session["username"] = "אורח";
            string email = Request.Form["email"];
            string pass = Request.Form["password"];

            if (email == "lesheminos6@gmail.com" && pass == "admin1111")
            {
                Session["nihul"] = "ok";
                Session["username"] = "מנהל";
                Response.Redirect("showMembers.aspx");

            }
            else
            {
                string sql =
                    "SELECT * FROM tUsers " +
                    "WHERE Email = N'" + email + "' " +
                    "AND Password = N'" + pass + "'";

                bool userExists = MyAdoHelper.IsExist(sql);
                DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

                if (dt.Rows.Count == 0)
                {
                    Session["username"] = "אורח";
                    st = "אימייל או סיסמה שגויים";
                }
                else
                {
                    Response.Redirect("Home.aspx");
                    Session["username"] = "רשום";
                }
            }
        }
    }
}
