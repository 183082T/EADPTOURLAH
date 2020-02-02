<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tourpackage.aspx.cs" Inherits="WebApplication2.tourpackage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css">
    <link href="css/tourpack.css" rel="stylesheet" />
    <div class="container-fluid" style="text-align: center; background-color: #EEE7E7">
        <h3>Singapore Tour Packages</h3>
        <div class="container">
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
    </div>




    <%--<div class="row">
                    <div class="col-md-4">
                        <div class="thumbnail">
                            <img style="" src="https://images.squarespace-cdn.com/content/v1/5c188d6945776e1e5ff52d77/1552197634366-BOSB19MJ5H1IWXRCT6Q5/ke17ZwdGBToddI8pDm48kNbtElRT21_JiTRyuwgy1vB7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0kMlYkjvFlctRdmAM11rxFQbDqQneBP5WJrgBA3-YG-FkoMahGbGTbFnRJQx6apT4g/sights-and-scenes-of-beautiful-singapore-hd-wallpaper-7-3840x2160.jpg"></>     
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h3 style="font-family: 'Times New Roman',serif"><asp:Label runat="server" ID="testing1" Text="3 Nights Cheapest Singapore Tour Package 26% off"></asp:Label></h3>
                        <img src="https://image.flaticon.com/icons/png/512/252/252025.png" style="font-size: 20px; width: 30px; height: 30px">&nbsp; Singapore City</>
                    <span style="margin-left: 120px;">
                        <img src="https://image.flaticon.com/icons/png/512/59/59252.png" style="font-size: 20px; width: 25px; height: 21px">&nbsp;&nbsp; 5 Days & 4 Nights </>
                    </span>
                        <p class="description">
                            <img style="height: 20px; width: 20px; margin-right: 15px;" src="https://image.flaticon.com/icons/svg/391/391175.svg" />Once in a Lifetime Experience
                        <br />
                            <img style="height: 20px; width: 20px; margin-right: 15px;" src="https://image.flaticon.com/icons/svg/391/391175.svg" />Money Safe Guarantee
                        <br />
                            <img style="height: 20px; width: 20px; margin-right: 15px;" src="https://image.flaticon.com/icons/svg/391/391175.svg" />Once in a Lifetime Experience
                        </p>
                    </div>

                    <div class="col-md-2">

                        <p style="font-size: 18px; margin-top: 10px; text-align: center;">Starting From</p>
                        <h4><strike>$2555</strike></h4>
                        <h2>$1999</h2>
                        per adult
                    <asp:Button runat="server" CssClass="btn btn-success" Text="Purchase" Height="39px" ID="Package1" OnClick="Package1_Click"></asp:Button>
                    </div>
                </div>--%>






</asp:Content>
