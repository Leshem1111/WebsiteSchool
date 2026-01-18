using System;
using System.Web;

public partial class login : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string email = Request.Form["email"];
            string pass = Request.Form["password"];

            string sql =
                "SELECT * FROM tUsers " +
                "WHERE Email = '" + email + "' " +
                "AND Password = '" + pass + "'";

            bool userExists = MyAdoHelper.IsExist(sql);

            if (!userExists)
            {
                st = "אימייל או סיסמה שגויים";
            }
            else
            {
                Response.Redirect("home.aspx");
            }
        }
    }
}
