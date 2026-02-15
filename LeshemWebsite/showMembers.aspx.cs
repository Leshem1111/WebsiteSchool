using System;
using System.Data;
using System.Web.UI;

public partial class _Default : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["firstName"] != null && Request.Form["lastName"] != null)
        {
            string firstName = Request.Form["firstName"].Trim();
            string lastName = Request.Form["lastName"].Trim();


            string fullName = (firstName + " " + lastName).Trim();


            // Show what was searched
            st += "<h3>תוצאות חיפוש עבור:</h3>";
            st += "שם מלא: " + fullName + "<br /><br />";

            // SQL query (matching your real column names)
            string sql = "SELECT FullName, Email, PhoneNumber, AgeGroup, Hobby " +
                         "FROM [dbo].[tUsers] " +
                         "WHERE FullName LIKE '%" + fullName + "%'";

            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            if (dt.Rows.Count == 0)
            {
                st += "אין נתונים להצגה";
            }
            else
            {
                st += "<table border='1'>";
                st += "<tr>";
                st += "<th>שם מלא</th>";
                st += "<th>אימייל</th>";
                st += "<th>טלפון</th>";
                st += "<th>קבוצת גיל</th>";
                st += "<th>תחביב</th>";
                st += "</tr>";

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    st += "<tr>";

                    st += "<td>" + dt.Rows[i]["FullName"].ToString() + "</td>";
                    st += "<td>" + dt.Rows[i]["Email"].ToString() + "</td>";
                    st += "<td>" + dt.Rows[i]["PhoneNumber"].ToString() + "</td>";
                    st += "<td>" + dt.Rows[i]["AgeGroup"].ToString() + "</td>";
                    st += "<td>" + dt.Rows[i]["Hobby"].ToString() + "</td>";

                    st += "</tr>";
                }

                st += "</table>";
            }
        }
    }
}
