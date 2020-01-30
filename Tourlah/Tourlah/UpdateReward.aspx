<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UpdateReward.aspx.cs" Inherits="WebApplication2.UpdateReward" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Update Rewards</h2>
    <table class="table">
        <tr>
            <td>Reward Name:</td>
            <td>
                <asp:Textbox ID="tbrn" runat="server" Enabled="false"></asp:Textbox>
            </td>
        </tr>
        <tr>
            <td>Reward Amount:</td>
            <td>
                <asp:TextBox ID="tbra" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Reward Quantity:</td>
            <td>
                <asp:TextBox ID="tbqty" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp</td>
            <td>
                <asp:Label runat="server" ID="hidimg" Visible="false"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp</td>
            <td>
                <asp:Button ID="BtnUpdate" runat="server" Text="Update" OnClick="BtnUpdate_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp</td>
            <td>
                <asp:Label ID="LblMsg" Text="" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
