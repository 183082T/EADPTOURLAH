<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddFood.aspx.cs" Inherits="WebApplication2.AddFood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table style="width: 100%">
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 217px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 217px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 217px">
                <asp:Label ID="Label1" runat="server" Text="Food Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TBFoodName" runat="server" Height="22px" Width="200px"></asp:TextBox>
            </td>
            <td class="w3-center">
                <asp:Label ID="LabelNameError" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 217px">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="w3-center">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 113px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px; width: 217px">
                <asp:Label ID="Label2" runat="server" Text="Food Description:"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="TBFoodDesc" runat="server" Height="70px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
            <td style="height: 20px" class="w3-center">
                <asp:Label ID="LabelInfoError" runat="server"></asp:Label>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 217px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 113px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px; width: 217px">
                <asp:Label ID="Label3" runat="server" Text="Food Picture:"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:FileUpload ID="FUFoodPic" runat="server" Width="200px" />
            </td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 217px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 217px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 19px; width: 113px"></td>
            <td style="height: 19px"></td>
            <td style="height: 19px; width: 217px">
                <asp:Label ID="Label4" style="font-size: 18px;" runat="server" ForeColor="#CC00CC" Text="Food Places Recommendations: (Up to 3)"></asp:Label>
            </td>
            <td style="height: 19px"></td>
            <td style="height: 19px"></td>
            <td style="height: 19px"></td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 217px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 217px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px">
                <asp:Label ID="Label5" runat="server" Text="Place Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TBPlaceName" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 217px">
                <asp:Label ID="Label9" runat="server" Text="Place Name 2:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TBPlaceName2" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Place Name 3:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TBPlaceName3" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 217px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px">
                <asp:Label ID="Label6" runat="server" Text="Place Information:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TBPlaceInfo" runat="server" Height="70px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 217px">
                <asp:Label ID="Label10" runat="server" Text="Place Information 2:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TBPlaceInfo2" runat="server" Height="70px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Place Information 3:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TBPlaceInfo3" runat="server" Height="70px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 217px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px">
                <asp:Label ID="Label7" runat="server" Text="Address:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TBAddress" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 217px">
                <asp:Label ID="Label11" runat="server" Text="Address 2:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TBAddress2" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label15" runat="server" Text="Address 3:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TBAddress3" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 217px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 217px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px; height: 50px;"></td>
            <td style="height: 50px"></td>
            <td style="width: 217px; height: 50px;">
                <asp:Button ID="ButtonAdd" runat="server" BackColor="Lime" Height="50px" OnClick="ButtonAdd_Click" Text="Add" Width="100px" />
            </td>
            <td style="height: 50px">
                <asp:Button ID="ButtonBack" runat="server" BackColor="#66CCFF" Height="50px" Text="Back" Width="100px" OnClick="ButtonBack_Click" />
            </td>
            <td style="height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 217px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 113px; height: 20px;"></td>
            <td style="height: 20px"></td>
            <td style="width: 217px; height: 20px;">
                <asp:Label ID="LabelSuccessMsg" runat="server"></asp:Label>
            </td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 113px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 217px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
