<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookings.aspx.cs" Inherits="BookingSubSystem.Webforms.admin_forms.bookings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link href="../Stylesheet/Admin_style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
</head>
<body class="body">
    <form id="form1" runat="server">

    <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <a class="navbar-brand" href="#">
            <img src="../Images/Group12.png" alt="Logo" height="80" />
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

    <div class="container-fluid">

        <div class="container-fluid p-5">
            <input class="float-right border-0 bg-white" type="search" name="search" placeholder="Enter text here..."/>
        </div>
        
        <div>
        <table class="table w-75 m-auto bg-white">
          <thead>
            <tr>
              <th scope="col">SERVICE ID</th>
              <th scope="col">NAME</th>
              <th scope="col">ADDRESS</th>
              <th scope="col">TITLE</th>
              <th scope="col">TITLE</th>
              <th scope="col">TITLE</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">1</th>
              <td>Mark</td>
              <td>Otto</td>
              <td>@mdo</td>
            </tr>
          </tbody>
        </table>
        </div>
    </div>

    </form>
</body>
</html>
