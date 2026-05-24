<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/MasterPage.master"
    AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    .gallery-container {
        width: 90%;
        margin: auto;
        text-align: center;
        padding: 40px 0;
    }

    .gallery-title {
        font-size: 42px;
        color: #333;
        margin-bottom: 10px;
        font-weight: bold;
    }

    .gallery-subtitle {
        font-size: 18px;
        color: #777;
        margin-bottom: 40px;
    }

    .gallery-grid {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 30px;
    }

    .gallery-item {
        background: white;
        border-radius: 16px;
        overflow: hidden;
        width: 300px;
        box-shadow: 0 6px 18px rgba(0,0,0,0.12);
        transition: all 0.3s ease;
    }

    .gallery-item:hover {
        transform: translateY(-8px);
        box-shadow: 0 12px 24px rgba(0,0,0,0.18);
    }

    .gallery-item img {
        width: 100%;
        height: 320px;
        object-fit: contain;
        background-color: #f9f9f9;
        padding-top: 10px;
    }

    .gallery-caption {
        padding: 18px;
        font-size: 22px;
        color: #222;
        font-weight: 600;
    }

    @media (max-width: 768px) {
        .gallery-item {
            width: 90%;
        }

        .gallery-item img {
            height: 280px;
        }
    }
</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <h1 class="gallery-title">The Gallery</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="gallery-container">



        <div class="gallery-grid">

            <!-- Image 1 -->
            <div class="gallery-item">
                <img src="https://www.holocaust-s.org/wp-content/uploads/2016/07/gnor.jpg"
                    alt="Dev Ganur" />

                <div class="gallery-caption">Dev Ganur</div>
            </div>

            <!-- Image 2 -->
            <div class="gallery-item">
                <img src="https://www.holocaust-s.org/wp-content/uploads/2016/07/shuv.jpg"
                    alt="Baruch Shuv" />

                <div class="gallery-caption">Baruch Shuv</div>

            </div>

            <!-- Image 3 -->
            <div class="gallery-item">
                <img src="https://he.claimscon.org/wp-content/uploads/2017/02/CC-1184.jpg"
                    alt="Aviva Goldshmidt" />

                <div class="gallery-caption">Aviva Goldshmidt</div>
            </div>

        </div>

    </div>

</asp:Content>