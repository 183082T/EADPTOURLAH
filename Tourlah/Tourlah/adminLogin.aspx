<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="WebApplication2.adminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3 style="text-align: center">Admin Login </h3>

    <table style="width: 94%; height: 211px; margin-left: 50px;">
        <tr>
            <td>Username:</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="t1" runat="server" Width="519px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 48px">Password</td>
        </tr>
        <tr>
            <td style="height: 42px">
                <asp:TextBox ID="t2" runat="server" Width="519px"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td style="height: 42px">
                <asp:Button ID="b1" class="btn btn-success" runat="server" Text="Login" OnClick="b1_Click" />
            </td>
        </tr>
        <tr>
            <td style="height: 42px">
                <asp:Label ID="li" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
