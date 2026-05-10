using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack)
        {
            string name = Request.Form["Name"];
            string dad = Request.Form["Dad"];
            string mom = Request.Form["Mom"];

            String sqlInsert = "INSERT INTO tDetails (Name, Dad, Mom) VALUES (" +
                "N'" + name + "'," +
                "N'" + dad + "'," +
                "N'" + mom + "'" +
                ")";

                MyAdoHelper.DoQuery("Database.mdf", sqlInsert);
            st = "done";
        }
    }
}