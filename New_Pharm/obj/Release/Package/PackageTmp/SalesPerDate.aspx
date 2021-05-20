<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="SalesPerDate.aspx.vb" Inherits="New_Pharm.SalesPerDate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4><abbr  class="initialism">Sales Per Date</abbr></h4>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="270px" Width="100%" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="TRANDATE" HeaderText="DATE" SortExpression="TRANDATE" />
            <asp:BoundField DataField="TOTAL_COST" HeaderText="TOTAL_COST" SortExpression="TOTAL_COST" />
            <asp:BoundField DataField="TOTALPRICE" HeaderText="TOTALPRICE" SortExpression="TOTALPRICE" />
            <asp:BoundField DataField="VAT" HeaderText="VAT" SortExpression="VAT" />
            <asp:BoundField DataField="SELLING_PRICE" HeaderText="SELLING_PRICE" SortExpression="SELLING_PRICE" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;SALES_PER_DATE&quot;"></asp:SqlDataSource>
    
</asp:Content>
