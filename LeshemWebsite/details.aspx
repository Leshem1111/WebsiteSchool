<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs"
    Inherits="Details" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .details-actions {
        display: flex;
        justify-content: center;
        align-items: flex-start;
        gap: 60px;
        direction: rtl;
        margin-bottom: 35px;
    }

    .details-box {
        width: 280px;
        text-align: center;
    }

    .details-box input[type="text"] {
        width: 220px;
        height: 25px;
    }

    @media (max-width: 700px) {
        .details-actions {
            flex-direction: column;
            align-items: center;
            gap: 25px;
        }
    }
</style>
    <h1>Details</h1>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="details-actions">

    <div class="details-box">
        <h3>הוספת פריט</h3>

        שם:<br />
        <input type="text" name="name" /><br /><br />

        אבא:<br />
        <input type="text" name="dad" /><br /><br />

        אמא:<br />
        <input type="text" name="mom" /><br /><br />
        <div>
            <textarea name="Story" id="Story" rows="5" cols="40"></textarea>
                סיפור קצר על הניצול
            <span id="storyErr" style="color:red"></span>
</div>
        <input type="submit" name="submit" value="הוסף פריט" />
    </div>

    <div class="details-box">
        <h3>חיפוש ניצול לפי שם</h3>

        <input type="text" name="searchName" placeholder="הכנס שם לחיפוש" />
        <br /><br />

        <input type="submit" name="searchSubmit" value="חפש" />
    </div>

</div>

<hr />

<%= st %>

</asp:Content>