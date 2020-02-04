<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="WebApplication2.Category" %>



<%@ Register Src="LeftMenuControl.ascx" TagName="LeftMenuControl" TagPrefix="uc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <table style="width: 100%;">
        <tr>
            <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                 Shop</td>
        </tr>
        <tr>
            <td style="width: 1060px">
                <uc1:LeftMenuControl ID="LeftMenuControl1" runat="server" />
            </td>
            <td class="auto-style3" style="vertical-align: top">&nbsp;</td>
            <td style="vertical-align: top">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 1060px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;
    <div style="width:60%; margin:0 auto;">
        <asp:DataList ID="dlCategory" runat="server" CssClass="auto-style6" RepeatColumns="3" RepeatDirection="Horizontal" Width="919px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Images/" +Eval("IMAGE") %>' Height="450px" Width="317px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Name:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("NAME") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Price:$
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("PRICE") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "ProductDetails.aspx?ID="+Eval("ID") %>' Text='<%# "View" %>'></asp:HyperLink>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
</asp:Content>
