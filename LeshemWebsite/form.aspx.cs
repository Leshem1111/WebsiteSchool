using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public string age, name, email, password, date, number, tel, typeOfMember, welcome;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack) {
            name = Request.Form["fullName"];
            email =  Request.Form["email"];
            password = Request.Form["password"];
            date =  Request.Form["dob"];
            number = Request.Form["kidometPhone"] + "" + Request.Form["phone"];
            age = Request.Form["age"];
            typeOfMember = Request.Form["typeofmember"];
            welcome = "Welcome " + name + ", your registration is complete!";
        }
    }
}