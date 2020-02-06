<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eventpage.aspx.cs" Inherits="WebApplication2.Eventpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 160px; height: 64px">
                <asp:Label ID="Eventlbl" runat="server"></asp:Label>
            </td>
            <td style="height: 64px; width: 594px;">
                <asp:Label ID="EventDatelbl" runat="server"></asp:Label>
                ,<asp:Label ID="EventLocationlbl" runat="server"></asp:Label>
            </td>
            <td style="height: 64px"></td>
        </tr>
        <tr>
            <td style="width: 160px; height: 100px"></td>
            <td style="height: 100px; width: 594px;">
                <asp:Label ID="DescriptionLbl" runat="server"></asp:Label>
            </td>
            <td style="height: 100px"></td>
        </tr>
        <tr>
            <td style="width: 160px; height: 84px"></td>
            <td style="height: 84px; width: 594px;">
                <asp:Label ID="Maintypelbl" runat="server"></asp:Label>
                ,<asp:Label ID="Secondtypelbl" runat="server"></asp:Label>
            </td>
            <td style="height: 84px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            </td>
        </tr>
    </table>
</asp:Content>
