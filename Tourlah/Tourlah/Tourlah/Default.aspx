<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
         .button {
         background-color: #1c87c9;
         border: none;
         color: white;
         padding: 10px 17px;
         text-align: center;
         text-decoration: none;
         display: inline-block;
         font-size: 20px;
         margin: 4px 2px;
         cursor: pointer;
         }
      </style>
    <section class="Features">
        <div class="container">
            <div class="mbr-section-title" style="text-align:center">
                <h2>Features</h2>
                <p>In Tourlah, We have many features that offer you much help in going our Singapore!</p>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <img src="Images/Events.jpg" alt="" style="width: 450px; height: 300px;" />
                </div>
                <div class="col-md-7 pt-4">
                    <h3>Events</h3>
                    <p class="font-italic">
                        Get a view of what events are available in Singapore! And maybe participate in it
                    </p>
                    <a href="Eventmain.aspx" class="button">Click Here</a>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-5 order-1 order-md-2">
                    <img src="Images/Food.jpg" alt="" style="width: 450px; height: 300px;" />
                </div>
                <div class="col-md-7 order-2 order-md-1">
                    <h3>Food</h3>
                    <p class="font-italic">
                        Since there is a wide range of culture in Singapore, there is also a wide range of food choices!
                    </p>
                    <p>
                        You can get anything from Chinese to Indian to even your home food!
                    </p>
                    <a href="FoodMain.aspx" class="button">Click Here</a>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-5">
                    <img src="Images/Tour.jpg" alt="" style="width: 450px; height: 300px;" />
                </div>
                <div class="col-md-7 pt-4">
                    <h3>Tour</h3>
                    <p class="font-italic">
                        At Tourlah, you are able to book any tour package available!
                    </p>
                    <p>
                        You can got for travel choices such as going for a culture trip or just a normal beach getaway!
                    </p>
                    <a href="tourpackage.aspx" class="button">Click Here</a>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-5 order-1 order-md-2">
                    <img src="Images/Shop.jpg" alt="" style="width: 450px; height: 300px;" />
                </div>
                <div class="col-md-7 order-2 order-md-1">
                    <h3>Shop</h3>
                    <p class="font-italic">
                        You are able to buy anything ranging from clothing to any local products here!
                    </p>
                    <a href="Shop.aspx" class="button">Click Here</a>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-5">
                    <img src="Images/Rewards.png" alt="" style="width: 450px; height: 300px;"/>
                </div>
                <div class="col-md-7">
                    <h3>Rewards</h3>
                    <p class="font-italic">
                        Not only do you get what you pay, THERE ARE ALSO POINTS WHICH YOU CAN USE!
                    </p>
                    <p>
                        Be it Cash, there are also vouchers and gifts that you can claim!
                    </p>
                    <a href="RewardsTest.aspx" class="button">Click Here</a>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-5 order-1 order-md-2">
                </div>
                <div class="col-md-7 order-2 order-md-1">
                    <h3>Travel Guide</h3>
                    <p class="font-italic">
                        Need help? Or unfamiliar with places?
                    </p>
                    <p>
                        Head to Traveller Essentials to seek help!
                    </p>
                    <a href="TEssential.aspx" class="button">Click Here</a>
                </div>
            </div>
        </div>
    </section>
 
</asp:Content>
