<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BookingSubSystem.Webforms.Login" %>

<!DOCTYPE html>

<html>
    <head runat="server">
        <meta name="viewport" content="width=device-width, initial-scale="1.0">
        <link href="../Stylesheet/Login_Style.css" rel="stylesheet" />
        <title>LOG IN</title>

    </head>
    <form id="form2" runat="server">
        <body>
            <div class="login_form">
                <div class="log-img">
                    <img src="../Images/Group12.png" />
                </div>
                <form method="log_form">
                    <div class="txt_field">
                        <asp:TextBox ID="TextBox3" input type="text" required runat="server"></asp:TextBox>
                        <span></span>
                        <label>Email Address</label>
                    </div>

                    <div class="txt_field">
                        <asp:TextBox ID="TextBox4" input type="password" required runat="server"></asp:TextBox>
                        <span></span>
                        <label>Password</label>
                    </div>

                    <div class="pass">
                        <a href="Forgot_Password.aspx">Forgot_Password?</a>
                    </div>
                    <asp:Button ID="Button2" runat="server" Text="Login" class="button" />

                    <div class="signup_link">
                        No account yet? <a href="/Webforms/Registration_Form.aspx">Signup Now!</a>
                    </div>
                </form>
            </div>
        </body>
    </form>
</html>