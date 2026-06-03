<%@ Page Language="C#" MasterPageFile="~/MasterPage.master"
    AutoEventWireup="true"
    CodeFile="SignIn.aspx.cs"
    Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>כניסה</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <h2 style="text-align:center">כניסה למערכת</h2>

    <table border="0" style="margin:auto; text-align:center;">

        <!-- Email -->
        <tr>
            <td>אימייל</td>
            <td>
                <input type="email" name="email" id="email"
                    style="width:250px; height:25px;" />
            </td>
        </tr>

        <!-- Password -->
        <tr>
            <td>סיסמא</td>
            <td>
                <input type="password" name="password" id="password"
                    style="width:250px; height:25px;" />
            </td>
        </tr>

        <!-- Submit -->
        <tr>
            <td colspan="2">
                <input type="submit" name="submit" id="submit"
                    value="כניסה"
                    style="width:120px; height:35px;" />
            </td>
        </tr>

    </table>

    <br />

    <div style="color:red; text-align:center;">
        <%= st %>
    </div>

</asp:Content>