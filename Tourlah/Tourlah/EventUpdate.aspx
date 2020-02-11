<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventUpdate.aspx.cs" Inherits="WebApplication2.EventUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 




    <table style="width:100%;">
        <tr>
            <td style="width: 130px">&nbsp;</td>
            <td style="width: 130px">Event Name:<br />
                <br />
                <asp:TextBox ID="TbName" placeholder="Event Name here" runat="server" Width="330px" required="required" Height="31px" BorderStyle="Solid" Font-Size="Medium" BorderColor="Blue" BorderWidth="4px"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:Label ID="LblMsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 130px">&nbsp;</td>
            <td style="width: 130px">Event Description:<br />
                <br />
                <asp:TextBox ID="Tbdescription" placeholder="Event Description Here" runat="server" Width="779px" required="required" Height="199px" BorderStyle="Solid" Font-Size="Medium" BorderColor="Blue" BorderWidth="4px" OnTextChanged="Tbdescription_TextChanged"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 130px; height: 22px">&nbsp;</td>
            <td style="width: 130px; height: 22px">Event Date:<asp:TextBox ID="Tbdate" placeholder="DD/MM/YYYY" runat="server" Width="283px" required="required" Height="21px" BorderStyle="Solid" Font-Size="Medium" BorderColor="Blue" BorderWidth="4px"></asp:TextBox>
                <br />
                <br />
                <br />
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 130px; height: 33px;">&nbsp;</td>
            <td style="width: 130px; height: 33px;">Event Main Type:<asp:TextBox ID="Tbmaintype" placeholder="Events main genre" runat="server" Width="330px" required="required" Height="27px" BorderStyle="Solid" Font-Size="Medium" BorderColor="Blue" BorderWidth="4px"></asp:TextBox>
            </td>
            <td style="height: 33px"></td>
        </tr>
        <tr>
            <td style="width: 130px">&nbsp;</td>
            <td style="width: 130px">Event Second Type:<asp:TextBox ID="TbSecondtype" placeholder="Secondary genre" runat="server" Width="330px" required="required" Height="21px" BorderStyle="Solid" Font-Size="Medium" BorderColor="Blue" BorderWidth="4px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 130px">&nbsp;</td>
            <td style="width: 130px">Event Location:<asp:TextBox ID="Tblocation" placeholder="Location of event" runat="server" Width="330px" required="required" Height="19px" BorderStyle="Solid" Font-Size="Medium" BorderColor="Blue" BorderWidth="4px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 130px; height: 20px">
                &nbsp;</td>
            <td style="width: 130px; height: 20px">
                <asp:Button ID="BtnSubmit" runat="server" Text="Add" OnClick="BtnSubmit_Click1" class="btn btn-primary btn-lg" />
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 130px">&nbsp;</td>
            <td style="width: 130px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 130px">&nbsp;</td>
            <td style="width: 130px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


    </table>


</asp:Content>
