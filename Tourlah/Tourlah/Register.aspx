<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication2.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="css/login.css" rel="stylesheet" />

    
    <div class="container">
    <asp:Panel ID="Validation" Visible="false" runat="server" CssClass="alert alert-dismissable alert-danger" Height="64px">
        <button type="button" class="close" data-dismiss="alert">
            <span aria-hidden="true">&times;</span>
        </button>
         <span style="font-size: 18px;" class="glyphicon glyphicon-exclamation-sign"></span>
            <asp:Label ID="Lbl_errorMsg" runat="server" style="margin-left:10px; font-size:18px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif"></asp:Label>
    </asp:Panel>

    <%--<table class="nav-justified" style="margin-left: 260px; height: 165px;">
        <tr>
            <td class="modal-sm" style="width: 190px; height: 40px">&nbsp;</td>
            <td style="height: 28px"></td>
        </tr>
        
        <tr>
            <td class="modal-sm" style="width: 190px; height: 40px;">Username:</td>
            <td style="height: 40px">
                <asp:TextBox ID="registerUsername" runat="server" Width="264px" required="required"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td class="modal-sm" style="width: 190px; height: 40px;">Password</td>
            <td>
                <asp:TextBox ID="registerPassword" runat="server" Width="264px" TextMode="Password" required="required"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="modal-sm" style="width: 190px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 190px">&nbsp;</td>
            <td>
                <asp:Button ID="BtnRegister" class="btn btn-primary" runat="server" Text="Create Account" OnClick="BtnRegister_Click" /></td>
        </tr>
    </table>--%>
        <div class="form">
            <div class="form-toggle"></div>
            <div class="form-panel one">
                <div class="form-header">
                    <h1>Registeration</h1>
                </div>
                <div class="form-content">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <asp:TextBox ID="registerUsername" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <asp:TextBox ID="registerPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Button ID="BtnRegister" Style="outline: none; background: #4285f4; width: 100%; border: 0; border-radius: 4px; padding: 12px 20px; color: #ffffff; font-family: inherit; font-size: inherit; font-weight: 500; line-height: inherit; text-transform: uppercase; cursor: pointer;"
                            runat="server" Text="Sign up" OnClick="BtnRegister_Click" />
                    </div>

                </div>
            </div>
        </div>
</div>
</asp:Content>
