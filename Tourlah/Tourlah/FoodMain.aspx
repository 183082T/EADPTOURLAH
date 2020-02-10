<%@ Page Title="Food" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FoodMain.aspx.cs" Inherits="WebApplication2.FoodMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .item {
            border: solid 3px black;
            padding: 35px;
            border-radius: 10px;
        }

        .my-image {
            border: 3px solid black;
            border-radius: 5px;
        }
    </style>

    <br />
    <br />

    <div style="text-align: center;">
        <asp:Label ID="Label1" style="font-size: 50px;" runat="server" ForeColor="Red" Text="Singapore's Local Cuisines"></asp:Label>
    </div>

    <br />

    <div style="text-align: center; width: 70%; margin-left: 270px;">
        <asp:Label ID="Label2" style="font-size: 20px;" runat="server" ForeColor="Black" Text="Singaporean cuisine is diverse and contains elements derived from several ethnic groups, 
            as a result of its history as a seaport with a large immigrant population. Influences include the cuisines of the native Malays, the largest ethnic group, 
            the Chinese and the third largest ethnic group, the Indians as well as Indonesian, Peranakan and Western traditions."></asp:Label>
    </div>

    <br />

    <hr style="background: black; height: 5px; width: 80%; margin-left: 190px;"/>

    <br />

    <div style="text-align: center;">
        <asp:TextBox ID="TBSearch" placeholder="    Food Name" runat="server" Height="50px" Width="220px" Font-Size="Large"></asp:TextBox>
        <asp:Button ID="ButtonSearch" runat="server" Text="Search" BackColor="#009933" Font-Size="Large" ForeColor="White" Height="50px" Width="90px" OnClick="ButtonSearch_Click" />
    </div>

    <br />
    <br />

    <div style="width: 66%; margin: 0 auto;">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="5px" CellPadding="10" CellSpacing="10" ForeColor="#FF9966" Height="490px" RepeatColumns="4" RepeatDirection="Horizontal" Width="863px" style="margin-left: 0px" OnItemCommand="ButtonMoreInfo">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" />
            <ItemTemplate>
                <div class="item">
                    <table class="w3-center">
                        <tr>
                            <td>
                                <asp:Label ID="LabelName" style="font-size: 25px;" runat="server" Text='<%# Eval("foodName") %>' ForeColor="Red" Font-Size="XX-Large"></asp:Label>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <asp:Image ID="ImageFood" CssClass="my-image" runat="server" Height="200px" Width="200px" ImageUrl='<%# String.Format("Images/{0}", Eval("foodPic")) %>'/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                                <asp:Button ID="ButtonInfo" runat="server" Text="More Information!" Height="35px" BackColor="#00CCFF" Font-Size="Medium" ForeColor="White" Width="150px" />
                            </td>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [foodName], [foodInfo], [foodPic], [ID] FROM [TDFood]"></asp:SqlDataSource>
    </div>

    <br />
    <br />

    <br />

</asp:Content>