<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LeftMenuControl.ascx.cs" Inherits="WebApplication2.LeftMenuControl" %>
<asp:DataList ID="dlMenu" runat="server" Width="1358px" Height="52px" RepeatDirection="Horizontal">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Category.aspx?IDCAT="+Eval("ID") %>' Text='<%# Eval("NAME") %>'></asp:HyperLink>
    </ItemTemplate>
</asp:DataList>