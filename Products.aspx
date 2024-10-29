<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Townbush_Pharmacy_Website.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        
        <br /><br /><br /><br /><br /><br /><br /><br /><br />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE (([isPrescriptionMed] = @isPrescriptionMed) AND ([isPrescriptionMed] = @isPrescriptionMed2))">
            <SelectParameters>
                <asp:Parameter DefaultValue="FALSE" Name="isPrescriptionMed" Type="Boolean" />
                <asp:Parameter DefaultValue="FALSE" Name="isPrescriptionMed2" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>

        <div id="prod_list">
            <h1>Products list</h1>
            
            <br />

            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" CellPadding="5" BorderStyle="Solid" BorderWidth="4px" BorderColor="#333333" AlternatingRowStyle-BackColor="WhiteSmoke" EditRowStyle-BorderStyle="Solid" EditRowStyle-BorderColor="#333333" Font-Italic="True" GridLines="Vertical" HeaderStyle-BackColor="WhiteSmoke" HeaderStyle-BorderWidth="4" DataKeyNames="ProdID">
<AlternatingRowStyle BackColor="WhiteSmoke"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField DataField="ProdID" HeaderText="Product ID" InsertVisible="False" ReadOnly="True" SortExpression="ProdID" />
                    <asp:BoundField DataField="ProdName" HeaderText="Product" SortExpression="ProdName" />
                    <asp:BoundField DataField="ProdDescription" HeaderText="Description" SortExpression="ProdDescription" />
                    <asp:BoundField DataField="Dosage" HeaderText="Dosage" SortExpression="Dosage" />
                    <asp:BoundField DataField="ProdPrice" HeaderText="Price" SortExpression="ProdPrice" />
                    <asp:BoundField DataField="QtyInStock" HeaderText="Quantity in Stock" SortExpression="QtyInStock" />
                    <asp:ImageField DataImageUrlField="ProdID" DataImageUrlFormatString="~/Pictures/{0}.jpg" HeaderText="Image View">
                        <ControlStyle Width="150px" />
                    </asp:ImageField>
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem Value="0">0</asp:ListItem>
                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="5">5</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField Text="Add to Cart" />
                </Columns>

<EditRowStyle BorderColor="#333333" BorderStyle="Solid"></EditRowStyle>

<HeaderStyle BackColor="WhiteSmoke" BorderWidth="4px"></HeaderStyle>
            </asp:GridView>
            
        </div>

        <br /><br /><br /><br /><br /><br /><br /><br /><br />

    </div>
</asp:Content>
