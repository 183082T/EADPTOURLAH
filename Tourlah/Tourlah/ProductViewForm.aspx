<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ProductViewForm.aspx.cs" Inherits="WebApplication2.ProductViewForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <asp:GridView ID="GvProducts" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GvProducts_SelectedIndexChanged" CssClass="table table-striped" Height="314px" Width="863px">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" />
            <asp:BoundField DataField="Desc" HeaderText="Description" ReadOnly="True" />
            <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True" />
            <asp:CommandField ShowSelectButton="True" />
            
        </Columns>
    </asp:GridView>
</asp:Content>
