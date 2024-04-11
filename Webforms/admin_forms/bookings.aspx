<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookings.aspx.cs" Inherits="BookingSubSystem.Webforms.admin_forms.bookings" %>
<%@ Register Src="Navbar.ascx" TagName="Navbar" TagPrefix="uc" %>
<%@ Register Src="sidebar.ascx" TagName="Sidebar" TagPrefix="uc" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link href="../../Stylesheet/Admin_style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
</head>
<body class="body">
    <form id="form1" runat="server">

        <uc:Navbar runat="server" />
        <uc:Sidebar runat="server" />

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
