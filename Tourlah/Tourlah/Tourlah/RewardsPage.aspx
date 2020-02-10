<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RewardsPage.aspx.cs" Inherits="WebApplication2.RewardsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/styleRewards1.css" rel="stylesheet" />
    <link href="css/styleRewards2.css" rel="stylesheet" />
    <link href="css/styleRewards3.css" rel="stylesheet" />
    <link href="css/styleRewards4.css" rel="stylesheet" />
    <section class="tabs3 cid-rBgtsI6g3n" id="tabs3-1c">

        <div class="container-fluid">
            <div class="row tabcont">
                <ul class="nav nav-tabs pt-3 mt-5" role="tablist">
                    <li class="nav-item mbr-fonts-style">
                        <a class="nav-link show display-7 active" role="tab" data-toggle="tab" href="https://www.shuga.io/rewards.html#tabs3-1c_tab0" aria-selected="true">Cash
                        </a>
                    </li>
                    <li class="nav-item mbr-fonts-style">
                        <a class="nav-link  show display-7" role="tab" data-toggle="tab" href="https://www.shuga.io/rewards.html#tabs3-1c_tab1" aria-selected="true">Vouchers
                        </a>
                    </li>
                    <li class="nav-item mbr-fonts-style">
                        <a class="nav-link show display-7" role="tab" data-toggle="tab" href="https://www.shuga.io/rewards.html#tabs3-1c_tab2" aria-selected="true">Prizes
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="container">
            <div class="row px-1">
                <div class="tab-content">
                    <div id="tabs3-1c_tab0" class="tab-pane in mbr-table active" role="tabpanel">
                        <div class="row tab-content-row">
                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/citibank.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">$10 Cash (Citibank)</h4>
                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$10</span><br>
                                    <img src="Images/ic-shuga.svg">2,000<br>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#cash1" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="cash1" tabindex="-1" role="dialog" aria-labelledby="cash1Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="cash1Label">$10 Cash (Citibank)</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabciti1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabciti2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabciti1">
                                                            <p >$10 Citibank Cash will be wired directly to your provided bank account.</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabciti2">
                                                            <p>Redeemed amount will be wired directly to your provided bank account.</p>
                                                            <p>You must provide a valid email upon requesting cashback.</p>
                                                            <p>You must verify your email before reward can be processed.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/dbs.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">$10 Cash (DBS)</h4>
                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$10</span><br>
                                    <img src="Images/ic-shuga.svg">2,000<br>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#cash2" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="cash2" tabindex="-1" role="dialog" aria-labelledby="cash2Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="cash2Label">$10 Cash (DBS)</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabdbs1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabdbs2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabdbs1">
                                                            <p >$10 DBS Cash will be wired directly to your provided bank account.</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabdbs2">
                                                            <p>Redeemed amount will be wired directly to your provided bank account.</p>
                                                            <p>You must provide a valid email upon requesting cashback.</p>
                                                            <p>You must verify your email before reward can be processed.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/hsbc.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">$10 Cash (HSBC)</h4>
                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$10</span><br>
                                    <img src="Images/ic-shuga.svg">2,000<br>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#cash3" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="cash3" tabindex="-1" role="dialog" aria-labelledby="cash3Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="cash3Label">$10 Cash (HSBC)</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabhsbc1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabhsbc2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabhsbc1">
                                                            <p >$10 HSBC Cash will be wired directly to your provided bank account.</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabhsbc2">
                                                            <p>Redeemed amount will be wired directly to your provided bank account.</p>
                                                            <p>You must provide a valid email upon requesting cashback.</p>
                                                            <p>You must verify your email before reward can be processed.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/maybank.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">$10 Cash (Maybank)</h4>
                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$10</span><br>
                                    <img src="Images/ic-shuga.svg">2,000<br>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#cash4" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="cash4" tabindex="-1" role="dialog" aria-labelledby="cash4Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="cash4Label">$10 Cash (Maybank)</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabmaybank1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabmaybank2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabmaybank1">
                                                            <p >$10 Maybank Cash will be wired directly to your provided bank account.</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabmaybank2">
                                                            <p>Redeemed amount will be wired directly to your provided bank account.</p>
                                                            <p>You must provide a valid email upon requesting cashback.</p>
                                                            <p>You must verify your email before reward can be processed.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/ocbc.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">$10 Cash (OCBC)</h4>
                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$10</span><br>
                                    <img src="Images/ic-shuga.svg">2,000<br>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#cash5" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="cash5" tabindex="-1" role="dialog" aria-labelledby="cash5Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="cash5Label">$10 Cash (OCBC)</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabocbc1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabocbc2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabocbc1">
                                                            <p >$10 OCBC Cash will be wired directly to your provided bank account.</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabocbc2">
                                                            <p>Redeemed amount will be wired directly to your provided bank account.</p>
                                                            <p>You must provide a valid email upon requesting cashback.</p>
                                                            <p>You must verify your email before reward can be processed.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/uob.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">$10 Cash (UOB)</h4>
                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$10</span><br>
                                    <img src="Images/ic-shuga.svg">2,000<br>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#cash6" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="cash6" tabindex="-1" role="dialog" aria-labelledby="cash6Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="cash6Label">$10 Cash (UOB)</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabuob1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabuob2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabuob1">
                                                            <p >$10 UOB Cash will be wired directly to your provided bank account.</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabuob2">
                                                            <p>Redeemed amount will be wired directly to your provided bank account.</p>
                                                            <p>You must provide a valid email upon requesting cashback.</p>
                                                            <p>You must verify your email before reward can be processed.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/posb.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">$10 Cash (POSB)</h4>
                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$10</span><br>
                                    <img src="Images/ic-shuga.svg">2,000<br>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#cash7" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="cash7" tabindex="-1" role="dialog" aria-labelledby="cash7Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="cash7Label">$10 Cash (POSB)</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabposb1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabposb2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabposb1">
                                                            <p >$10 POSB Cash will be wired directly to your provided bank account.</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabposb2">
                                                            <p>Redeemed amount will be wired directly to your provided bank account.</p>
                                                            <p>You must provide a valid email upon requesting cashback.</p>
                                                            <p>You must verify your email before reward can be processed.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 col-lg-3">
                            </div>
                        </div>
                    </div>
                    <div id="tabs3-1c_tab1" class="tab-pane  mbr-table" role="tabpanel">
                        <div class="row tab-content-row">
                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/capitaland.png" style="padding: 20px;">
                                </div>
                                <br>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">CapitaVoucher</h4>
                                <p class="mbr-section-text align-center mbr-fonts-style display-7">
                                    <span style="color: #bd64b1">$10</span>
                                    <img src="Images/ic-shuga.svg">2,500<br>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#voucher1" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="voucher1" tabindex="-1" role="dialog" aria-labelledby="voucher1Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="voucher1Label">CapitaVoucher</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabcapita1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabcapita2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabcapita1">
                                                            <p>$10 CapitaVoucher will be mailed to you within 21 working days from redemption</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabcapita2">
                                                            <p>This voucher:</p>
                                                            <p>--expires 12 monhths from month of issue</p>
                                                            <p>--is only valid within Singapore and its value is in SGD</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/dairyfarm.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">Dairy Farm Voucher</h4>
                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$10</span>
                                    <img src="Images/ic-shuga.svg">2,500<br>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#voucher2" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="voucher2" tabindex="-1" role="dialog" aria-labelledby="voucher2Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="voucher2Label">Dairy Farm Voucher</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabdairy1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabdairy2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabdairy1">
                                                            <p>$10 Dairy Farm Voucher will be mailed to you within 21 working days from redemption</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabdairy2">
                                                            <p>This voucher:</p>
                                                            <p>--can be used at Giant, Cold Storage and 7-11 outlets</p>
                                                            <p>--expires 12 months from month of issue</p>
                                                            <p>--is only valid within Singapore and its value is in SGD</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/ntuc.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">NTUC Fairprice Voucher</h4>
                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$10</span>
                                    <img src="Images/ic-shuga.svg">2,500<br />
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#voucher3" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="voucher3" tabindex="-1" role="dialog" aria-labelledby="voucher3Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="voucher3Label">NTUC Fairprice Voucher</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabntuc1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabntuc2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabntuc1">
                                                            <p>$10 NTUC Fairprice Voucher will be mailed to you within 21 working days from redemption</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabntuc2">
                                                            <p>This voucher:</p>
                                                            <p>--expires 12 monhths from month of issue</p>
                                                            <p>--is only valid within Singapore and its value is in SGD</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/shengsiong.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">Sheng Siong Voucher</h4>
                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$10</span>
                                    <img src="Images/ic-shuga.svg">2,500<br />
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#voucher4" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="voucher4" tabindex="-1" role="dialog" aria-labelledby="voucher4Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="voucher4Label">Sheng Siong Voucher</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabshengsiong1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabshengsiong2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabshengsiong1">
                                                            <p>$10 Sheng Siong Voucher will be mailed to you within 21 working days from redemption</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabshengsiong2">
                                                            <p>This voucher:</p>
                                                            <p>--expires 12 monhths from month of issue</p>
                                                            <p>--is only valid within Singapore and its value is in SGD</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/starbucks.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">Starbucks Gift Card</h4>
                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$10</span>
                                    <img src="Images/ic-shuga.svg">2,500<br />
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#voucher5" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="voucher5" tabindex="-1" role="dialog" aria-labelledby="voucher5Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="voucher5Label">Starbucks Gift Card</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabstarbucks1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabstarbucks2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabstarbucks1">
                                                            <p>$10 Starbucks Voucher will be mailed to you within 21 working days from redemption</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabstarbucks2">
                                                            <p>This voucher:</p>
                                                            <p>--All Good</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/sephora.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">Sephora Gift Card (SG)</h4>
                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$10</span>
                                    <img src="Images/ic-shuga.svg">4,500<br />
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#voucher6" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="voucher6" tabindex="-1" role="dialog" aria-labelledby="voucher6Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="voucher6Label">Sephora Gift Card (SG)</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabsephora1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabsephora2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabsephora1">
                                                            <p>$10 Sephora Voucher will be mailed to you within 21 working days from redemption</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabsephora2">
                                                            <p>This voucher:</p>
                                                            <p>--expires 12 monhths from month of issue</p>
                                                            <p>--is only valid within Singapore and its value is in SGD</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/takashimaya.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">Takashimaya Gift Voucher (SG)</h4>

                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$10</span>
                                    <img src="Images/ic-shuga.svg">10,500<br />
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#voucher7" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="voucher7" tabindex="-1" role="dialog" aria-labelledby="voucher7Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="voucher7Label">Takashimaya Gift Voucher (SG)</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabtaka1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabtaka2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabtaka1">
                                                            <p>$10 Takashimaya Voucher will be mailed to you within 21 working days from redemption</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabtaka2">
                                                            <p>This voucher:</p>
                                                            <p>--expires 12 monhths from month of issue</p>
                                                            <p>--is only valid within Singapore and its value is in SGD</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/gv.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">2 X Gold Class Gift Vouchers</h4>

                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$78</span>
                                    <img src="Images/ic-shuga.svg">13,600<br />
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#voucher8" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="voucher8" tabindex="-1" role="dialog" aria-labelledby="voucher8Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="voucher8Label">2 X Gold Class (All Days) Gift Vouchers</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabgv1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabgv2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabgv1">
                                                            <p>The perfect luxury gift, valid for 1 year for any movie at any Gold Class Cinema.</p>
                                                            <p>1 pair of Gold Class GV Movie Tickets will be mailed to you within 21 working days from redemption.</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabgv2">
                                                            <p>This voucher:</p>
                                                            <p>--expires 12 monhths from month of issue</p>
                                                            <p>--is only valid within Singapore and its value is in SGD</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="tabs3-1c_tab2" class="tab-pane  mbr-table" role="tabpanel">
                        <div class="row tab-content-row">
                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/goldbar.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">1g Gold Bar</h4>

                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$99</span>
                                    <img src="Images/ic-shuga.svg">14,000<br />
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#prize1" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="prize1" tabindex="-1" role="dialog" aria-labelledby="prize1Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="prize1Label">1g Gold Bar</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabgold1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabgold2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabgold1">
                                                            <p>Fine Gold Bar</p>
                                                            <p>Gold Bar will be mailed to you within 21 working days from redemption</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabgold2">
                                                            <p>Product Detail</p>
                                                            <p>You must provide a valid email upon requesting cashback.</p>
                                                            <p>You must verify your email before reward can be processed.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/ankerpowerbank.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">Anker PowerCore II 10000mAh With Upgraded PowerIQ 2.0</h4>

                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$89</span>
                                    <img src="Images/ic-shuga.svg">10,680<br />
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#prize2" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="prize2" tabindex="-1" role="dialog" aria-labelledby="prize2Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="prize2Label">Anker PowerCore II 10000mAh With Upgraded PowerIQ 2.0</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabpowerbank1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabpowerbank2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabpowerbank1">
                                                            <p >$10 Citibank Cash will be wired directly to your provided bank account.</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabpowerbank2">
                                                            <p>Redeemed amount will be wired directly to your provided bank account.</p>
                                                            <p>You must provide a valid email upon requesting cashback.</p>
                                                            <p>You must verify your email before reward can be processed.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/airpods.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">Apple AirPods</h4>

                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$238</span>
                                    <img src="Images/ic-shuga.svg">45,220<br />
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#prize3" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="prize3" tabindex="-1" role="dialog" aria-labelledby="prize3Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="prize3Label">Apple AirPods</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabairpods1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabairpods2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabairpods1">
                                                            <p >$10 Citibank Cash will be wired directly to your provided bank account.</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabairpods2">
                                                            <p>Redeemed amount will be wired directly to your provided bank account.</p>
                                                            <p>You must provide a valid email upon requesting cashback.</p>
                                                            <p>You must verify your email before reward can be processed.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/ipad.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">Apple iPad Mini 128GB</h4>

                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$598</span>
                                    <img src="Images/ic-shuga.svg">113,620<br />
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#prize4" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="prize4" tabindex="-1" role="dialog" aria-labelledby="prize4Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="prize4Label">Apple iPad Mini 128GB</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabipad1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabipad2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabipad1">
                                                            <p >$10 Citibank Cash will be wired directly to your provided bank account.</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabipad2">
                                                            <p>Redeemed amount will be wired directly to your provided bank account.</p>
                                                            <p>You must provide a valid email upon requesting cashback.</p>
                                                            <p>You must verify your email before reward can be processed.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/ipadpro.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">Apple iPad Pro 10.5" 64GB Wifi + Cellular</h4>

                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$1168</span>
                                    <img src="Images/ic-shuga.svg">210,240<br />
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#prize5" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="prize5" tabindex="-1" role="dialog" aria-labelledby="prize5Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="prize5Label">Apple iPad Pro 10.5" 64GB Wifi + Cellular</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabipadpro1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabipadpro2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabipadpro1">
                                                            <p >$10 Citibank Cash will be wired directly to your provided bank account.</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabipadpro2">
                                                            <p>Redeemed amount will be wired directly to your provided bank account.</p>
                                                            <p>You must provide a valid email upon requesting cashback.</p>
                                                            <p>You must verify your email before reward can be processed.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/iphone.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">Apple iPhone X 64GB LTE</h4>

                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$1648</span>
                                    <img src="Images/ic-shuga.svg">296,640<br />
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#prize6" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="prize6" tabindex="-1" role="dialog" aria-labelledby="prize6Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="prize6Label">Apple iPhone X 64GB LTE</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabx1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabx2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabx1">
                                                            <p >$10 Citibank Cash will be wired directly to your provided bank account.</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabx2">
                                                            <p>Redeemed amount will be wired directly to your provided bank account.</p>
                                                            <p>You must provide a valid email upon requesting cashback.</p>
                                                            <p>You must verify your email before reward can be processed.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/macbook.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">Apple 12" Macbook 1.2GHz 256GB</h4>

                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$1898</span>
                                    <img src="Images/ic-shuga.svg">334,048<br />
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#prize7" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="prize7" tabindex="-1" role="dialog" aria-labelledby="prize7Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="prize7Label">Apple 12" Macbook 1.2GHz 256GB</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabmacbook1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabmacbook2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabmacbook1">
                                                            <p >$10 Citibank Cash will be wired directly to your provided bank account.</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabmacbook2">
                                                            <p>Redeemed amount will be wired directly to your provided bank account.</p>
                                                            <p>You must provide a valid email upon requesting cashback.</p>
                                                            <p>You must verify your email before reward can be processed.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6 col-lg-3">
                                <div class="card-img ">
                                    <img src="Images/iwatch.png" style="margin: 10px; padding: 20px;">
                                </div>
                                <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">Apple Watch Hermès</h4>

                                <p class="mbr-section-text align-center mbr-fonts-style display-7"><span style="color: #bd64b1">$2059</span>
                                    <img src="Images/ic-shuga.svg">370,620<br />
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#prize8" style="border-radius: 35px; margin-top: 15px">Details</button>
                                </p>
                                <div class="modal fade" id="prize8" tabindex="-1" role="dialog" aria-labelledby="prize8Label" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title mbr-element-title  align-center mbr-fonts-style pb-2 display-5" id="prize8Label">Apple Watch Hermès</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">×</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="tabbable">
                                                    <ul class="nav nav-tabs">
                                                        <li class="active"><a href="#tabwatch1" data-toggle="tab">Description</a></li>
                                                        <li><a href="#tabwatch2" data-toggle="tab">Specifications</a></li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane active" id="tabwatch1">
                                                            <p >$10 Citibank Cash will be wired directly to your provided bank account.</p>
                                                            <br />
                                                            <button type="button" class="btn btn-primary" style="border-radius: 35px; margin-top: 15px;">Redeem</button>
                                                        </div>
                                                        <div class="tab-pane" id="tabwatch2">
                                                            <p>Redeemed amount will be wired directly to your provided bank account.</p>
                                                            <p>You must provide a valid email upon requesting cashback.</p>
                                                            <p>You must verify your email before reward can be processed.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
