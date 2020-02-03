<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container">
        <asp:Panel ID="Validation" Visible="false" runat="server" CssClass="alert alert-dismissable alert-success" Height="64px">
            <button type="button" class="close" data-dismiss="alert">
                <span aria-hidden="true">&times;</span>
            </button>
            <span style="font-size:18px;" class="glyphicon glyphicon-ok"></span>
                <asp:Label ID="Lbl_Msg" runat="server" style="font-size:18px; margin-left:10px;"></asp:Label>
            
            
        </asp:Panel>
        <asp:Label runat="server" ID="LblWelcome"></asp:Label>
    <h2><%: Title %>.</h2>

    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
</div>

    <!-- Team Container -->
    <div class="w3-container w3-padding-64 w3-center" id="team">
        <h2>OUR TEAM</h2>
        <p>Meet the team - our office rats:</p>

        <div class="w3-row">
            <br>

            <div class="w3-col" style="width:20%">
                <img src="https://www.w3schools.com/howto/img_avatar.png" height="60" alt="Avatar" class="w3-circle w3-hover-opacity">
                <h3>Kahmeng</h3>
                <p>Web Designer</p>
            </div>

            <div class="w3-col" style="width:20%">
                <img src="https://www.w3schools.com/howto/img_avatar.png" height="60" class="w3-circle w3-hover-opacity">
                <h3>Xavier </h3>
                <p>Support</p>
            </div>

            <div class="w3-col" style="width:20%">
                <img src="https://www.w3schools.com/howto/img_avatar.png" height="60"  class="w3-circle w3-hover-opacity">
                <h3>Afiq</h3>
                <p>Boss man</p>
            </div>

            <div class="w3-col" style="width:20%">
                <img src="https://www.w3schools.com/howto/img_avatar.png" height="60" class="w3-circle w3-hover-opacity">
                <h3>Yifoong</h3>
                <p>Fixer</p>
            </div>

            <div class="w3-col" style="width:20%">
                <img src="https://www.w3schools.com/howto/img_avatar.png" height="60" class="w3-circle w3-hover-opacity">
                <h3>Nicholas</h3>
                <p>Fixer</p>
            </div>

        </div>
    </div>
</asp:Content>
