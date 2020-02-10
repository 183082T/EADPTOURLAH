<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="WebApplication2.adminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="css/login.css" rel="stylesheet" />

    <div class="container text-center">
    <asp:Panel ID="Validation" Visible="false" runat="server" CssClass="alert alert-dismissable alert-danger" Height="64px">
            <button type="button" class="close" data-dismiss="alert">
                <span aria-hidden="true">&times;</span>
            </button>
            <span style="font-size:18px;" class="glyphicon glyphicon-exclamation-sign"></span>
                <asp:Label ID="Lbl_Msg"  runat="server" style="margin-left:10px; font-size:18px;"></asp:Label>
            
        </asp:Panel>
    <link href="css/login.css" rel="stylesheet" />
    <div class="form">
            <div class="form-toggle"></div>
            <div class="form-panel one">
                <div class="form-header">
                    <h1>Admin Login</h1>
                </div>
                <div class="form-content">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <asp:TextBox ID="TbAdminName" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <asp:TextBox ID="TbAdminPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Button ID="BtnAdminLogin" Style="outline: none; background: #4285f4; width: 100%; border: 0; border-radius: 4px; padding: 12px 20px; color: #ffffff; font-family: inherit; font-size: inherit; font-weight: 500; line-height: inherit; text-transform: uppercase; cursor: pointer;"
                            runat="server" Text="Sign In" OnClick="BtnAdminLogin_Click" />
                    </div>

                    <div class="form-group"> 
                        <a runat="server" href="~/Login" style="color:#0000FF; font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; text-align:center;">Back</a>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <%--<table style="width: 94%; height: 211px; margin-left: 350px;">
                            <tr>
                                <h3 style="text-align: center">Admin Login </h3>
                            </tr>
                            <tr>
                                <td style="height: 40px">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <asp:TextBox ID="TbAdminName" placeholder="Admin" runat="server" Width="330px"  Height="31px"></asp:TextBox>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 40px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="height: 40px">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <asp:TextBox ID="TbAdminPassword" runat="server" Width="330px" TextMode="Password" placeholder="Password" Height="31px" ></asp:TextBox>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td style="height: 80px; padding-left: 300px;">
                                    <asp:Button ID="BtnAdminLogin" class="btn btn-success" runat="server" Text="Admin Sign In" OnClick="BtnAdminLogin_Click" />
                                </td>
                            </tr>
                        </table>--%>

</asp:Content>
