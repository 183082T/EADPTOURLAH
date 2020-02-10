<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FavouriteEvents.aspx.cs" Inherits="WebApplication2.FavouriteEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
    <asp:GridView ID="FavouriteGV" runat="server" OnSelectedIndexChanged="FavouriteGV_SelectedIndexChanged">
</asp:GridView>
</asp:Content>
