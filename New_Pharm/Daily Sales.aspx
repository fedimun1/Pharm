<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Daily Sales.aspx.vb" Inherits="New_Pharm.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4><abbr  class="initialism">Daily Sales</abbr></h4>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="20" ForeColor="#333333" GridLines="None"  Width="100%" Height="265px" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="TRANDATE" HeaderText="Trandate" SortExpression="Trandate" />
        <asp:BoundField DataField="TOTAL_COST" HeaderText="Total Cost" SortExpression="TotCostal " />
        <asp:BoundField DataField="TOTALPRICE" HeaderText="Total Price" SortExpression="Total Price" />
        <asp:BoundField DataField="VAT" HeaderText="Vat" SortExpression="Vat" />
        <asp:BoundField DataField="SELLING_PRICE" HeaderText="SELLING_PRICE" SortExpression="Selling Price" />
    </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"  CssClass="row-style"/>
         <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="right" />
        <RowStyle BackColor="#EFF3FB"  CssClass="row-style"/>
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;SALES_BY_DATE&quot;"></asp:SqlDataSource>
</asp:Content>
