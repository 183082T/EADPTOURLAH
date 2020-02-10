<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication2.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3 style="text-align: center; height: 35px;">Registeration</h3>

    <div class="container">
    <asp:Panel ID="Validation" Visible="false" runat="server" CssClass="alert alert-dismissable alert-danger" Height="64px">
        <button type="button" class="close" data-dismiss="alert">
            <span aria-hidden="true">&times;</span>
        </button>
        <asp:Label ID="Lbl_errorMsg" runat="server"></asp:Label>
    </asp:Panel>

    <table class="nav-justified" style="margin-left: 260px; height: 165px;">
        <tr>
            <td class="modal-sm" style="width: 190px; height: 40px">&nbsp;</td>
            <td style="height: 28px"></td>
        </tr>
        
        <tr>
            <td class="modal-sm" style="width: 190px; height: 40px;">Username:</td>
            <td style="height: 40px">
                <asp:TextBox ID="registerUsername" runat="server" Width="264px" required="required"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td class="modal-sm" style="width: 190px; height: 40px;">Password</td>
            <td>
                <asp:TextBox ID="registerPassword" runat="server" Width="264px" TextMode="Password" required="required"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="modal-sm" style="width: 190px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 190px">&nbsp;</td>
            <td>
                <asp:Button ID="BtnRegister" class="btn btn-primary" runat="server" Text="Create Account" OnClick="BtnRegister_Click" /></td>
        </tr>
    </table>
</div>
</asp:Content>
