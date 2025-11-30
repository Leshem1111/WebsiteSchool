using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    public string tableKefel = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        tableKefel = "<table style='text-align:center;border-collapse:collapse;'>";
        for (int i = 1; i <= 10; i++)
        {
            tableKefel+= "<tr>";
            for (int j = 1; j <= 10; j++)
            {
                tableKefel += "<td style='border:1px solid black; padding:10px;'>";
                tableKefel += i * j;
                tableKefel += "</td>";
            }
            tableKefel+= "</tr>"; 
        }
        tableKefel += "</table>";
    }
}