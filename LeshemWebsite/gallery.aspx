<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/MasterPage.master"
    AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style>
    .gallery-container {
        width: 100%;
        text-align: center;
    }

    .gallery-intro {
        max-width: 750px;
        margin: 0 auto 35px auto;
        color: #444;
        font-size: 17px;
        line-height: 1.6;
    }

    .gallery-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
        gap: 28px;
        justify-items: center;
    }

    .gallery-item {
        background: #ffffff;
        border-radius: 14px;
        overflow: hidden;
        width: 100%;
        max-width: 300px;
        box-shadow: 0 6px 18px rgba(0,0,0,0.14);
        transition: all 0.3s ease;
        border: 1px solid #e5e5e5;
    }

    .gallery-item:hover {
        transform: translateY(-7px);
        box-shadow: 0 12px 26px rgba(0,0,0,0.2);
    }

    .gallery-item img {
        width: 100%;
        height: 310px;
        object-fit: cover;
        background-color: #f9f9f9;
        display: block;
    }

    .gallery-caption {
        padding: 18px;
    }

    .gallery-caption h2 {
        margin: 0 0 10px 0;
        font-size: 22px;
        color: #222;
    }

    .gallery-caption p {
        margin: 0;
        font-size: 15px;
        line-height: 1.5;
        color: #555;
    }

    .gallery-note {
        margin-top: 35px;
        font-size: 14px;
        color: #666;
        line-height: 1.5;
    }

    @media (max-width: 768px) {
        .gallery-item img {
            height: 280px;
        }

        .gallery-intro {
            font-size: 16px;
        }
    }
</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>הגלריה</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="gallery-container">

        <p class="gallery-intro">
            הגלריה מציגה לנו תמונות וסיפורים של ניצולי וניצולות שואה 
            אנו ממליצים לכם ללחוץ על התמונות ולהיכנס לסיפורים שלהם.
        </p>

        <div class="gallery-grid">

    <!-- Survivor 1 -->
    <div class="gallery-item">
        <a href="https://www.holocaust-s.org/%D7%A2%D7%93%D7%95%D7%99%D7%95%D7%AA/%D7%93%D7%91-%D7%92%D7%A0%D7%95%D7%A8-%D7%A1%D7%99%D7%A4%D7%95%D7%A8%D7%95-%D7%A9%D7%9C-%D7%A9%D7%95%D7%A8%D7%93-%D7%91%D7%9F-11/" target="_blank">
            <img src="https://www.holocaust-s.org/wp-content/uploads/2016/07/gnor.jpg"
                 alt="Dev Ganur" />
        </a>

        <div class="gallery-caption">
            <h2>Dev Ganur</h2>
            <p>
דב גנור היה בן 11 בלבד כשנשאר לבדו בעולם.
                אחיו נורה לנגד עיניו, אביו חלה ומת ואמו הופרדה ממנו ונעלמה. דב הילד נאלץ להילחם על חייו,
                לפעול כדי לשרוד – והוא הצליח. הנער שהתקיים מקליפות תפוחי אדמה הפך ללוחם ישראלי ולקצין משטרה בכיר - וזהו סיפורו.
            </p>
        </div>
    </div>

    <!-- Survivor 2 -->
    <div class="gallery-item">
        <a href="https://he.wikipedia.org/wiki/%D7%91%D7%A8%D7%95%D7%9A_%D7%A9%D7%95%D7%91" target="_blank">
            <img src="https://www.holocaust-s.org/wp-content/uploads/2016/07/shuv.jpg"
                 alt="Baruch Shuv" />
        </a>

        <div class="gallery-caption">
            <h2>Baruch Shuv</h2>
            <p>
                ברוך שוב היה פרטיזן בתקופת השואה ויושב ראשון ארגון הפרטיזנים, לוחמי המחתרות ומורדי הגטאות בישראל, חבר בהנהלת יד ושם, ועוד. וזהו סיפורו.
            </p>
        </div>
    </div>

    <!-- Survivor 3 -->
    <div class="gallery-item">
        <a href="https://he.claimscon.org/regions/western-europe/germany/survivor-story-aviva-goldschmidt/" target="_blank">
            <img src="https://he.claimscon.org/wp-content/uploads/2017/02/CC-1184.jpg"
                 alt="Aviva Goldshmidt" />
        </a>

        <div class="gallery-caption">
            <h2>Aviva Goldshmidt</h2>
            <p>
                אביבה גולדשמידט זוכרת כל יום את הפחד של ילדה קטנה שלמדה שכל צליל יכול להביא לגילויה ולמותה, וזהו סיפורה.
            </p>
        </div>
    </div>

    <!-- Survivor 4 -->
    <div class="gallery-item">
        <a href="https://en.wikipedia.org/wiki/Elie_Wiesel" target="_blank">
            <img src="https://commons.wikimedia.org/wiki/Special:FilePath/Elie%20Wiesel%2C%20head-and-shoulders%20portrait%2C%201966.jpg"
                 alt="Elie Wiesel" />
        </a>

        <div class="gallery-caption">
            <h2>Elie Wiesel</h2>
            <p>
                היה סופר יהודי צרפתי אמריקאי, עיתונאי, פילוסוף, חתן פרס נובל לשלום. וזהו סיפורו
            </p>
        </div>
    </div>

    <!-- Survivor 5 -->
    <div class="gallery-item">
        <a href="https://en.wikipedia.org/wiki/Eva_Mozes_Kor" target="_blank">
            <img src="https://commons.wikimedia.org/wiki/Special:FilePath/Eva%20Mozes%20Kor.jpg"
                 alt="Eva Mozes Kor" />
        </a>

        <div class="gallery-caption">
            <h2>Eva Mozes Kor</h2>
            <p>
                אווה הייתה ניצולת שואה, שיחד עם אחותה התאומה מרים, הייתה קורבן לניסויי מנגלה בתאומים במחנה אאושוויץ. וזהו סיפורה
            </p>
        </div>
    </div>

    <!-- Survivor 6 -->
    <div class="gallery-item">
        <a href="https://en.wikipedia.org/wiki/Inge_Auerbacher" target="_blank">
            <img src="https://commons.wikimedia.org/wiki/Special:FilePath/Theresienstadt%20Concentration%20Camp%20German%20Jewish%20Holocaust%20Survivor%20Inge%20Auerbacher%20speaks%20about%20her%20childhood%2C%20during%20the%202013%20Federal%20Inter-Agency%20Holocaust%20Remembrance%20Day%2C%20in%20the%20Lincoln%20Theater%20%28Pic%202%29.jpg"
                 alt="Inge Auerbacher" />
        </a>

        <div class="gallery-caption">
            <h2>Inge Auerbacher</h2>
            <p>
                היא כימיכאית אמריקאית, היא שורדת שואה וכתבה הרבה ספרים על החוויות שלה במלחמת העולם השנייה. וזהו סיפורה
            </p>
        </div>
    </div>

</div>

        <p class="gallery-note">
           לא נשכח ולא נסלח" מסמן לנו, העם היהודי ולשאר העולם תזכורת שמעולם לא נשכח את הטבח הנוראי הזה, ומעולם לא נסלח לו."
        </p>

    </div>

</asp:Content>