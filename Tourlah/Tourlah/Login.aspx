<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <div class="jumbotron">

        <asp:Panel ID="Validation" Visible="false" runat="server" CssClass="alert alert-dismissable alert-danger" Height="64px">
            <button type="button" class="close" data-dismiss="alert">
                <span aria-hidden="true">&times;</span>
            </button>
            <span style="font-size:18px;" class="glyphicon glyphicon-exclamation-sign">
                <asp:Label ID="Lbl_Msg" runat="server" style="margin-left:10px;"></asp:Label>
            </span>
            
        </asp:Panel>
        <div class="container">

                
                        <table style="width: 94%; height: 211px; margin-left: 350px;">
                            <tr>
                                <h3 style="text-align: center">Login </h3>
                            </tr>
                            <tr>
                                <td style="height: 40px">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <asp:TextBox ID="TbUsername" placeholder="Username" runat="server" Width="330px" Height="31px"></asp:TextBox>
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
                                        <asp:TextBox ID="TbPassword" runat="server" Width="330px" TextMode="Password" placeholder="Password" Height="31px"></asp:TextBox>  
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td style="height: 80px; padding-left: 300px;">
                                    <asp:Button ID="BtnLogin" class="btn btn-success" runat="server" Text="Sign In" OnClick="BtnLogin_Click" />
                                    
                                </td>
                            </tr>
                        </table>
        </div>
        <p style="margin-top: 40px; text-align: center;">Don't have an account ? <a runat="server" href="~/Register" style="color: #0000FF">Sign up now</a></p>
        <p style="margin-top: 40px; text-align: center;">Are you an admin? <a runat="server" href="~/adminLogin" style="color: #0000FF">Login here</a></p>
    </div>


</asp:Content>
