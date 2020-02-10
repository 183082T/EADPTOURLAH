<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="adminCreateTourPackage.aspx.cs" Inherits="WebApplication2.adminCreateTourPackage" %>


<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


    <div class="container-fluid" style="background-color: azure;">
        <h1 style="text-align: center;">Create Tour Package</h1>

        <asp:Panel ID="Validation" Visible="false" runat="server" CssClass="alert alert-dismissable alert-danger" Height="64px">
            <button type="button" class="close" data-dismiss="alert">
                <span aria-hidden="true">&times;</span>
            </button>
             <span style="font-size:18px;" class="glyphicon glyphicon-exclamation-sign"></span>
                <asp:Label ID="Lbl_Msg"  style="margin-left:10px; font-size:18px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" runat="server"></asp:Label>
        </asp:Panel>


        <div class="container">
            <div class="row">
                <table style="width: 600px; height: 210px;">

                    <tr>
                        <td style="height: 40px; width: 200px;">Tour Package Name: 
                        </td>
                        <td style="height: 40px">
                            <asp:TextBox runat="server" required="required" ID="adminPackage" Width="120%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 40px; width: 200px;">Image URL:</td>
                        <td style="height: 40px;">
                            <asp:TextBox runat="server" required="required" ID="adminImageLink" Width="120%"></asp:TextBox>
                            <asp:Button ID="btnUpload" Text="Upload" runat="server" OnClick="UploadFile" formnovalidate />
                            <asp:Image ID="ImageDisplay" runat="server" Height="100" Width="160" />

                        </td>
                    </tr>
                    <tr>
                        <td style="height: 40px; width: 200px;">Description:</td>
                        <td style="height: 40px">
                            <asp:TextBox runat="server" Style="resize: none;" TextMode="MultiLine" Height="105%" Width="120%" required="required" ID="adminDescription"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 40px; width: 200px;">Duration:</td>
                        <td style="height: 40px">
                            <asp:TextBox runat="server" required="required" ID="adminDuration"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td style="height: 40px; width: 200px;">Location</td>
                        <td style="height: 40px">
                            <asp:TextBox runat="server" required="required" ID="adminLocation"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td style="height: 40px; width: 200px;">Original Price:</td>
                        <td style="height: 40px">
                            <asp:TextBox runat="server" required="required" ID="adminOriginal"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 40px; width: 200px;">Discounted Price:</td>
                        <td style="height: 40px">
                            <asp:TextBox runat="server" required="required" ID="adminDiscounted"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td style="height: 40px; width: 200px;"></td>
                        <td style="height: 80px; padding-left: 100px;">
                            <asp:Button ID="BtnCreateTour" class="btn btn-success" runat="server" Text="Create Tour Package" OnClick="BtnCreateTour_Click" />
                        </td>
                    </tr>
                </table>

            </div>
        </div>





    </div>


</asp:Content>
