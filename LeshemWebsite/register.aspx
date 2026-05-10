<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script language="javascript">

        function checkAll() {

            fnErr.innerHTML = "";
            phoneErr.innerHTML = "";
            emailErr.innerHTML = "";
            passwordErr.innerHTML = "";
            confirmPasswordErr.innerHTML = "";
            ageErr.innerHTML = "";
            subjectsErr.innerHTML = "";

            let f = true;

            if (checkFirstName() == false)
                f = false;

            if (checkPhone() == false)
                f = false;

            if (checkEmail() == false)
                f = false;

            if (checkPassword() == false)
                f = false;

            if (checkConfirmPassword() == false)
                f = false;

            if (checkAge() == false)
                f = false;

            if (checkSubjects() == false)
                f = false;

            return f;
        }

        // Full Name
        function checkFirstName() {

            let name = document.getElementById("fullName").value;

            if (name.length < 2 || name.length > 30) {
                fnErr.innerHTML = "אורך השם לא תקין";
                return false;
            }

            return true;
        }

        // Phone
        function checkPhone() {

            let phone = document.getElementById("phone").value;

            if (phone.length != 7) {
                phoneErr.innerHTML = "אורך המספר לא תקין";
                return false;
            }

            return true;
        }

        // Email
        function checkEmail() {

            let email = document.getElementById("email").value;

            if (email.indexOf("@") == -1 || email.indexOf(".") == -1) {
                emailErr.innerHTML = "אימייל לא תקין";
                return false;
            }

            return true;
        }

        // Password
        function checkPassword() {

            let password = document.getElementById("password").value;

            if (password.length < 6) {
                passwordErr.innerHTML = "הסיסמה חייבת להכיל לפחות 6 תווים";
                return false;
            }

            return true;
        }

        // Confirm Password
        function checkConfirmPassword() {

            let password = document.getElementById("password").value;
            let confirmPassword = document.getElementById("confirmPassword").value;

            if (password != confirmPassword) {
                confirmPasswordErr.innerHTML = "הסיסמאות אינן תואמות";
                return false;
            }

            return true;
        }

        // Age
        function checkAge() {

            let ages = document.getElementsByName("age");

            for (let i = 0; i < ages.length; i++) {

                if (ages[i].checked)
                    return true;
            }

            ageErr.innerHTML = "יש לבחור גיל";

            return false;
        }

        // Subjects
        function checkSubjects() {

            let subjects = document.getElementsByName("subjects");

            for (let i = 0; i < subjects.length; i++) {

                if (subjects[i].checked)
                    return true;
            }

            subjectsErr.innerHTML = "יש לבחור לפחות מקצוע אחד";

            return false;
        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Register</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

    <table border="0" dir="rtl" style="width:600px;">

    <!-- Full Name -->
    <tr>
        <td style="width:150px;">שם מלא</td>

        <td>
            <input type="text" name="fullName" id="fullName"
                style="width:250px; height:25px;" />

            <br />

            <span id="fnErr"
                style="font-size:15px; color:red;"></span>
        </td>
    </tr>

    <!-- Email -->
    <tr>
        <td>אימייל</td>

        <td>
            <input type="email" name="email" id="email"
                style="width:250px; height:25px;" />

            <br />

            <span id="emailErr"
                style="font-size:15px; color:red;"></span>
        </td>
    </tr>

    <!-- Password -->
    <tr>
        <td>סיסמה</td>

        <td>
            <input type="password" name="password" id="password"
                style="width:250px; height:25px;" />

            <br />

            <span id="passwordErr"
                style="font-size:15px; color:red;"></span>
        </td>
    </tr>

    <!-- Confirm Password -->
    <tr>
        <td>אימות סיסמה</td>

        <td>
            <input type="password" name="confirmPassword"
                id="confirmPassword"
                style="width:250px; height:25px;" />

            <br />

            <span id="confirmPasswordErr"
                style="font-size:15px; color:red;"></span>
        </td>
    </tr>

    <!-- Phone -->
    <tr>
        <td>טלפון</td>

        <td>

            <!-- שדה מספר -->
            <input type="text" name="phone" id="phone"
                style="width:180px; height:25px;" />

            -

            <!-- Prefix משמאל -->
            <select name="prefix" id="prefix" style="height:31px;">

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

            <br />

            <span id="phoneErr"
                style="font-size:15px; color:red;"></span>

        </td>
    </tr>

    <!-- Age -->
    <tr>
        <td>גיל</td>

        <td>

            <input type="radio" name="age" value="pre7"> מתחת ל-7

            <input type="radio" name="age" value="7-9"> 7-9

            <input type="radio" name="age" value="10-12"> 10-12

            <input type="radio" name="age" value="13-15"> 13-15

            <input type="radio" name="age" value="16-18"> 16-18

            <input type="radio" name="age" value="18+"> 18+

            <br />

            <span id="ageErr"
                style="font-size:15px; color:red;"></span>

        </td>
    </tr>

    <!-- Subjects -->
    <tr>
        <td>מקצועות</td>

        <td>

            <input type="checkbox" name="subjects" value="math"> מתמטיקה

            <input type="checkbox" name="subjects" value="science"> מדעים

            <input type="checkbox" name="subjects" value="cs"> מדעי המחשב

            <input type="checkbox" name="subjects" value="english"> אנגלית

            <br />

            <span id="subjectsErr"
                style="font-size:15px; color:red;"></span>

        </td>
    </tr>

    <!-- Submit -->
    <tr>
        <td></td>

        <td>
            <input type="submit" value="שלח"
                style="width:120px; height:35px;" />
        </td>
    </tr>

</table>
    .

</asp:Content>