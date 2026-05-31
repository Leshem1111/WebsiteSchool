<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs"
    Inherits="Details" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>פריטים</h1>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h3>הוספת פריט</h3>

    שם:<br />
    <input type="text" name="name" /><br /><br />

    אבא:<br />
    <input type="text" name="dad" /><br /><br />

    אמא:<br />
    <input type="text" name="mom" /><br /><br />

    <input type="submit" name="submit" value="הוסף פריט" />

    <hr />

    <%= st %>

</asp:Content>