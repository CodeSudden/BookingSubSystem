<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="BookingSubSystem.Webforms.admin_forms.Bookings" %>
<%@ Register Src="Navbar.ascx" TagName="Navbar" TagPrefix="uc" %>
<%@ Register Src="sidebar.ascx" TagName="Sidebar" TagPrefix="uc" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin-Bookings</title>
    <link href="../../Stylesheet/Admin_style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
</head>
<body class="body">
    <form id="form1" runat="server">

        <uc:Navbar runat="server" />
        

    <div class="d-flex">

    <uc:Sidebar runat="server" />

        <div class="flex-grow-1">
    
            <div class="container col-lg-10 mr-5">

            <div class="row justify-content-end m-5">
                <div class="col-auto">
                    <div class="form-inline">
                        <input class="form-control mr-sm-2 ml-auto" type="search" placeholder="Search" aria-label="Search"/>
                    </div>
                </div>
            </div>
            <div class="bg-light text-dark">
                <asp:GridView ID="datatbl" runat="server" AutoGenerateColumns="true">

                </asp:GridView>
            </div>

            </div>
        </div>
    </div>

    </form>
</body>
</html>
