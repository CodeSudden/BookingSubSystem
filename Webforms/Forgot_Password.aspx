<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot_Password.aspx.cs" Inherits="BookingSubSystem.Webforms.Forgot_Password" %>

<!DOCTYPE html>

<html>
    <head runat="server">
        <meta name="viewport" content="width=device-width, initial-scale="1.0">
        <link href="../Stylesheet/ForgotPass_Style.css" rel="stylesheet" />
        <title>FORGOT PASSWORD?</title>
    </head>
    
    <body>
        <form id="form1" runat="server">
            <div class="login_forms" id="backgroundForm"> <!-- Added id for background form -->
                <div class="log-img">
                    <img src="../Images/Group12.png" />
                </div>
                <forms method="log_form">
                    <div class="txt_field">
                        <asp:TextBox ID="TextBox1" input type="text" required runat="server"></asp:TextBox>
                        <span></span>
                        <label>Enter Email Address</label>
                            <asp:Button ID="btnOpenPopup" runat="server" Text="Send OTP" class="button" OnClientClick="openPopup(); return false;" OnClick="btnOpenPopup_Click" />
                        <br />
                        <br />
                        <asp:Label ID="lblPopupMessage" runat="server" Text="  "></asp:Label>
                    </div>
                </forms>
            </div>

            <div id="popupForm" class="popup-form" runat="server">

                <div class="close-btn" onclick="closePopup()">X</div> <!-- Close button -->
                <div class="forgot-passss">
                    <h2>CHECK YOUR INBOX OR SPAM IN YOUR EMAIL ACCOUNT</h2>
                </div>
                <forms method="log_form">
                    <div class="txt_field">
                        <asp:TextBox ID="TextBox2" input type="text" required runat="server"></asp:TextBox>
                        <span></span>
                        <label>Enter 6 Digit Code Here</label>
                    </div>
                    
                    <asp:Button ID="btnSubmit" runat="server" class="button" Text="Submit" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnResendCode" runat="server" class="button" Text="Resend Code" OnClick="btnResendCode_Click" />
                    <br />
                    <br/>
                    <asp:Label ID="lblMessage" runat="server" Text=" "></asp:Label>
                    <br/>
                </forms>
            </div>
        </form>
        
        <script>
            function openPopup() {
                document.getElementById("<%= popupForm.ClientID %>").style.display = "block";
                document.getElementById("backgroundForm").classList.add("blurred"); // Add blurred class to email address form
            }
            function closePopup() {
                document.getElementById("<%= popupForm.ClientID %>").style.display = "none";
                document.getElementById("backgroundForm").classList.remove("blurred"); // Remove blurred class from email address form
            }
        </script>
    
    </body>
</html>