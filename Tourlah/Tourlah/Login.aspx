<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <div class="jumbotron">

        <asp:Panel ID="Validation" Visible="false" runat="server" CssClass="alert alert-dismissable alert-danger" Height="64px">
            <button type="button" class="close" data-dismiss="alert">
                <span aria-hidden="true">&times;</span>
            </button>
            <asp:Label ID="Lbl_Msg" runat="server"></asp:Label>
        </asp:Panel>
        <div class="container">


            <div id="exTab2" class="container">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#1" data-toggle="tab">User</a>
                    </li>
                    <li><a href="#2" data-toggle="tab">Admin</a>
                    </li>

                </ul>

                <div class="tab-content ">
                    <div class="tab-pane active" id="1">
                        <table style="width: 94%; height: 211px; margin-left: 350px;">
                            <tr>
                                <h3 style="text-align: center">Login </h3>
                            </tr>
                            <tr>
                                <td style="height: 40px">
                                    <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <asp:TextBox ID="TbUsername" placeholder="Username" runat="server" Width="330px" required="required" Height="31px"></asp:TextBox></div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 40px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="height: 40px">
                                    <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <asp:TextBox ID="TbPassword" runat="server" Width="330px" TextMode="Password" placeholder="Password" Height="31px" required="required"></asp:TextBox></div>
                                </td>
                            </tr>

                            <tr>
                                <td style="height: 80px; padding-left: 300px;">
                                    <asp:Button ID="BtnLogin" class="btn btn-success" runat="server" Text="Sign In" OnClick="BtnLogin_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="tab-pane" id="2">
                        <table style="width: 94%; height: 211px; margin-left: 350px;">
                            <tr>
                                <h3 style="text-align: center">Admin Login </h3>
                            </tr>
                            <tr>
                                <td style="height: 40px">
                                    <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <asp:TextBox ID="TextBox1" placeholder="Admin" runat="server" Width="330px" required="required" Height="31px"></asp:TextBox></div>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 40px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="height: 40px">
                                    <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <asp:TextBox ID="TextBox2" runat="server" Width="330px" TextMode="Password" placeholder="Password" Height="31px" required="required"></asp:TextBox></div>
                                </td>
                            </tr>

                            <tr>
                                <td style="height: 80px; padding-left: 300px;">
                                    <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Sign In" OnClick="BtnLogin_Click" />
                                </td>
                            </tr>
                        </table>
                    </div>

                </div>
            </div>


        </div>
        <p style="margin-top: 40px; text-align: center;">Don't have an account ? <a runat="server" href="~/Register" style="color: #0000FF">Sign up now</a></p>
    </div>

</asp:Content>
