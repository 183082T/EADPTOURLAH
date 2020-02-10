<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminFoodInfo.aspx.cs" Inherits="WebApplication2.AdminFoodInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />

    <div style="width: 40%; margin: 0 auto;">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BorderStyle="None">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td class="w3-center" style="height: 58px">
                            <asp:Label ID="LabelFoodName" style="font-size: 50px;" runat="server" ForeColor="Red" Text='<%# Eval("foodName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="w3-center" style="height: 58px">&nbsp;</td>
                    </tr>
                </table>
                <table style="width: 100%">
                    <tr>
                        <td class="w3-center" style="height: 173px; width: 420px">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# String.Format("Images/{0}", Eval("foodPic")) %>' />
                        </td>
                        <td class="w3-center" style="height: 173px">
                            <asp:Label ID="LabelFoodInfo" runat="server" Text='<%# Eval("foodInfo") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="w3-center" colspan="2" style="height: 20px">
                        </td>
                    </tr>
                    <tr>
                        <td class="w3-center" colspan="2" style="height: 20px">
                            <asp:Label ID="Label1" runat="server" ForeColor="#FF6600" style="font-size: 30px;" Text="Food Place Recommendations!"></asp:Label>
                        </td>
                    </tr>
                </table>
                <table style="width: 100%">
                    <tr>
                        <td class="w3-center" style="height: 60px">
                            &nbsp;</td>
                        <td class="w3-center" style="height: 60px" colspan="2">
                            &nbsp;</td>
                        <td class="w3-center" style="height: 60px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="w3-center" style="height: 60px">
                            <asp:Label ID="Label2" runat="server" BackColor="White" Text='<%# Eval("placeName") %>'></asp:Label>
                        </td>
                        <td class="w3-center" colspan="2" style="height: 60px">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("placeName2") %>'></asp:Label>
                        </td>
                        <td class="w3-center" style="height: 60px">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("placeName3") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="w3-center" style="height: 60px">&nbsp;</td>
                        <td class="w3-center" colspan="2" style="height: 60px">&nbsp;</td>
                        <td class="w3-center" style="height: 60px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="w3-center" style="height: 60px">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("placeInfo") %>'></asp:Label>
                        </td>
                        <td class="w3-center" style="height: 60px" colspan="2">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("placeInfo2") %>'></asp:Label>
                        </td>
                        <td class="w3-center" style="height: 60px">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("placeInfo3") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="w3-center" style="height: 60px">&nbsp;</td>
                        <td class="w3-center" colspan="2" style="height: 60px">&nbsp;</td>
                        <td class="w3-center" style="height: 60px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="w3-center" style="height: 60px">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("placeAdd") %>'></asp:Label>
                        </td>
                        <td class="w3-center" style="height: 60px" colspan="2">
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("placeAdd2") %>'></asp:Label>
                        </td>
                        <td class="w3-center" style="height: 60px">
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("placeAdd3") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="w3-center" style="height: 60px">&nbsp;</td>
                        <td class="w3-center" colspan="2" style="height: 60px">&nbsp;</td>
                        <td class="w3-center" style="height: 60px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="w3-center" colspan="2" style="height: 60px">
                            <asp:Button FoodID='<%# Eval("ID") %>' ID="ButtonEdit" runat="server" BackColor="Lime" ForeColor="Black" Height="43px" OnClick="ButtonEdit_Click" Text="Edit" Width="144px" />
                        </td>
                        <td class="w3-center" colspan="2" style="height: 60px">
                            <asp:Button ID="ButtonBack" runat="server" BackColor="#66CCFF" Height="43px" OnClick="ButtonBack_Click" Text="Back" Width="144px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="w3-center" style="height: 60px">&nbsp;</td>
                        <td class="w3-center" colspan="2" style="height: 60px">&nbsp;</td>
                        <td class="w3-center" style="height: 60px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="w3-center">&nbsp;</td>
                        <td class="w3-center" colspan="2">&nbsp;</td>
                        <td class="w3-center">&nbsp;</td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
    </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TDFood] WHERE ([ID] = @ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>


</asp:Content>
