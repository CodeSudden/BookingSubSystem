<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="BookingSubSystem.Webforms.admin_forms.Bookings" %>
<%@ Register Src="Navbar.ascx" TagName="Navbar" TagPrefix="uc" %>
<%@ Register Src="sidebar.ascx" TagName="Sidebar" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin-Bookings</title>
    <link href="../../Stylesheet/Admin_style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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

            <table id="datatbl" class="table table-striped table-bordered bg-light">
                <thead>
                    <tr>
                        <th>Booking ID</th>
                        <th>Customer Name</th>
                        <th>Customer Phone</th>
                        <th>Booking Date</th>
                        <th>Service Category</th>
                        <th>Total Price</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="repeater" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("booking_id") %></td>
                                <td><%# Eval("customer_name") %></td>
                                <td><%# Eval("customer_phone") %></td>
                                <td><%# Eval("booking_date") %></td>
                                <td><%# Eval("service.category") %></td>
                                <td><%# Eval("total_price") %></td>
                                <td><%# Eval("status") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>

            </div>
        </div>
    </div>

    </form>
</body>
</html>
