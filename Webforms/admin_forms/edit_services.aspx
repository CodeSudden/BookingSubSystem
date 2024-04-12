<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_services.aspx.cs" Inherits="BookingSubSystem.Webforms.admin_forms.Edit_services" %>
<%@ Register Src="Navbar.ascx" TagName="Navbar" TagPrefix="uc" %>
<%@ Register Src="sidebar.ascx" TagName="Sidebar" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin-Edit_Services</title>
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
        
            <table class="table m-auto bg-white">
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
    </div>

    </form>
</body>
</html>
