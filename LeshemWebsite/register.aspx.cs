using System;
using System.Web.UI;

public partial class Register : Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string fn = Request.Form["name"];
            string email = Request.Form["email"];
            string pass = Request.Form["password"];
            string phone = Request.Form["phoneNumber"]; // חייב להתאים ל-name ב-HTML
            string age = Request.Form["ageGroup"];
            string hobby = Request.Form["hobby"];

            // בדיקה אם אימייל כבר קיים
            string sqlCheck =
                "SELECT * FROM tUsers WHERE Email = N'" + email + "'";

            bool userExists = MyAdoHelper.IsExist(sqlCheck);

            if (userExists)
            {
                st = "המשתמש הזה כבר רשום";
            }
            else
            {
                string sqlInsert =
                    "INSERT INTO tUsers (FullName, Email, Password, PhoneNumber, AgeGroup, Hobby) VALUES (" +
                    "N'" + fn + "'," +
                    "N'" + email + "'," +
                    "N'" + pass + "'," +
                    "N'" + phone + "'," +
                    "N'" + age + "'," +
                    "N'" + hobby + "'" +
                    ")";

                MyAdoHelper.DoQuery("Database.mdf", sqlInsert);

                st = "נרשמת בהצלחה!";
                Response.Redirect("SignIn.aspx");
            }
        }
    }
}
