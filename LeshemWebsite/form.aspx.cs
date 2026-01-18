using System;
using System.Web.UI;

public partial class _Default : Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string fn = Request.Form["fn"];
            string age = Request.Form["age"];

            string sqlInsert =
                "INSERT INTO tUsers VALUES (" +
                "N'" + fn + "'," +
                age +
                ")";

            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            st = "נרשמת בהצלחה!";
        }
    }
}
