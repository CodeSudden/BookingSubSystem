<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Sidebar.ascx.cs" Inherits="BookingSubSystem.Webforms.admin_forms.WebUserControl2" %>

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

        <asp:HyperLink ID="bookingsLink" runat="server" NavigateUrl="Bookings.aspx" Text="Bookings">
            <div class="icon-container">
                <i class="fa-solid fa-book-open fa-2x"></i>
                <span class="sidebar-text">BOOKINGS</span>
            </div>
        </asp:HyperLink>
        <asp:HyperLink ID="refundsLink" runat="server" NavigateUrl="Refunds.aspx" Text="refunds">
            <div class="icon-container">
                <i class="fa-solid fa-rotate fa-2x"></i>
                <span class="sidebar-text">REFUNDS</span>
            </div>
        </asp:HyperLink>
        <asp:HyperLink ID="cancellationLink" runat="server" NavigateUrl="Cancellation.aspx" Text="cancellation">
            <div class="icon-container">
                <i class="fa-regular fa-circle-xmark fa-2x"></i>
                <span class="sidebar-text">CANCELLATION</span>
            </div>
        </asp:HyperLink>
        <asp:HyperLink ID="editservicesLink" runat="server" NavigateUrl="Edit_services.aspx" Text="editservice">
            <div class="icon-container">
                <i class="fa-regular fa-pen-to-square fa-2x"></i>
                <span class="sidebar-text">EDIT SERVICES</span>
            </div>
        </asp:HyperLink>
        <asp:HyperLink ID="activitylogLink" runat="server" NavigateUrl="Activity_log.aspx" Text="activitylog">
            <div class="icon-container">
                <i class="fa-solid fa-list fa-2x"></i>
                <span class="sidebar-text">ACTIVITY LOG</span>
            </div>
        </asp:HyperLink>
        </div>        
    </div>
</body>
</html>