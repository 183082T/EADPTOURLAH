<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventUpdate.aspx.cs" Inherits="WebApplication2.EventUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <table style="width:100%;">
        <tr>
            <td style="width: 130px">Event Name:</td>
            <td>
                <asp:TextBox ID="TbName" placeholder="Event Name here" runat="server" Width="330px" required="required" Height="31px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 130px">Event Description:</td>
            <td>
                <asp:TextBox ID="Tbdescription" placeholder="Event Description Here" runat="server" Width="330px" required="required" Height="119px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 130px; height: 20px">Event Date:</td>
            <td style="height: 20px">
                <asp:TextBox ID="Tbdate" placeholder="Starting Date" runat="server" Width="139px" required="required" Height="21px"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 130px">Event Main Type:</td>
            <td>
                <asp:TextBox ID="Tbmaintype" placeholder="Events main genre" runat="server" Width="330px" required="required" Height="27px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 130px">Event Second Type:</td>
            <td>
                <asp:TextBox ID="TbSecondtype" placeholder="Secondary genre" runat="server" Width="330px" required="required" Height="21px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 130px">Event Location:</td>
            <td>
                <asp:TextBox ID="Tblocation" placeholder="Location of event" runat="server" Width="330px" required="required" Height="19px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 130px; height: 20px">&nbsp;</td>
            <td style="height: 20px">
                <asp:Button ID="BtnSubmit" runat="server" Text="Add" OnClick="BtnSubmit_Click1" />
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 130px">&nbsp;</td>
            <td>
                <asp:Label ID="LblMsg" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 130px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>
