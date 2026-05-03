<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <script language ="javascript">
            function checkAll() {

                fnErr.innerHTML = "";
                phoneErr.innerHTML = "";

                f = true;

                if (checkFirstName() == false)
                    f = false;

                if (checkPhone() == false)
                    f = false;

                return f
            }
            function checkFirstName() {
                name = document.getElementById("fullName").value;

                if (name.length < 2 || name.length > 30) {
                    fnErr.innerHTML = "אורך השם לא תקין";
                    return false;
                }
                return true;
            }
            function checkPhone() {
                phone = document.getElementById("phone").value;
                if (phone.length < 7 || phone.length>7) {
                    phoneErr.innerHTML = "אורך המספר לא תקין";
                    return false;
                }
                return true;
            }
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>Form</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    

    <table border="0" dir="rtl">

        <!-- Full Name -->
        <tr>
            <td style="width:150px;">שם מלא</td>
            <td>
                <input type="text" name="fullName" id="fullName" style="width:96%; height:25px;" />
                <span id="fnErr" style="font-size:15px; color:red;"></span>
            </td>
            <td></td>
        </tr>

        <!-- Email -->
        <tr>
            <td>אימייל</td>
            <td>
                <input type="email" name="email" id="email" style="width:96%; height:25px;" />
                <span id="emailErr" style="font-size:15px; color:red;"></span>
            </td>
            <td></td>
        </tr>

        <!-- Password -->
        <tr>
            <td>סיסמה</td>
            <td>
                <input type="password" name="password" id="password" style="width:96%; height:25px;" />
            </td>
            <td></td>
        </tr>

        <!-- Confirm Password -->
        <tr>
            <td>אימות סיסמה</td>
            <td>
                <input type="password" name="confirmPassword" id="confirmPassword" style="width:96%; height:25px;" />
            </td>
            <td></td>
        </tr>

        <!-- Phone -->
        <tr>
            <td>טלפון</td>
            <td>
                <select name="prefix" id="prefix">
                    <option>050</option>
                    <option>051</option>
                    <option>052</option>
                    <option>053</option>
                    <option>054</option>
                    <option>055</option>
                    <option>056</option>
                    <option>057</option>
                    <option>058</option>
                    <option>059</option>
                </select>

                -
                <input type="text" name="phone" id="phone" style="width:60%;" />
                <span id="phoneErr" style="font-size:15px; color:red;"></span>

            </td>
            <td></td>
        </tr>

        <!-- Age (Radio) -->
        <tr>
            <td>גיל</td>
            <td>
                <input type="radio" name="age" value="pre7"> מתחת ל-7
                <input type="radio" name="age" value="7-9"> 7-9
                <input type="radio" name="age" value="10-12"> 10-12
                <input type="radio" name="age" value="13-15"> 13-15
                <input type="radio" name="age" value="16-18"> 16-18
                <input type="radio" name="age" value="18+"> 18+
            </td>
            <td></td>
        </tr>

        <!-- Subjects (Checkbox) -->
        <tr>
            <td>מקצועות</td>
            <td>
                <input type="checkbox" name="subjects" value="math"> מתמטיקה
                <input type="checkbox" name="subjects" value="science"> מדעים
                <input type="checkbox" name="subjects" value="cs"> מדעי המחשב
                <input type="checkbox" name="subjects" value="english"> אנגלית
            </td>
            <td></td>
        </tr>

        <!-- Submit -->
        <tr>
            <td></td>
            <td>
                <input type="submit" value="שלח" style="width:120px; height:35px;" />
            </td>
            <td></td>

        </tr>

    </table>

    <%=st %>
</asp:Content>