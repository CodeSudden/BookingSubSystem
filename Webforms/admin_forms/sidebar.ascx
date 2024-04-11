<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="sidebar.ascx.cs" Inherits="BookingSubSystem.Webforms.admin_forms.WebUserControl2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    <link href="../../Stylesheet/Admin_style.css" rel="stylesheet" />
</head>
<body>
    <div class="sidebar">
        <div class="center-sidebar">
        <a href="#">
            <div class="icon-container">
                <i class="fa-solid fa-book-open fa-2x"></i>
                <span class="sidebar-text">BOOKINGS</span>
            </div>
        </a>
        <a href="#">
            <div class="icon-container">
                <i class="fa-solid fa-rotate fa-2x"></i>
                <span class="sidebar-text">REFUNDS</span>
            </div>
        </a>
        <a href="#">
            <div class="icon-container">
                <i class="fa-regular fa-circle-xmark fa-2x"></i>
                <span class="sidebar-text">CANCELLATION</span>
            </div>
        </a>
        <a href="#">
            <div class="icon-container">
                <i class="fa-regular fa-pen-to-square fa-2x"></i>
                <span class="sidebar-text">EDIT SERVICES</span>
            </div>
        </a>
        <a href="#">
            <div class="icon-container">
                <i class="fa-solid fa-list fa-2x"></i>
                <span class="sidebar-text">ACTIVITY LOG</span>
            </div>
        </a>
        </div>        
    </div>
</body>
</html>