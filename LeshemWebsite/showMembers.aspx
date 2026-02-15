<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showMembers.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <h2>מנהל</h2>
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
        <input type="text" name="firstName" id="firstName" /> שם פרטי<br />
   <input type="text" name="lastName" id="lastName" /> שם משפחה<br />
    <input type="submit" name="submit" id="submit"/> <br />
    <%=st %>
</asp:Content>

