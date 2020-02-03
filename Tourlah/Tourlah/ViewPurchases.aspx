<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewPurchases.aspx.cs" Inherits="WebApplication2.ViewPurchases" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
         <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <div class="container text-center" style="margin-top:50px;">

         <asp:Panel ID="Validation" Visible="false" style="margin-top:10px;" runat="server" CssClass="alert alert-dismissable alert-danger" Height="64px">
            <button type="button" class="close" data-dismiss="alert">
                <span aria-hidden="true">&times;</span>
            </button>
            <span style="font-size:18px;" class="glyphicon glyphicon-exclamation-sign"></span>
                <asp:Label ID="Lbl_Msg" runat="server" style="margin-left:10px; font-size:18px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"></asp:Label>
            
            
        </asp:Panel>


        <h2>My Purchases</h2>

        <div class="row">
            <asp:GridView ID="GvPurchase" runat="server" AutoGenerateColumns="False" Height="120px" Width="860px" CssClass="table table-striped"  >
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="Username" />
                        <asp:BoundField DataField="PackageName" HeaderText="Tour Package Name" />
                        <asp:BoundField DataField="PackageSize" HeaderText="Numper Of People"  />
                        <asp:BoundField DataField="PackageDateFrom" HeaderText="Date From" />
                        <asp:BoundField DataField="PackageDateTo"  HeaderText="Date To" />
                        <asp:BoundField DataField="PackageType" HeaderText="Tour Package Type" />
                        <asp:BoundField DataField="PackageTotalCost" HeaderText="Total Cost" />
                    </Columns>
                </asp:GridView>

        </div>
    </div>


</asp:Content>
