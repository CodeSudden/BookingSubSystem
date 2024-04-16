<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="BookingSubSystem.Webforms.Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
	<link rel="stylesheet" href="../Stylesheet/admn_lgn.css" />
</head>
	<body>
	<!-- Login Form -->
	<div class="login-form">
		<div class="text-center">
			<img src="../../Images/Group12.png" alt="Logo" height="80" />
		</div>
		<div class="login-content">
			<form onsubmit="return validateLogin()" method="post">
				<div class="form-group">
					<div class="input-group box">
						<span class="input-group-addon"><i class="fa fa-solid fa-circle-user fa-xl"></i></span>
						<input type="text" class="form-control" name="username" id="username" placeholder="Username" required="required"/>
					</div>
				</div>
				<div class="form-group">
					<div class="input-group box">
						<span class="input-group-addon"><i class="fa fa-lock fa-xl"></i></span>
						<input type="password" class="form-control" name="password" id="password" placeholder="Password" required="required"/>
					</div>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block btn-lg">Login</button>
				</div>
				<p class="hint-text"><a href="Forgot_Password.aspx">Forgot Password?</a></p>
			</form>
		</div>
	</div>
	</body>

	<script>
		function validateLogin() {
			var username = document.getElementById("username").value;
			var password = document.getElementById("password").value;

			// Check if username and password are equals to "admin"
			if (username === "admin" && password === "admin") {
				// Redirect to another page
				window.location.href = "admin_forms/Bookings.aspx";
				return false; // Prevent form submission
			} else {
				// If not "admin", allow form submission
                alert("Invalid username or password. Please try again.");
				return true;
			}
		}
    </script>
</html>
