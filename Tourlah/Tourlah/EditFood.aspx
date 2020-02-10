<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditFood.aspx.cs" Inherits="WebApplication2.EditFood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        th, td{
            padding-left: 20px;
            padding-right: 20px;
        }
    </style>

    <br />
    <br />

    <div style="text-align:center;">
        <div style="width: 85%; margin: 0 auto; text-align: center;">
            <table style="width: 100%; border: solid 2px black; margin-left: auto; margin-right: auto; background-color: darksalmon;">
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
                        <asp:Label ID="Label1" runat="server" Text="Food Name:" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TBFoodName" runat="server" Height="30px" Width="200px" Font-Size="Medium" Enabled="False" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td class="w3-center">
                        &nbsp;</td>
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
                        <asp:Label ID="Label2" runat="server" Text="Food Description:" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td style="height: 20px">
                        <asp:TextBox ID="TBFoodDesc" runat="server" Height="70px" TextMode="MultiLine" Width="200px" Font-Size="Small"></asp:TextBox>
                    </td>
                    <td style="height: 20px" class="w3-center">
                        <asp:Label ID="LabelInfoError" runat="server" Font-Size="X-Large"></asp:Label>
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
                        <asp:Label ID="Label3" runat="server" Text="Food Picture:" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td style="height: 20px">
                        <asp:FileUpload ID="FUFoodPic" runat="server" Width="200px" Height="30px" />
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
                        <asp:Label ID="Label16" runat="server" Font-Size="XX-Large" ForeColor="#3333CC" Text="Food Places Recommendations (Up to 3)"></asp:Label>
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
                        <asp:Label ID="Label5" runat="server" Text="Place Name:" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TBPlaceName" runat="server" Width="200px" Height="30px" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td style="width: 217px">
                        <asp:Label ID="Label9" runat="server" Text="Place Name 2:" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TBPlaceName2" runat="server" Width="200px" Height="30px" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text="Place Name 3:" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TBPlaceName3" runat="server" Width="200px" Height="30px" Font-Size="Medium"></asp:TextBox>
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
                        <asp:Label ID="Label6" runat="server" Text="Place Information:" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TBPlaceInfo" runat="server" Height="70px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </td>
                    <td style="width: 217px">
                        <asp:Label ID="Label10" runat="server" Text="Place Information 2:" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TBPlaceInfo2" runat="server" Height="70px" TextMode="MultiLine" Width="200px" Font-Size="Small"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label14" runat="server" Text="Place Information 3:" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TBPlaceInfo3" runat="server" Height="70px" TextMode="MultiLine" Width="200px" Font-Size="Small"></asp:TextBox>
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
                        <asp:Label ID="Label7" runat="server" Text="Address:" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TBAddress" runat="server" Width="200px" Height="30px" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td style="width: 217px">
                        <asp:Label ID="Label11" runat="server" Text="Address 2:" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TBAddress2" runat="server" Width="200px" Height="30px" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label15" runat="server" Text="Address 3:" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TBAddress3" runat="server" Width="200px" Height="30px" Font-Size="Medium"></asp:TextBox>
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
                        <asp:Button ID="ButtonEdit" runat="server" BackColor="Lime" Height="70px" OnClick="ButtonEdit_Click" Text="Add" Width="120px" Font-Size="Large" />
                    </td>
                    <td style="height: 50px">
                        <asp:Button ID="ButtonBack" runat="server" BackColor="#66CCFF" Height="70px" Text="Back" Width="120px" OnClick="ButtonBack_Click" Font-Size="Large" />
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
                        <asp:Label ID="LabelSuccessMsg" runat="server" Font-Size="XX-Large"></asp:Label>
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
        </div>
    </div>

</asp:Content>
