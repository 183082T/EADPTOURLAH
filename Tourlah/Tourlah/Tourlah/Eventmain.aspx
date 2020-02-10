    <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eventmain.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <asp:GridView ID="EventGV" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="table table-bordered" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Eventid" />
            <asp:BoundField DataField="EventName" HeaderText="Name of Event" ReadOnly="True" />
            <asp:BoundField DataField="EventDescription" HeaderText="Description" ReadOnly="True" />
            <asp:BoundField DataField="EventDate" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Date" ReadOnly="True" />
            <asp:BoundField DataField="MainType" HeaderText="Main Type" ReadOnly="True" />
            <asp:BoundField DataField="SecondType" HeaderText="Second Type" ReadOnly="True" />
            <asp:BoundField DataField="Location" HeaderText="Location" ReadOnly="True" />
            <asp:CommandField ShowSelectButton="true"/>
        </Columns>
    </asp:GridView>
   
    </asp:Content>

