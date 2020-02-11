    <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eventmain.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <asp:GridView ID="EventGV" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="table table-bordered" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Eventid" >
            <HeaderStyle CssClass="h1" BackColor="#3333FF" ForeColor="White" />
            <ItemStyle BackColor="#ABC8FE" Font-Size="Small"  />
            </asp:BoundField>
            <asp:BoundField DataField="EventName" HeaderText="Name of Event" ReadOnly="True" >
            <HeaderStyle CssClass="h1" BackColor="#3333FF" ForeColor="White" />
                <ItemStyle BackColor="#ABC8FE" Font-Size="Small"  />
            </asp:BoundField>
            <asp:BoundField DataField="EventDescription" HeaderText="Description" ReadOnly="True" >
            <HeaderStyle CssClass="h1" BackColor="#3333FF" ForeColor="White" />
                <ItemStyle BackColor="#ABC8FE" Font-Size="Small"  />
            </asp:BoundField>
            <asp:BoundField DataField="EventDate" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Date" ReadOnly="True" >
                <HeaderStyle CssClass="h1" BackColor="#3333FF" ForeColor="White" />
                <ItemStyle BackColor="#ABC8FE" Font-Size="Small"  />
            </asp:BoundField>
            <asp:BoundField DataField="MainType" HeaderText="Main Type" ReadOnly="True" >
               <HeaderStyle CssClass="h1" BackColor="#3333FF" ForeColor="White" />
                <ItemStyle BackColor="#ABC8FE" Font-Size="Small"  />
            </asp:BoundField>
            <asp:BoundField DataField="SecondType" HeaderText="Second Type" ReadOnly="True" >
               <HeaderStyle CssClass="h1" BackColor="#3333FF" ForeColor="White" />
                <ItemStyle BackColor="#ABC8FE" Font-Size="Small"  />
            </asp:BoundField>
            <asp:BoundField DataField="Location" HeaderText="Location" ReadOnly="True" >
                <HeaderStyle CssClass="h1" BackColor="#3333FF" ForeColor="White" />
                <ItemStyle BackColor="#ABC8FE" Font-Size="Small"  />
            </asp:BoundField>
            <asp:CommandField ShowSelectButton="true" SelectText="More Info Here"/>
        </Columns>
    </asp:GridView>
   
    </asp:Content>

