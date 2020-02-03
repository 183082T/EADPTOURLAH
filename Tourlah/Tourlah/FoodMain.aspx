<%@ Page Title="Food" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FoodMain.aspx.cs" Inherits="WebApplication2.FoodMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="w3-center" style="width: 859px">

        <br />
        <br />

        <div class="container justify-content-center">
            <asp:Label ID="Label1" style="font-size: 50px;" runat="server" ForeColor="Red" Text="Singapore's Local Cuisines"></asp:Label>
        </div>

        <br />

        <div class="container justify-content-center">
            <asp:Label ID="Label2" style="font-size: 20px;" runat="server" ForeColor="Black" Text="Singaporean cuisine is diverse and contains elements derived from several ethnic groups, 
                as a result of its history as a seaport with a large immigrant population. Influences include the cuisines of the native Malays, the largest ethnic group, 
                the Chinese and the third largest ethnic group, the Indians as well as Indonesian, Peranakan and Western traditions."></asp:Label>
        </div>

        <br />

        <hr style="background: black; height: 5px; width: 135%"/>

        <br />

        <div style="width: 65%; margin: 0 auto;">
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="5px" CellPadding="10" CellSpacing="70" ForeColor="#FF9966" Height="490px" RepeatColumns="4" RepeatDirection="Horizontal" Width="863px" style="margin-left: 0px" OnItemCommand="DataList1_ItemCommand">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="White" />
                <ItemTemplate>
                    <table class="w3-center">
                        <tr>
                            <td>
                                <asp:Label ID="LabelName" style="font-size: 25px;" runat="server" Text='<%# Eval("foodName") %>' ForeColor="Red"></asp:Label>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <asp:Image ID="ImageFood" runat="server" Height="200px" Width="200px" ImageUrl='<%# String.Format("Images/{0}", Eval("foodPic")) %>'/></td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <asp:Label ID="LabelDesc" runat="server" Text='<%# Eval("foodInfo") %>'></asp:Label>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <asp:Button ID="ButtonInfo" runat="server" Text="More Information!" Height="25px" CommandName="viewdetails" CommandArgument='<%# Eval("ID") %>'/></td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [foodName], [foodInfo], [foodPic], [ID] FROM [TDFood]"></asp:SqlDataSource>
        </div>

        <br />
        <br />
        <br />

        <div class="container justify-content-center">
            <asp:Button ID="ButtonAdd" runat="server" Text="Add Food Item" OnClick="ButtonAdd_Click" BackColor="#99FF33" Height="43px" Width="144px" />
        </div>

        <br />

    </div>

</asp:Content>