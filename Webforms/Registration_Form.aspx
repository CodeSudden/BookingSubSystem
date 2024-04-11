<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_Form.aspx.cs" Inherits="BookingSubSystem.Webforms.Registration_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale="1.0" />
    <title>SIGN UP FORM</title>
    <link href="../Stylesheet/Registration_Style.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <header>Register Form</header>
        <div class="form-outer">
            <form action="#">
                <div class="page">
                    <div class="title">User Profile</div>
                    <div class="field">
                        <div class="label">First Name</div>

                        <input type="text" />
                    </div>
                    <div class="field">
                        <div class="label">Last Name</div>
                        <input type="text" />
                    </div>
                    <div class="field">
                        <div class="label">Middle Name</div>
                        <input type="text" />
                    </div>
                    <div class="field">
                        <div class="label">Phone Number</div>
                        <input type="number" />
                    </div>
                    <button>Next</button>
                    </div>
               
                <div class="page">
                    <div class="title">Residential Address</div>
                    <div class="field">
                        <div class="label">House #, Street Name</div>
                        <input type="text" />
                    </div>
                    <div class="field">
                        <div class="label">Baranggay</div>
                        <input type="text" />
                    </div>
                    <div class="field">
                        <div class="label">City/div>
                        <input type="text" />
                    </div>
                    <div class="field">
                        <div class="label">Region</div>
                        <input type="text" />
                    </div>
                    <div class="field">
                        <div class="label">Zip Code</div>
                        <input type="number" />
             </div>
                    <div class="field btns">
                        <button class="prev-1 prev">Previous</button>
                        <button class="next-1 next">Next</button>
                    </div>
                </div>
                    </div>
              <div class="page">
                    <div class="title">Login Details</div>
                    <div class="field">
                        <div class="label">Email Address</div>
                        <input type="text">
                    </div>
                    <div class="field">
                        <div class="label">Password</div>
                        <input type="password">
                    </div>
                    <div class="field">
                        <div class="label">Confirm Password</div>
                        <input type="password">
                    </div>
                    <div class="field">
             </div>
                    <div class="field btns">
                        <button class="prev-2 prev">Previous</button>
                        <button class="Submit">Submit</button>
                    </div>
               </div>
            </form>
        </div>
    </div>
</body>
</html>
