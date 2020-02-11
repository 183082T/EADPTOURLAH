<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminFoodInfo.aspx.cs" Inherits="WebApplication2.AdminFoodInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table style="width: 100%; background-color: lightsalmon;">
        <tr>
            <td class="w3-center">&nbsp;</td>
            <td colspan="2" class="w3-center">&nbsp;</td>
            <td class="w3-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="w3-center" style="background-color: #FFFFFF">&nbsp;</td>
            <td colspan="2" class="w3-center" style="background-color: #FFFFFF">
                <br />
                <br />
                <asp:Label ID="LabelFoodName" runat="server" ForeColor="Red" Font-Size="XX-Large" Font-Bold="True" Font-Overline="False" Font-Underline="False"></asp:Label>
                <br />
                <br />
                <hr style="border: 0; height: 4px; background: #333; background-image: linear-gradient(to right, #ccc, #333, #ccc);"/>
            </td>
            <td class="w3-center" style="background-color: #FFFFFF">&nbsp;</td>
        </tr>
        <tr>
            <td class="w3-center">&nbsp;</td>
            <td colspan="2" class="w3-center">&nbsp;</td>
            <td class="w3-center">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="w3-center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="ImageFood" runat="server" Height="500px" Width="500px" />
            </td>
            <td colspan="2" class="w3-center">
                <asp:Label ID="LabelFoodDesc" runat="server" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="w3-center">&nbsp;</td>
            <td colspan="2" class="w3-center">&nbsp;</td>
            <td class="w3-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="w3-center" style="background-color: #FFFFFF">&nbsp;</td>
            <td colspan="2" class="w3-center" style="background-color: #FFFFFF">
                <hr style="border: 0; height: 4px; background: #333; background-image: linear-gradient(to right, #ccc, #333, #ccc);""/>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Food Places Recommendation" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <br />
                <hr style="border: 0; height: 4px; background: #333; background-image: linear-gradient(to right, #ccc, #333, #ccc);""/>
            </td>
            <td class="w3-center" style="background-color: #FFFFFF">&nbsp;</td>
        </tr>
        <tr>
            <td class="w3-center">&nbsp;</td>
            <td colspan="2" class="w3-center">&nbsp;</td>
            <td class="w3-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="w3-center">&nbsp;</td>
            <td colspan="2" class="w3-center">&nbsp;</td>
            <td class="w3-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="w3-center" style="font-size: medium">
                <asp:Label ID="LabelPlace" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#3333CC"></asp:Label>
            </td>
            <td colspan="2" class="w3-center" style="font-size: medium">
                <asp:Label ID="LabelPlace2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#3333CC"></asp:Label>
            </td>
            <td class="w3-center" style="font-size: medium">
                <asp:Label ID="LabelPlace3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#3333CC"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="w3-center" style="font-size: medium">&nbsp;</td>
            <td colspan="2" class="w3-center" style="font-size: medium">&nbsp;</td>
            <td class="w3-center" style="font-size: medium">&nbsp;</td>
        </tr>
        <tr>
            <td class="w3-center" style="font-size: medium">
                <asp:Label ID="LabelPlaceDesc" runat="server" Font-Size="Large"></asp:Label>
            </td>
            <td colspan="2" class="w3-center" style="font-size: medium">
                <asp:Label ID="LabelPlaceDesc2" runat="server" Font-Size="Large"></asp:Label>
            </td>
            <td class="w3-center" style="font-size: medium">
                <asp:Label ID="LabelPlaceDesc3" runat="server" Font-Overline="False" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-size: medium;" class="w3-center"></td>
            <td colspan="2" style="font-size: medium;"></td>
            <td style="font-size: medium;"></td>
        </tr>
        <tr>
            <td style="font-size: medium;" class="w3-center">&nbsp;</td>
            <td colspan="2" style="font-size: medium;">&nbsp;</td>
            <td style="font-size: medium;">&nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: medium;" class="w3-center">
                <asp:Label ID="LabelAdd" runat="server" Font-Size="Large" ForeColor="#3333CC"></asp:Label>
            </td>
            <td colspan="2" style="font-size: medium;" class="w3-center">
                <asp:Label ID="LabelAdd2" runat="server" Font-Size="Large" ForeColor="#3333CC"></asp:Label>
            </td>
            <td style="font-size: medium;" class="w3-center">
                <asp:Label ID="LabelAdd3" runat="server" Font-Size="Large" ForeColor="#3333CC"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 20px" class="w3-center">&nbsp;</td>
            <td colspan="2" style="height: 20px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px" class="w3-center"></td>
            <td colspan="2" style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px" class="w3-center" colspan="4">
                <asp:Button ID="ButtonEdit" runat="server" BackColor="Lime" CssClass="mt-0" Font-Size="Large" Height="70px" OnClick="ButtonEdit_Click" Text="Edit" Width="120px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonBack" runat="server" BackColor="#33CCFF" Font-Size="Large" Height="70px" Text="Back" Width="120px" OnClick="ButtonBack_Click" />
            </td>
        </tr>
        <tr>
            <td style="height: 20px">&nbsp;</td>
            <td colspan="2" style="height: 20px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
    </table>

</asp:Content>
