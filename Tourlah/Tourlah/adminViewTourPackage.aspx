<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="adminViewTourPackage.aspx.cs" Inherits="WebApplication2.adminViewTourPackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css">
    <link href="https://fonts.googleapis.com/css?family=Gelasio:500i&display=swap" rel="stylesheet">
    
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


   
    <div class="container-fluid" style="text-align: center; background-color: #EEE7E7">
        <h3>Singapore Tour Packages</h3>
        <br />
        <asp:Button runat="server" Style="border-radius: 10px; padding: 5px;" CssClass="btn-warning" Text="Click here to go to Customer View" ID="gotoCustomerView" OnClick="gotoCustomerView_Click" Width="250px"></asp:Button>
        <div class="container">

            <%--<div class="row"> <h2>Sort by: </h2>
                <div class="well" style="background-color:lemonchiffon; border-radius:10px; font-size:20px;" >Price..etc</div>
            </div>--%>

            <asp:Panel ID="Validation" Visible="false" runat="server" CssClass="alert alert-dismissable alert-danger" Height="64px">
                <button type="button" class="close" data-dismiss="alert">
                    <span aria-hidden="true">&times;</span>
                </button>
                <asp:Label ID="Lbl_Msg" runat="server"></asp:Label>
            </asp:Panel>


            <div id="thumbb">


                <asp:DataList ID="DlPackages" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="thumbnail">
                                    <img style="width: 350px; height: 197.05px;" src="<%# Eval("imageFile") %>"></>     
                                </div>
                            </div>
                            <div class="col-md-6">
                                <h3 style="font-family: 'Times New Roman',serif"><%# Eval("tourName") %></h3>
                                <img src="https://image.flaticon.com/icons/png/512/252/252025.png" style="font-size: 20px; width: 30px; height: 30px">&nbsp; <%# Eval("tourLocation") %></>
                    <span style="margin-left: 120px;">
                        <img src="https://image.flaticon.com/icons/png/512/59/59252.png" style="font-size: 20px; width: 25px; height: 21px">&nbsp;&nbsp; <%# Eval("tourDuration") %> </>
                    </span>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p class="description">
                                    <%# Eval("tourDescription") %>
                                </p>
                            </div>

                            <div class="col-md-2">
                                <p style="float: right; background-color: cornflowerblue; border-radius: 6px;">


                                <p style="font-size: 18px; margin-top: 10px; text-align: center;">Starting From</p>
                                <h4><strike>$<%# Eval("tourOriginalPrice") %></strike></h4>
                                <h2>$<%# Eval("tourDiscountPrice") %></h2>
                                <a href="adminUpdate.aspx?id=<%# Eval("tourpackageId") %>" style="border-style: hidden; border-radius: 10px; padding: 10px; font-size: 20px; background-color: white;">Edit</a>

                            </div>
                        </div>




                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStr %>"
                    SelectCommand="SELECT * FROM TourPackages"></asp:SqlDataSource>

                <!-- Pagination -->
                <div class="w3-center w3-padding-32">
                    <div class="w3-bar">
                        <a href="#" class="w3-bar-item w3-button w3-hover-black">1      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
                            <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
                            <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
                            <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
                    </div>
                </div>
            </div>
        </div>
    </div>





</asp:Content>
