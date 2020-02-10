<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminCreateRewards.aspx.cs" Inherits="WebApplication2.adminpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table>
            <tr>
                <td>Reward Name:</td>
                <td>
                    <asp:TextBox ID="rn" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Reward Amount:</td>
                <td>
                    <asp:TextBox ID="ra" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Reward Quantity:</td>
                <td>
                    <asp:TextBox ID="rq" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Reward Type:</td>
                <td>
                    <asp:TextBox ID="rt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Reward Image:</td>
                <td>
                    <asp:FileUpload ID="ri" runat="server" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="b1" runat="server" Text="upload" OnClick="b1_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelError" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
