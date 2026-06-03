using System;
using System.Data;
using System.Web.UI;

public partial class Details : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // אם נלחץ כפתור הוספה
        if (Request.Form["submit"] != null)
        {
            string name = Request.Form["name"];
            string dad = Request.Form["dad"];
            string mom = Request.Form["mom"];
            string story = Request.Form["Story"];

            string sqlInsert = "INSERT INTO tDetails (name, dad, mom, Story) VALUES (N'"
                + name + "', N'"
                + dad + "', N'"
                + mom + "', N'"
                + story + "')";

            MyAdoHelper.DoQuery("Database.mdf", sqlInsert);
        }

        LoadTable();
    }

    void LoadTable()
    {
        st += "<h2>פריטים</h2>";

        string searchName = Request.Form["searchName"];
        string sql;

        if (!string.IsNullOrWhiteSpace(searchName))
        {
            sql = "SELECT * FROM tDetails WHERE Name LIKE N'%" + searchName + "%'";
            st += "<p>תוצאות חיפוש עבור: " + searchName + "</p>";
        }
        else
        {
            sql = "SELECT * FROM tDetails";
        }

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt.Rows.Count == 0)
        {
            st += "אין נתונים להצגה";
        }
        else
        {
            st += "<table border='1' style='border-collapse:collapse; width:70%; margin:auto; text-align:center;'>";

            st += "<tr style='background:#ddd;'>";
            st += "<th>ID</th>";
            st += "<th>שם</th>";
            st += "<th>אבא</th>";
            st += "<th>אמא</th>";
            st += "<th>סיפור קצר</th>";
            st += "</tr>";

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";
                st += "<td>" + dt.Rows[i]["Id"] + "</td>";
                st += "<td>" + dt.Rows[i]["Name"] + "</td>";
                st += "<td>" + dt.Rows[i]["Dad"] + "</td>";
                st += "<td>" + dt.Rows[i]["Mom"] + "</td>";
                st += "<td>" + dt.Rows[i]["Story"] + "</td>";
                st += "</tr>";
            }

            st += "</table>";
        }
    }
}