<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs"
    Inherits="Details" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script language="javascript">

        function checkAllDetails() {

            nameErr.innerHTML = "";
            dadErr.innerHTML = "";
            momErr.innerHTML = "";
            storyErr.innerHTML = "";

            let f = true;

            if (checkName() == false)
                f = false;

            if (checkDad() == false)
                f = false;

            if (checkMom() == false)
                f = false;

            if (checkStory() == false)
                f = false;

            return f;
        }

        // Name
        function checkName() {

            let name = document.getElementById("name").value;

            if (name.length <= 1 || name.length >= 10) {
                nameErr.innerHTML = "השם חייב להיות יותר מתו אחד ופחות מ-10 תווים";
                return false;
            }

            return true;
        }

        // Dad
        function checkDad() {

            let dad = document.getElementById("dad").value;

            if (dad.length <= 1 || dad.length >= 10) {
                dadErr.innerHTML = "שם האב חייב להיות יותר מתו אחד ופחות מ-10 תווים";
                return false;
            }

            return true;
        }

        // Mom
        function checkMom() {

            let mom = document.getElementById("mom").value;

            if (mom.length <= 1 || mom.length >= 10) {
                momErr.innerHTML = "שם האם חייב להיות יותר מתו אחד ופחות מ-10 תווים";
                return false;
            }

            return true;
        }

        // Story
        function checkStory() {

            let story = document.getElementById("Story").value;

            if (story.length < 10 || story.length >= 100) {
                storyErr.innerHTML = "הסיפור חייב להיות לפחות 10 תווים ופחות מ-100 תווים";
                return false;
            }

            return true;
        }

    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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

    <h1>פריטים</h1>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="details-actions">

        <div class="details-box">
            <h3>הוספת פריט</h3>

            שם:<br />
            <input type="text" name="name" id="name" />
            <br />
            <span id="nameErr" style="font-size:15px; color:red;"></span>
            <br /><br />

            אבא:<br />
            <input type="text" name="dad" id="dad" />
            <br />
            <span id="dadErr" style="font-size:15px; color:red;"></span>
            <br /><br />

            אמא:<br />
            <input type="text" name="mom" id="mom" />
            <br />
            <span id="momErr" style="font-size:15px; color:red;"></span>
            <br /><br />

            סיפור קצר על הניצול:<br />
            <textarea name="Story" id="Story" rows="5" cols="40"></textarea>
            <br />
            <span id="storyErr" style="font-size:15px; color:red;"></span>
            <br /><br />

            <input type="submit" name="submit" value="הוסף פריט"
                onclick="return checkAllDetails();" />
        </div>

        <div class="details-box">
            <h3>חיפוש ניצול לפי שם</h3>

            <input type="text" name="searchName" id="searchName"
                placeholder="הכנס שם לחיפוש" />
            <br /><br />

            <input type="submit" name="searchSubmit" value="חפש" />
        </div>

    </div>

    <hr />

    <%= st %>

</asp:Content>