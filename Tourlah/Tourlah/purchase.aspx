<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="purchase.aspx.cs" Inherits="WebApplication2.purchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <link href="css/purchase.css" rel="stylesheet" />

    

    <div class="container-fluid" style="background-color: #CB86ED">
        <div class="container" style="padding: 80px;">
<asp:Panel ID="Validation" Visible="false" runat="server" CssClass="alert alert-dismissable alert-danger" Height="64px">
            <button type="button" class="close" data-dismiss="alert">
                <span aria-hidden="true">&times;</span>
            </button>
    <span style="font-size:18px;" class="glyphicon glyphicon-exclamation-sign"></span>
            <asp:Label ID="Lbl_Msg" style="font-size:18px;margin-left:10px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" runat="server"></asp:Label>
        </asp:Panel>

            <div class="well" style="text-align: center; font-size: 20px;">Package Form</div>
            <div class="table-bordered">
                <div class="container" style="width: 430px">

                    <table class="table-condensed" style="font-family: Arial, Helvetica, sans-serif; width: 460px;">

 
                        <tr>
                            <td class="auto-style1" style="width: 200px">Customer Name:</td>
                            <td>
                                <asp:Label ID="LblUsername" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1" style="width: 200px">Tour Package Name:</td>
                            <td>
                                <asp:Label ID="LblPackagename" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1" style="width: 200px">Duration</td>
                            <td>
                                <asp:Label ID="LblDuration" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1" style="width: 200px">Date From:</td>
                            <td>
                                <asp:TextBox ID="TbDatefrom" OnTextChanged="TbDatefrom_TextChanged" AutoPostBack="true" TextMode="Date" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style1" style="width: 200px">Date To:</td>
                            <td>
                                <asp:Label ID="LblDateto" TextMode="Date" runat="server"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style1" style="width: 200px">Travel Type:</td>
                            <td>
                                <asp:DropDownList ID="DdlTraveltype" OnSelectedIndexChanged="DdlTraveltype_SelectedIndexChanged" Style="color: black; font-size: 14px; padding: 5px 10px; border-radius: 5px; background-color: #00ffff;" runat="server" AutoPostBack="true" >
                                    <asp:ListItem Enabled="True" Selected="True" Value="-1">--Select--</asp:ListItem>
                                    <asp:ListItem Value="Standard">Standard</asp:ListItem>
                                    <asp:ListItem Value="Premium">Premium</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style1" style="width: 200px">Number of People: </td>
                            <td>
                                <asp:DropDownList ID="DdlPeople" OnSelectedIndexChanged="DdlPeople_SelectedIndexChanged" Style="color: black; font-size: 14px; padding: 5px 10px; border-radius: 5px; background-color: #00ffff;" runat="server" AutoPostBack="true" >
                                    <asp:ListItem Selected="True" Value="-1">--Select--</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>

                            <td class="auto-style1" style="width: 200px">Total Cost(S$): </td>

                            <td>
                                <asp:Label ID="LblTotalcost" Text="" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <br />
                        <tr>

                            <td class="auto-style1" style="width: 200px"></td>

                            <td>
                                <asp:Button runat="server" Text="Proceed to checkout" CssClass="btn btn-success" ID="BtnCalculate" OnClick="BtnCalculate_Click" ></asp:Button>
                            </td>
                        </tr>
                    </table>


                </div>
            </div>

        </div>
    </div>

</asp:Content>
