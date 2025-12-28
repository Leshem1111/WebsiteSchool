<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
    * {
        box-sizing: border-box;
        margin: 0;
    }
    html, body {
        height: 100%;
    }

    body {
        margin: 0;
        display: flex;
        flex-direction: column;
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        background-color: #0b1220;
        color: #e5e7eb;
    }


    .page-wrapper {
        flex: 1;
        width: 100%;
        height: 100%;
        padding: 40px;
        display: flex;
        justify-content: center; 
        align-items: center; 
        background: linear-gradient(180deg, #0b1220, #020617);
    }

    .form-card {
        width: 100%;
        max-width: 1000px;
        background: #111827;
        border-radius: 16px;
        padding: 48px 64px;
        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.5);
        display: flex;
        flex-direction: column;
    }


    .form-title {
        text-align: center;
        font-size: 2rem;
        font-weight: 700;
        margin-bottom: 32px;
        color: #e5e7eb;
        user-select: none;
    }

    .form-grid {
        display: grid;
        grid-template-columns: 1fr;
        gap: 24px;
    }

    @media (min-width: 900px) {
        .form-grid {
            grid-template-columns: 1fr 1fr;
        }
    }

    @media (min-width: 1200px) {
        .form-grid {
            grid-template-columns: 1fr 1fr 1fr;
        }
    }

    label {
        font-size: 14px;
        color: #c7d2fe;
        text-transform: uppercase;
        letter-spacing: 0.05em;
        user-select: none;
        display: block;
        margin-bottom: 8px;
    }

   
    input, select {
        padding: 14px 16px;
        border-radius: 12px;
        border: 1px solid #1f2937;
        background: #020617;
        color: #e5e7eb;
        font-size: 15px;
        width: 100%;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
    }

    input:focus, select:focus {
        outline: none;
        border-color: #6366f1;
        box-shadow: 0 0 0 3px rgba(99, 102, 241, 0.3);
    }

    .phone-row {
        display: flex;
        gap: 10px;
    }

    .phone-row select {
        max-width: 100px;
        flex-shrink: 0;
    }

   
    .radio-group {
        display: flex;
        gap: 20px;
        margin-top: 6px;
        color: #c7d2fe;
        font-size: 14px;
    }

    .radio-group label {
        font-size: 14px;
        text-transform: none;
        user-select: none;
        cursor: pointer;
        display: flex;
        align-items: center;
        gap: 6px;
    }

    .submit-btn {
        margin-top: 20px;
        padding: 16px;
        font-size: 16px;
        font-weight: 600;
        border-radius: 14px;
        border: none;
        background: linear-gradient(135deg, #6366f1, #4f46e5);
        color: white;
        cursor: pointer;
        width: 160px;
        justify-self: end;
        transition: opacity 0.3s ease;
    }

    .submit-btn:hover {
        opacity: 0.9;
    }

</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Sign In</h1>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

    <div class="page-wrapper">
        <div class="form-card">
            <div class="form-title">Sign In</div>

          
                <div class="form-grid">

                    <div class="form-group">
                        <label for="fullName">Enter your full name</label>
                        <input type="text" id="fullName" name="fullName" />
                    </div>

                    <div class="form-group">
                        <label for="mail">Enter your email</label>
                        <input type="email" id="mail" name="email" />
                    </div>

                    <div class="form-group">
                        <label for="password">Enter your password</label>
                        <input type="password" id="password" name="password" />
                    </div>

                    <div class="form-group">
                        <label for="dob">Enter your date of birth</label>
                        <input type="date" id="dob" name="dob" />
                    </div>

                    <div class="form-group">
                        <label for="age">Enter your age</label>
                        <input type="number" id="age" name="age" />
                    </div>

                    <div class="form-group">
                        <label>Enter your phone number</label>
                        <div class="phone-row">
                            <select name="kidometPhone" id="kidometPhone">
                                <option value="050">050</option>
                                <option value="051">051</option>
                                <option value="052">052</option>
                                <option value="053">053</option>
                                <option value="054">054</option>
                                <option value="055">055</option>
                                <option value="056">056</option>
                                <option value="057">057</option>
                                <option value="058">058</option>
                                <option value="059">059</option>
                            </select>
                            <input type="tel" id="phone" name="phone" />
                        </div>
                    </div>

                    <div class="form-group full">
                        <label>What kind of member are you?</label>
                        <div class="radio-group">
                            <label><input type="radio" name="typeofmember" value="Relative" /> Relative</label>
                            <label><input type="radio" name="typeofmember" value="Survivor" /> Survivor</label>
                            <label><input type="radio" name="typeofmember" value="Other" /> Other</label>
                        </div>
                    </div>
                    <div class="form-group full">
                        
                        <label>Do you agree to the <a href="https://people.com/crime/george-floyd-mother-nursed-her-after-stroke/">terms of service?</a></label>
                        <span>
                            <input type="checkbox" id="checkbox" name="checkbox" />
                         </span>
                        </div>
                    <div class="form-group full">
                        <input type="submit" id="submit" name="submit" class="submit-btn" value="Submit" />
                    </div>

                </div>
            

           
        </div>
    </div>

</asp:Content>
