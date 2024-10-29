<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Townbush_Pharmacy_Website.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

        <h1 style="font-size: 78px;">Cart.</h1>
    <asp:GridView ID="GridView1" runat="server">
        <Columns>
            <asp:BoundField DataField="ProdID" HeaderText="Product ID" />
            <asp:BoundField DataField="ProdName" HeaderText="Product" />
            <asp:BoundField DataField="ProdPrice" HeaderText="Price" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" />
        </Columns>
    </asp:GridView>

</asp:Content>
