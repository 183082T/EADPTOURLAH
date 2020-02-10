<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FavouriteEvents.aspx.cs" Inherits="WebApplication2.FavouriteEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="ErrorLabel" runat="server" Font-Bold="True" Font-Size="XX-Large" Height="40%"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Go to log in</asp:HyperLink>
    <asp:GridView ID="FavouriteGV" runat="server" OnSelectedIndexChanged="FavouriteGV_SelectedIndexChanged">
</asp:GridView>
</asp:Content>
