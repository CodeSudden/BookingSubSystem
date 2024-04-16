<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Refunds.aspx.cs" Inherits="BookingSubSystem.Webforms.admin_forms.Refunds" %>
<%@ Register Src="Navbar.ascx" TagName="Navbar" TagPrefix="uc" %>
<%@ Register Src="sidebar.ascx" TagName="Sidebar" TagPrefix="uc" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin-refunds</title>
</head>
<body class="body">
    <form id="form1" runat="server">

    <uc:Navbar runat="server" />

    <div class="d-flex">

    <uc:Sidebar runat="server" />

        <div class="flex-grow-1">
    
            <div class="container-fluid">

            <div class="row justify-content-end m-5">
                <div class="col-auto">
                    <div class="form-inline">
                        <input class="form-control mr-sm-2 ml-auto" type="search" placeholder="Search" aria-label="Search"/>
                    </div>
                </div>
            </div>
        
            <table class="table m-auto bg-white">
              <thead>
                <tr>
                  <th scope="col">Booking ID</th>
                  <th scope="col">Customer Name</th>
                  <th scope="col">Customer Phone</th>
                  <th scope="col">Booking Date</th>
                  <th scope="col">Service Category</th>
                  <th scope="col">Total Price</th>
                  <th scope="col">Status</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td>Mark</td>
                  <td>09123456789</td>
                  <td>04-16-2024</td>
                  <td>Cleaning</td>
                  <td>1500</td>
                  <td>Refund</td>
                </tr>
              </tbody>
            </table>
            </div>
        </div>
    </div>

    </form>
</body>
</html>
