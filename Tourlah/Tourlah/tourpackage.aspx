<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tourpackage.aspx.cs" Inherits="WebApplication2.tourpackage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css">
    <link href="css/datee.css" rel="stylesheet" />
    <link href="css/Kahmeng/datee.css" rel="stylesheet" />
    <link href="css/Kahmeng/tourpack.css" rel="stylesheet" />
    <div id="tourhead" style="text-align: center">
        <h2>Singapore Tour Package Available</h2>
        <p>Top Rated Packages</p>
    </div>


    <div id="search">
        <div class="page-wrapper bg-color-1 p-t-395 p-b-120">
            <div class="wrapper wrapper--w1070">
                <div class="card card-7">
                    <div class="card-body">
                        <form class="form" method="POST" action="#">
                            <div class="input-group input--large">
                                <label class="label">going to</label>
                                <br>
                                <input class="input--style-2" placeholder="Destination, hotel name" name="going">
                            </div>
                            <div class="input-group input--medium">
                                <label class="label">Date-Form</label>
                                <br>
                                <input class="input--style-2" type="text" name="checkin" placeholder="mm/dd/yyyy" id="input-start">
                            </div>
                            <div class="input-group input--medium">
                                <label class="label">Date-To</label>
                                <br>
                                <input class="input--style-2" type="text" name="checkout" placeholder="mm/dd/yyyy" id="input-end">
                            </div>
                            <div class="input-group input--medium">
                                <label class="label">People</label>
                                <br>
                                <div class="input-group-icon js-number-input">
                                    <div class="icon-con">
                                        <span class="plus">+</span>
                                        <span class="minus">-</span>
                                    </div>
                                    <input class="input--style-2 quantity" type="text" name="guest" value="2 people">
                                </div>
                            </div>
                            <button class="btn-submit" type="submit">search</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-1 col-md-1">Sort By</div>

        <div class="col-sm-1 col-md-1">
            <button type="button" class="btn btn-light">Price</button>
        </div>

        <div class="col-sm-1 col-md-1">
            <div class="dropdown">
            <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tour Type <span class="caret"></span></button>
            <ul class="dropdown-menu">
                <li><a href="#">Standard</a></li>
                <li><a href="#">Premium</a></li>
            </ul>
            </div>
        </div>

        <div class="col-sm-1 col-md-1">
            <div class="dropdown">
            <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Popularity <span class="caret"></span></button>
            <ul class="dropdown-menu">
                <li><a href="#">Top Rated</a></li>
                <li><a href="#">Most Popular</a></li>
                <li><a href="#">Best Places</a></li>
            </ul>
            </div>
        </div>


    </div>

    <div id="thumbb">
      
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <asp:Image runat="server" src="https://images.squarespace-cdn.com/content/v1/5c188d6945776e1e5ff52d77/1552197634366-BOSB19MJ5H1IWXRCT6Q5/ke17ZwdGBToddI8pDm48kNbtElRT21_JiTRyuwgy1vB7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0kMlYkjvFlctRdmAM11rxFQbDqQneBP5WJrgBA3-YG-FkoMahGbGTbFnRJQx6apT4g/sights-and-scenes-of-beautiful-singapore-hd-wallpaper-7-3840x2160.jpg"></asp:Image>
                        <div class="caption">
                            <div class="font-effect-shadow-multiple">3 Nights Cheapest Singapore Tour Package 26% off</div>
                            <p>
                                <a href="#" class="btn btn-primary" role="button">View Details</a>
                                <a href="#" class="btn btn-success" role="button">Button</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-6">
                    <h3>Trip Location: Singapore Marina Bay Sands</h3>
                    <p class="description">Pack your bags to get ready for this short yet enthralling escapade to replenish your weary soul. Take our pocket-friendly Singapore tour package giving you the tour of the major tourist destinations in just 3 days. Discover the best of Singapore attractions starting off with the first nocturnal zoo in the world, watch the beasts in their natural habitat, bask in the aura of the prolific city at the Gardens by the bay after which you</p>
                </div>
                <div class="col-sm-6 col-md-2">
                    5D 2N
                </div>

            </div>
        

        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <asp:Image runat="server" Height="200px" Width="320px" src="https://i.ytimg.com/vi/DRwCVv-ELlA/hqdefault.jpg"></asp:Image>
                    <div class="caption">
                        <div class="font-effect-shadow-multiple">Tour package 2</div>
                        <p>...</p>
                        <p>
                            <a href="#" class="btn btn-primary" role="button">View Details</a>
                            <a href="#" class="btn btn-success" role="button">Button</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-6">
                <h3>Trip Location: Singapore Marina Bay Sands</h3>
                <p class="description">Pack your bags to get ready for this short yet enthralling escapade to replenish your weary soul. Take our pocket-friendly Singapore tour package giving you the tour of the major tourist destinations in just 3 days. Discover the best of Singapore attractions starting off with the first nocturnal zoo in the world, watch the beasts in their natural habitat, bask in the aura of the prolific city at the Gardens by the bay after which you</p>
            </div>
            <div class="col-sm-6 col-md-2">
                Price
            </div>
        </div>

        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <asp:Image runat="server" Height="200px" Width="320px" src="https://www.thenewsdoor.com/wp-content/uploads/2017/11/Top-5-Places-For-Romantic-Breakfast-In-Singapore.jpg"></asp:Image>
                    <div class="caption">
                        <div class="font-effect-shadow-multiple">Tour package 3</div>
                        <p>...</p>
                        <p>
                            <a href="#" class="btn btn-primary" role="button">View Details</a>
                            <a href="#" class="btn btn-success" role="button">Button</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-6">
                <h3>Trip Location: Singapore Marina Bay Sands</h3>
                <p class="description">Pack your bags to get ready for this short yet enthralling escapade to replenish your weary soul. Take our pocket-friendly Singapore tour package giving you the tour of the major tourist destinations in just 3 days. Discover the best of Singapore attractions starting off with the first nocturnal zoo in the world, watch the beasts in their natural habitat, bask in the aura of the prolific city at the Gardens by the bay after which you</p>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <asp:Image runat="server" Height="200px" src="https://sentosa.amarahotels.com/uploads/9/8/5/6/98568134/1600x900-thingstodo2_orig.jpg"></asp:Image>
                    <div class="caption">
                        <h3>Tour package 4</h3>
                        <p>...</p>
                        <p>
                            <a href="#" class="btn btn-primary" role="button">View Details</a>
                            <a href="#" class="btn btn-success" role="button">Button</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-6">
                <h3>Trip Location: Singapore Marina Bay Sands</h3>
                <p class="description">Pack your bags to get ready for this short yet enthralling escapade to replenish your weary soul. Take our pocket-friendly Singapore tour package giving you the tour of the major tourist destinations in just 3 days. Discover the best of Singapore attractions starting off with the first nocturnal zoo in the world, watch the beasts in their natural habitat, bask in the aura of the prolific city at the Gardens by the bay after which you</p>
            </div>
            <div class="col-sm-6 col-md-2">
                Price
            </div>

        </div>


    </div>


    <!-- Pagination -->
    <div class="w3-center w3-padding-32">
        <div class="w3-bar">
            <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
            <a href="#" class="w3-bar-item w3-black w3-button">1</a>
            <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
            <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
            <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
            <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
        </div>
    </div>
    <script>


        (function ($) {
            'use strict';
            /*==================================================================
                [ Daterangepicker ]*/


            try {
                $('#input-start').daterangepicker({
                    ranges: true,
                    autoApply: true,
                    applyButtonClasses: false,
                    autoUpdateInput: false
                }, function (start, end) {
                    $('#input-start').val(start.format('MM/DD/YYYY'));

                });

                $('#input-end').daterangepicker({
                    ranges: true,
                    autoApply: true,
                    applyButtonClasses: false,
                    autoUpdateInput: false
                }, function (start, end) {

                    $('#input-end').val(end.format('MM/DD/YYYY'));
                });


            } catch (er) { console.log(er); }
            /*==================================================================
                [ Input Number ]*/

            try {

                var inputCon = $('.js-number-input');

                inputCon.each(function () {
                    var that = $(this);

                    var btnPlus = that.find('.plus');
                    var btnMinus = that.find('.minus');
                    var qtyInput = that.find('.quantity');


                    btnPlus.on('click', function () {
                        var oldValue = parseInt(qtyInput.val());
                        var newVal = oldValue + 1;
                        qtyInput.val(refineString(newVal));
                    });

                    btnMinus.on('click', function () {
                        var min = 0;

                        var oldValue = parseInt(qtyInput.val());
                        if (oldValue <= min) {
                            var newVal = oldValue;
                        } else {
                            var newVal = oldValue - 1;
                        }
                        qtyInput.val(refineString(newVal));
                    });
                });

                function refineString(s) {
                    if (parseInt(s) <= 1) return parseInt(s) + " People";
                    else return parseInt(s) + " People";
                }

            } catch (e) {
                console.log(e);
            }

        })(jQuery);


    </script>


</asp:Content>
