<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addDetails.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script language="javascript">

    function checkAll() {
        // Clear previous errors
        nameErr.innerHTML = "";
        momErr.innerHTML = "";
        dadErr.innerHTML = "";

        let f = true;

        if (checkName() == false) f = false;
        if (checkMom() == false) f = false;
        if (checkDad() == false) f = false;

        return f;
    }

    // Name of the survivor
    function checkName() {
        let name = document.getElementById("name").value;
        if (name.trim().length < 2 || name.trim().length > 30) {
            nameErr.innerHTML = "אורך השם לא תקין";
            return false;
        }
        return true;
    }

    // Mom's name
    function checkMom() {
        let mom = document.getElementById("Mom").value;
        if (mom.trim().length < 2 || mom.trim().length > 30) {
            momErr.innerHTML = "אורך שם האם לא תקין";
            return false;
        }
        return true;
    }

    // Dad's name
    function checkDad() {
        let dad = document.getElementById("Dad").value;
        if (dad.trim().length < 2 || dad.trim().length > 30) {
            dadErr.innerHTML = "אורך שם האב לא תקין";
            return false;
        }
        return true;
    }

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Info</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="text-align:center"> Info Page</h1>
<form onsubmit="return checkAll();">
    <div>
        <input type="text" name="Name" id="name"/> שם של הניצול
        <span id="nameErr" style="color:red"></span>
    </div>
    <div>
        <input type="text" name="Mom" id="Mom"/> שם של אמא של הניצול
        <span id="momErr" style="color:red"></span>
    </div>
    <div>
        <input type="text" name="Dad" id="Dad"/> שם של אבא של הניצול
        <span id="dadErr" style="color:red"></span>
    </div>
    <div>
        <input type="submit" value="Submit" />
    </div>
</form>
    <%=st %>
</asp:Content>
