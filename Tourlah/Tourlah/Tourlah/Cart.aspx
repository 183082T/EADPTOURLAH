<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication2.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:GridView ID="GvCart" runat="server" AutoGenerateColumns="False" CssClass="table table-striped"  onRowDeleting="GvCart_RowDeleting" Height="253px" Width="879px" >
        <Columns>
            <asp:BoundField DataField="NAME" HeaderText="Product Name" ReadOnly="True" />
            <asp:ImageField DataImageUrlField="IMAGE" HeaderText="Product" ReadOnly="True" DataImageUrlFormatString="&quot;~\Images\{0}&quot;">
            </asp:ImageField>
            <asp:BoundField DataField="QUANTITY" HeaderText="Quantity" />
            <asp:BoundField DataField="PRICE" HeaderText="Price" ReadOnly="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="LblMsg" runat="server" Font-Size="Large"></asp:Label>
</asp:Content>
