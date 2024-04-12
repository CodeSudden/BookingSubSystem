<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navbar.ascx.cs" Inherits="BookingSubSystem.Webforms.admin_forms.WebUserControl1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="../../Stylesheet/Admin_style.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <a class="navbar-brand" href="Bookings.aspx">
            <img src="../../Images/Group12.png" alt="Logo" height="80" />
        </a>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link text-dark mr-5" href="admn_refunds.aspx"><i class="fa-regular fa-bell fa-2xl"></i></a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-dark mr-5" href="#"><i class="fa-regular fa-user fa-2xl"></i></a>
            </li>
        </ul>
    </nav>
</body>
</html>