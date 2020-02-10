<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication2.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <div class="container text-center" style="margin-top: 50px;">

        <asp:Panel ID="Validation" Visible="false" Style="margin-top: 10px;" runat="server" CssClass="alert alert-dismissable alert-danger" Height="64px">
            <button type="button" class="close" data-dismiss="alert">
                <span aria-hidden="true">&times;</span>
            </button>
            <span style="font-size: 18px;" class="glyphicon glyphicon-exclamation-sign"></span>
            <asp:Label ID="Lbl_Msg" runat="server" Style="margin-left: 10px; font-size: 18px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"></asp:Label>


        </asp:Panel>
        <asp:Label runat="server" ID="TPP" Text="Tour Package Purchases" Font-Size="Medium"></asp:Label>

        <div class="row">
            <asp:GridView ID="GvPurchase" runat="server" AutoGenerateColumns="False" Height="120px" Width="1147px" CellSpacing="2" CellPadding="3" CssClass="w3-text-deep-purple" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" OnDataBound="GvCart_DataBound">
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="Username" />
                    <asp:BoundField DataField="PackageName" HeaderText="Tour Package Name" />
                    <asp:BoundField DataField="PackageSize" HeaderText="Numper Of People" />
                    <asp:BoundField DataField="PackageDateFrom" HeaderText="Date From" />
                    <asp:BoundField DataField="PackageDateTo" HeaderText="Date To" />
                    <asp:BoundField DataField="PackageType" HeaderText="Tour Package Type" />
                    <asp:BoundField DataField="PackageTotalCost" HeaderText="Total Cost" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <br/>
            <br />
             <asp:GridView ID="GvCart" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" Height="253px" Width="1147px" OnSelectedIndexChanged="GvCart_SelectedIndexChanged" CellPadding="3" HorizontalAlign="Center" OnDataBound="GvCart_DataBound" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" />
                <asp:BoundField DataField="Id" HeaderText="Product Number" ReadOnly="True" />
                <asp:BoundField DataField="NAME" HeaderText="Product Name" ReadOnly="True" />
                <asp:TemplateField HeaderText="Product Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="169px" ImageUrl='<%#Eval("IMAGE")%>' Width="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="QUANTITY" HeaderText="Quantity" />
                <asp:BoundField DataField="PRICE" HeaderText="Price" ReadOnly="True" />
                <asp:BoundField DataField="TOTAL" HeaderText="Total" ReadOnly="True" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <EditRowStyle HorizontalAlign="Center" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        </div>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Lbl_GrandTotal" runat="server" Text="Grand Total:" Font-Size="Large"></asp:Label>
        <br />
        <br />
    </div>
</asp:Content>
