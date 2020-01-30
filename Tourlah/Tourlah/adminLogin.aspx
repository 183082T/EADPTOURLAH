<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="WebApplication2.adminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <asp:Panel ID="Validation" Visible="false" runat="server" CssClass="alert alert-dismissable alert-danger" Height="64px">
            <button type="button" class="close" data-dismiss="alert">
                <span aria-hidden="true">&times;</span>
            </button>
            <span style="font-size:18px;" class="glyphicon glyphicon-exclamation-sign">
                <asp:Label ID="Lbl_Msg" runat="server" style="margin-left:10px;"></asp:Label>
            </span>
            
        </asp:Panel>
    <table style="width: 94%; height: 211px; margin-left: 350px;">
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
                        </table>

</asp:Content>
