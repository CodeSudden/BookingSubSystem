<%@ Page Language="C#" Async="true"  AutoEventWireup="true" CodeBehind="Edit_services.aspx.cs" Inherits="BookingSubSystem.Webforms.admin_forms.Edit_services" %>
<%@ Register Src="Navbar.ascx" TagName="Navbar" TagPrefix="uc" %>
<%@ Register Src="sidebar.ascx" TagName="Sidebar" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin-Edit_Services</title>
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

                <button type="button" class="btn btn-primary float-right mr-3 mb-2" onclick="showModalAdd()">Add Services</button>

            <table id="datatbl" class="table table-striped table-bordered bg-light">
                <thead>
                    <tr>
                        <th>ServiceID</th>
                        <th>Category</th>
                        <th>Description</th>
                        <th>Duration</th>
                        <th>Price</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="repeater" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("service_id") %></td>
                                <td><%# Eval("category") %></td>
                                <td class="w-50"><%# Eval("description") %></td>
                                <td>2 Hours</td>
                                <td><%# Eval("price") %></td>
                                <td>
                                    <button type="button" class="btn btn-secondary mr-3" onclick="showModalEdit(<%# Eval("service_id") %>, '<%# Eval("category") %>', '<%# Eval("description") %>', '<%# Eval("price") %>')"><i class="fa-solid fa-pen"></i></button>
                                    <asp:Linkbutton ID="deleteButton" runat="server" CssClass="btn btn-danger" OnClick="DeleteService_Click" data-serviceid='<%# Eval("service_id") %>'><i class="fa-solid fa-trash"></i></asp:Linkbutton>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>

            <!-- Modal for edit -->
            <div class="modal fade" id="showeditModal" tabindex="-1" role="dialog" aria-labelledby="editModal" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="editModal">Edit Service</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="serviceId">Service ID:</label>
                                <asp:TextBox ID="serviceId" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="category">Category:</label>
                                <asp:TextBox ID="category" runat="server" CssClass="form-control" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="description">Description:</label>
                                <asp:TextBox ID="description" runat="server" CssClass="form-control" Rows="4" TextMode="MultiLine" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="price">Price:</label>
                                <asp:TextBox ID="price" runat="server" CssClass="form-control" ></asp:TextBox>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <asp:Button ID="btnSaveChanges" runat="server" Text="Save changes" CssClass="btn btn-primary" OnClick="btnSaveChanges_Click" />
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal for Add -->
            <div class="modal fade" id="addsrvc" tabindex="-1" role="dialog" aria-labelledby="addModal" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="addModal">Edit Service</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="category">Category:</label>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="description">Description:</label>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Rows="4" TextMode="MultiLine" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="price">Price:</label>
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" ></asp:TextBox>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <asp:Button ID="btnSaveNewService" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnNewService_Click" />
                        </div>
                    </div>
                </div>
            </div>


            </div>
        </div>
    </div>

    <script>
        function showModalEdit(serviceId, category, description, price) {
            $('#showeditModal').modal('show');

            $('#<%= serviceId.ClientID %>').val(serviceId);
            $('#<%= category.ClientID %>').val(category);
            $('#<%= description.ClientID %>').val(description);
            $('#<%= price.ClientID %>').val(price);
        }

        function showModalAdd() {
            $('#addsrvc').modal('show');
        }

    </script>

    </form>

</body>
</html>
