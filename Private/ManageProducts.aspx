<%@ Page Title="Townbush Admin | Manage Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageProducts.aspx.cs" Inherits="Townbush_Pharmacy_Website.Private.ManageProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    
    <br /><br /><br /><br /><br /><br /><br /><br /><br />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT [ProdName], [ProdDescription], [Form], [ProdPrice] FROM [Product]" ConnectionString="Data Source=146.230.177.46;Initial Catalog=G2Pmb2024;User ID=G2Pmb2024;Password=j0210j;TrustServerCertificate=True"></asp:SqlDataSource>

        <div id="prod_list">
            <h1>Private Products list <a href="\../Products" style="font-size: 13px; font-style: italic; color: hsl(14, 98%, 50%)">(Go back)</a></h1>
        
        <br />

            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" CellPadding="5" BorderStyle="Solid" BorderWidth="4px" BorderColor="#333333" AlternatingRowStyle-BackColor="WhiteSmoke" EditRowStyle-BorderStyle="Solid" EditRowStyle-BorderColor="#333333" Font-Italic="True" GridLines="Vertical" HeaderStyle-BackColor="WhiteSmoke" HeaderStyle-BorderWidth="4" AllowPaging="True" AllowSorting="True" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName"></asp:BoundField>
                <asp:BoundField DataField="ProdDescription" HeaderText="ProdDescription" SortExpression="ProdDescription"></asp:BoundField>
                <asp:BoundField DataField="Form" HeaderText="Form" SortExpression="Form"></asp:BoundField>
                <asp:BoundField DataField="ProdPrice" HeaderText="ProdPrice" SortExpression="ProdPrice"></asp:BoundField>
            </Columns>
        </asp:GridView>
        
    </div>

    <br /><br /><br /><br /><br /><br /><br /><br /><br />

</div>
</asp:Content>
