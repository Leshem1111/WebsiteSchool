using System;
using System.Data;
using System.Web.UI;

public partial class Default2 : Page
{
    public string st = "";


protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) return;

        string email = Request.Form["email"];
        string pass = Request.Form["password"];

        // 🔴 BLOCK EMPTY INPUTS
        if (string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(pass))
        {
            st = "יש למלא אימייל וסיסמה";
            Session["username"] = "אורח";
            return;
        }

        // ---------------- ADMIN ----------------
        if (email == "lesheminos6@gmail.com" && pass == "admin1111")
        {
            Session["nihul"] = "ok";
            Session["username"] = "Admin";

            Response.Redirect("showMembers.aspx");
            return;
        }

        // ---------------- USER ----------------
        string sql =
            "SELECT * FROM tUsers WHERE Email = N'" + email + "' AND Password = N'" + pass + "'";

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt.Rows.Count == 0)
        {
            Session["username"] = "אורח";
            st = "אימייל או סיסמה שגויים";
            return;
        }

        Session["username"] = dt.Rows[0]["FullName"].ToString();
        Response.Redirect("Home.aspx");
    }
}