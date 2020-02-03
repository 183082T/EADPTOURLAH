<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="adminUpdate.aspx.cs" Inherits="WebApplication2.adminUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css">
    <link href="css/datee.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gelasio:500i&display=swap" rel="stylesheet">
    <script src="Scripts/datee.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


    <div class="container-fluid" style="text-align: center;background-color: #EEE7E7">
        <h3 style="margin-bottom:20px; ">Singapore Tour Packages</h3>
         
        <div class="container">
<asp:Panel ID="Validation" Visible="false" runat="server" CssClass="alert alert-dismissable alert-info" Height="64px">
        <button type="button" class="close" data-dismiss="alert">
            <span aria-hidden="true">&times;</span>
        </button>
        <asp:Label ID="Lbl_Msg" runat="server"></asp:Label>
    <br />
    <asp:Button runat="server" Visible="false" CssClass="btn-success" style="border-radius:10px; margin-left: 0;" Text="Click here to view Tour Packages" ID="GotoTourpackage" OnClick="GotoTourpackage_Click" Width="250px"></asp:Button>
    </asp:Panel>

                <div class="row">
                    <div class="col-md-4" style="left: 0px; top: 0px; height: 290px">
                        <div class="thumbnail">
                            <asp:Image ID="ImageDisplay" runat="server" style="width:350px; height:157.05px;" />     
                        </div>
                        Enter Image Url:<asp:TextBox runat="server" required="required" ID="updateImageLink" style="background-color:lavender;" Height="30px" Width="350px"></asp:TextBox>
                            <asp:Button ID="btnUpload" Text="Upload" runat="server" CssClass="btn-info" OnClick="UploadFile" formnovalidate Height="40px" style="margin-left: 0" Width="325px" />
                    </div>
                    <div class="col-md-6">
                        <h3 style="font-family: 'Times New Roman',serif"> <asp:TextBox runat="server" required="required" ID="updateTourName"></asp:TextBox></h3>
                        <img src="https://image.flaticon.com/icons/png/512/252/252025.png" style="font-size: 20px; width: 30px; height: 30px"><asp:TextBox runat="server" required="required" ID="updateLocation" Width="143px"></asp:TextBox> 
        
                        <img src="https://image.flaticon.com/icons/png/512/59/59252.png" style="font-size: 20px; width: 25px; height: 21px"><asp:TextBox runat="server" required="required" ID="updateDuration" Width="350px"></asp:TextBox> 
                    
                        <p class="description" style="padding-top:10px;">
                            <asp:TextBox runat="server" TextMode="MultiLine" Style="resize:none; " required="required" ID="updateDescription" Height="130px" Width="520px"></asp:TextBox>
                        </p>
                    </div>

                    <div class="col-md-2">

                        <p style="font-size: 18px; margin-top: 10px; text-align: center;">Starting From</p>
                        <h4><strike>$<asp:TextBox runat="server" required="required" ID="updateOriginalPrice"></asp:TextBox></strike></h4>
                        <h2>$<asp:TextBox runat="server" required="required" ID="updateDiscountPrice"></asp:TextBox></h2>
                        per adult
                        
                    </div>
                </div>
            
  
               <div class="col-md-12" style="margin-top:40px; margin-bottom:100px;">
                <asp:Button runat="server"  Text="Update" CssClass="btn-warning" style="border-radius:10px; float:right;" Height="50px" ID="BtnUpdate" OnClick="BtnUpdate_Click" Width="300px" ></asp:Button>
                    
                   <a href="adminViewTourPackage.aspx" class="btn btn-danger btn-lg" style="float:left;">
          <span class="glyphicon glyphicon-circle-arrow-left" style="margin-right:10px; float:left;"></span>Back
        </a>
                </div>

            </div>

        </div>


</asp:Content>
