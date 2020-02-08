<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="productCreation.aspx.cs" Inherits="WebApplication2.productCreation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <form action="/html/tags/html_form_tag_action.cfm" class="form-horizontal">
        <div class="form-group">
            <br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LblMsg" runat="server" ForeColor="Lime"></asp:Label>
            <br>
            <br>
            <label for="first_name" class="col-xs-3 control-label">Product Name</label>
            <div class="col-xs-9">
                <asp:TextBox ID="TbName" runat="server" Width="500px"></asp:TextBox>
            </div>
        </div>
        <br>
        <br>
        <br>
        <div class="form-group">
            <label for="last_name" class="col-xs-3 control-label">Product Image</label>
            <div class="col-xs-9">
                <asp:TextBox ID="TbImage" runat="server" Width="500px"></asp:TextBox>
            </div>
        </div>
        <br>
        <br>
        <br>
         <div class="form-group">
            <label for="last_name" class="col-xs-3 control-label">Price</label>
            <div class="col-xs-9">
                <asp:TextBox ID="TbPrice" runat="server" Width="500px"></asp:TextBox>
            </div>
        </div>
        <br>
        <br>
        <br>
         <div class="form-group">
            <label for="last_name" class="col-xs-3 control-label">Description</label>
            <div class="col-xs-9">
                <asp:TextBox ID="TbDesc" runat="server" Width="500px"></asp:TextBox>
            </div>
        </div>
        <br>
        <br>
        <br>
         <div class="form-group">
            <label for="last_name" class="col-xs-3 control-label">Category</label>
            <div class="col-xs-9">
                <asp:TextBox ID="TbCategory" runat="server" Width="500px"></asp:TextBox>
            </div>
        </div>
        <br>
        <br>
        <br>
        <div class="form-group">
            <div class="col-xs-offset-3 col-xs-9">
                <asp:Button ID="BtnAdd" runat="server"  Text="Add" Width="55px" OnClick="BtnAdd_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnToUpdate" runat="server" OnClick="BtnToUpdate_Click" Text="View Data" />
            </div>
            <br />
        </div>
    </form>
</asp:Content>
