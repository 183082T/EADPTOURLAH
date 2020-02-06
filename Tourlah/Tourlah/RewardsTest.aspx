<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RewardsTest.aspx.cs" Inherits="WebApplication2.RewardsTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CssClass="text-center" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid"
        BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both" Height="573px" RepeatColumns="4" RepeatDirection="Horizontal" Width="957px"
        Style="color: #FF0066; background-color: #000099">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td class="w3-center">&nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("reward_name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="w3-center">
                        <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" ImageUrl='<%# String.Format("Images/{0}", Eval("reward_image")) %>' />
                    </td>
                </tr>
                <tr>
                    <td class="w3-center" style="height: 20px">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("reward_qty") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="w3-center"><strong>
                        <img src="Images/ic-shuga.svg" /><asp:Label ID="Label4" runat="server" Text='<%# Eval("reward_amt") %>'></asp:Label>
                    </strong></td>
                </tr>
                <tr>
                    <td>
                        <a id="details" href="RewardsTest.aspx?rewardid=<%# Eval("id") %>" Style="border-radius: 35px; margin-top: 15px;">Details</a>
                        <%--<asp:Button ID="detailsBtn" runat="server" data-toggle="modal" Style="border-radius: 35px; margin-top: 15px;" Text="Details"></asp:Button>--%>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id] , [reward_name], [reward_amt], [reward_qty], [reward_image] FROM [reward]"></asp:SqlDataSource>

</asp:Content>
