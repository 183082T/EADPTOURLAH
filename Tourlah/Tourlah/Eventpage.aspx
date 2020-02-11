<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eventpage.aspx.cs" Inherits="WebApplication2.Eventpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/EventPage.css" rel="stylesheet" />
    <table style="width:100%;" class="breadcrumb">
        <tr>
            <td style="width: 160px; height: 64px">
                <asp:Label ID="Eventlbl" runat="server" CssClass="h1" Font-Bold="True"></asp:Label>
            </td>
            <td style="height: 64px; width: 594px;">
                <asp:Label ID="EventDatelbl" runat="server" CssClass="h3"></asp:Label>
                ,<asp:Label ID="EventLocationlbl" runat="server" CssClass="h3"></asp:Label>
            </td>
            <td style="height: 64px"></td>
        </tr>
        <tr>
            <td style="width: 160px; height: 100px"></td>
            <td style="height: 100px; width: 594px;">
                <asp:Label ID="DescriptionLbl" runat="server" BorderStyle="Solid" CssClass="panel-default" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 100px"></td>
        </tr>
        <tr>
            <td style="width: 160px; height: 84px"></td>
            <td style="height: 84px; width: 594px;">
                <asp:Label ID="Maintypelbl" runat="server" BorderStyle="Inset" CssClass="h3"></asp:Label>
                ,<asp:Label ID="Secondtypelbl" runat="server" BorderStyle="Inset" CssClass="h3"></asp:Label>
            </td>
            <td style="height: 84px">
                <asp:Button ID="Favourtite" runat="server" OnClick="Button1_Click" CssClass="btn btn-primary btn-lg" Text="Favourite This Event" />
            </td>
        </tr>
    </table>
</asp:Content>
