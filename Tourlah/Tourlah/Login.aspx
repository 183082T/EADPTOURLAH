<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="css/login.css" rel="stylesheet" />


    <div class="container">
        <asp:Panel ID="Validation" Visible="false" Style="margin-top: 10px;" runat="server" CssClass="alert alert-dismissable alert-danger" Height="64px">
            <button type="button" class="close" data-dismiss="alert">
                <span aria-hidden="true">&times;</span>
            </button>
            <span style="font-size: 18px;" class="glyphicon glyphicon-exclamation-sign"></span>
            <asp:Label ID="Lbl_Msg" runat="server" style="margin-left:10px; font-size:18px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"></asp:Label>


        </asp:Panel>

        <div class="form">
            <div class="form-toggle"></div>
            <div class="form-panel one">
                <div class="form-header">
                    <h1>User Login</h1>
                </div>
                <div class="form-content">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <asp:TextBox ID="TbUsername" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <asp:TextBox ID="TbPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Button ID="BtnLogin" Style="outline: none; background: #4285f4; width: 100%; border: 0; border-radius: 4px; padding: 12px 20px; color: #ffffff; font-family: inherit; font-size: inherit; font-weight: 500; line-height: inherit; text-transform: uppercase; cursor: pointer;"
                            runat="server" Text="Sign In" OnClick="BtnLogin_Click" />
                    </div>

                    <div class="form-group">
                        <label>Don't have an account ?</label>
                        <a runat="server" href="~/Register" style="color: #0000FF; float: right; font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">Sign up now</a>
                    </div>
                    <div class="form-group"> 
                        <a runat="server" href="~/adminLogin" style="color:#0000FF; font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; text-align:center;">Or are you an admin</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
