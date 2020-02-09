<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tourpackage.aspx.cs" Inherits="WebApplication2.tourpackage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

    <style type="text/css">

        .blankstar {
            background-image: url(Images/blank_star.png);
            width: 16px;
            height: 16px;
            background-repeat:no-repeat;
        }

        .waitingstar {
            background-image: url(Images/half_star.png);
            width: 16px;
            height: 16px;
            background-repeat:no-repeat;
        }

        .shiningstar {
            background-image: url(Images/shining_star.png);
            width: 16px;
            height: 16px;
            background-repeat:no-repeat;
        }

     
    </style>


    <script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css">
    <link href="css/tourpack.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gelasio:500i&display=swap" rel="stylesheet">
    <div class="container-fluid" style="text-align: center; background-color: #EEE7E7">
        <h3>Singapore Tour Packages</h3>

        <div class="container">
            <asp:Panel ID="Validation" Visible="false" runat="server" CssClass="alert alert-dismissable alert-danger" Height="64px">
                <button type="button" class="close" data-dismiss="alert">
                    <span aria-hidden="true">&times;</span>
                </button>
                <span style="font-size:18px;" class="glyphicon glyphicon-exclamation-sign"></span>
                <asp:Label ID="Lbl_Msg"  style="margin-left:10px; font-size:18px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" runat="server"></asp:Label>
            </asp:Panel>

            <div class="row" style="text-align: center; display: inline-block;">
                <asp:Label runat="server" Text="Sort by: "></asp:Label>
                <asp:DropDownList CssClass="w3-hover-border-purple w3-orange" Style="font-size: 14px; padding: 5px 10px; border-radius: 5px; background-color: white;" runat="server" ID="DdlSort">
                    <asp:ListItem Value="1">Recent</asp:ListItem>
                    <asp:ListItem Value="2">Price</asp:ListItem>
                    <asp:ListItem Value="3">Most Discounted</asp:ListItem>
                    <asp:ListItem Value="4">Ratings</asp:ListItem>
                    <asp:ListItem Value="5">Popularity</asp:ListItem>
                    <asp:ListItem Value="6">Duration</asp:ListItem>
                </asp:DropDownList>

            </div>
            <div class="row" style="text-align: center; margin-left: 30px; display: inline-block;">
                <asp:Label runat="server" Text="Order: "></asp:Label>
                <asp:DropDownList  CssClass="w3-hover-border-purple w3-orange"  Style="font-size: 14px; padding: 5px 10px; border-radius: 5px; background-color: white;" runat="server"  ID="DdlOrder">
                    <asp:ListItem Value="1">Ascending</asp:ListItem>
                    <asp:ListItem Value="2">Decending</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="row" style="text-align: center; margin-left: 30px; display: inline-block;" >

                <asp:Button runat="server" Text="Sort" ID="Btn_Sort" OnClick="Btn_Sort_Click" Font-Size="Medium" style=" border-radius:5px; padding:1px 10px; margin-left:30px;" CssClass=" w3-hover-border-green w3-border-cyan"></asp:Button>
            </div>

            <div id="thumbb">

                <asp:DataList ID="DlPackages" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="row" style="background-color: aliceblue; padding:5px; border-radius:5px;">
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
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p class="description">
                                    <%# Eval("tourDescription") %>
                                </p>
                            </div>

                            <div class="col-md-2">
                                <p style="float: right; background-color: cornflowerblue; border-radius: 6px;">
                                    
                                    <div class="text-center" style="margin-top:20px; margin-left:35px;">
                                        <asp:Rating runat="server" ID="RatingDisplay" StarCssClass="blankstar" ReadOnly="true"
                                        WaitingStarCssClass="waitingstar" FilledStarCssClass="shiningstar"
                                        EmptyStarCssClass="blankstar" CurrentRating='<%# Convert.ToInt32(Eval("tourRating")) %>' MaxRating="5"  >
                                    </asp:Rating>
</div>
     <p style="font-size: 18px; margin-top: 50px; text-align: center;">Starting From</p>
                                <h4><strike>$<%# Eval("tourOriginalPrice") %></strike></h4>
                                <h2>$<%# Eval("tourDiscountPrice") %></h2>
                                <a id="purchase" href="Purchase.aspx?purchaseId=<%# Eval("tourpackageId") %>" style="border-style: hidden; border-radius: 10px; padding: 10px; font-size: 16px; background-color: lightskyblue;">Purchase</a>
                                <p style="margin-top: 20px;">Total Buyers: <%# Eval("tourPurchaseCount") %>  </p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStr %>"
                    SelectCommand="SELECT * FROM TourPackages"></asp:SqlDataSource>

            </div>
        </div>
    </div>
     

        
        <%--<div class="container">
            <div class="row" style="text-align:center; display:inline-block;"> 
                Sort by:<asp:DropDownList OnSelectedIndexChanged="DdlSort_SelectedIndexChanged" runat="server" AutoPostBack="True" ID="DdlSort">
                    <asp:ListItem>Recent</asp:ListItem>
                    <asp:ListItem Value="1">Price</asp:ListItem>
                    <asp:ListItem Value="5">Most Discounted</asp:ListItem>
                    <asp:ListItem Value="2">Ratings</asp:ListItem>
                    <asp:ListItem Value="3">Popularity</asp:ListItem>
                    <asp:ListItem Value="4">Duration</asp:ListItem>
                    
                </asp:DropDownList>
            </div>

            <asp:Panel ID="Validation" Visible="false" runat="server" CssClass="alert alert-dismissable alert-danger" Height="64px">
                <button type="button" class="close" data-dismiss="alert">
                    <span aria-hidden="true">&times;</span>
                </button>
                <asp:Label ID="Lbl_Msg" runat="server"></asp:Label>
            </asp:Panel>

            <div id="thumbb">


                <asp:DataList ID="DlPackages" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="row" style="background-color: aliceblue;">
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
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p class="description">
                                    <%# Eval("tourDescription") %>
                                </p>
                            </div>

                            <div class="col-md-2">
                                <p style="float: right;background-color: cornflowerblue; border-radius: 6px;">

                                    <div class="star-rating">
        <span style="color: yellow;" class="fa fa-star" data-rating="1"></span>
        <span style="color: yellow;" class="fa fa-star" data-rating="2"></span>
        <span style="color: yellow;" class="fa fa-star" data-rating="3"></span>
        <span style="color: yellow;" class="fa fa-star" data-rating="4"></span>
        <span class="fa fa-star-o" data-rating="5"></span>
        <input type="hidden" name="whatever1" class="rating-value" value="2.56">
      </div>
                                <p style="font-size: 18px; margin-top: 10px; text-align: center;">Starting From</p>
                                <h4><strike>$<%# Eval("tourOriginalPrice") %></strike></h4>
                                <h2>$<%# Eval("tourDiscountPrice") %></h2>
                                 <a id="purchase" href="Purchase.aspx?purchaseId=<%# Eval("tourpackageId") %>" style="border-style: hidden; border-radius:10px;padding: 10px; font-size: 16px; background-color:lightskyblue;">Purchase</a>
                                
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStr %>"
                    SelectCommand="SELECT * FROM TourPackages"></asp:SqlDataSource>


                <!-- Pagination -->
                <div class="w3-center w3-padding-32">
                    <div class="w3-bar">
                        <asp:Button runat="server" Text="1" class="w3-bar-item w3-button w3-hover-black"></asp:Button>
                        <asp:Button runat="server" Text="2" class="w3-bar-item w3-button w3-hover-black"></asp:Button>
                        <asp:Button runat="server" Text="3" class="w3-bar-item w3-button w3-hover-black"></asp:Button>
                        <asp:Button runat="server" Text="»" class="w3-bar-item w3-button w3-hover-black"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>



</asp:Content>
