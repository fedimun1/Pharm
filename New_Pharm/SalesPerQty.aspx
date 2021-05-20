<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="SalesPerQty.aspx.vb" Inherits="New_Pharm.SalesPerQty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4><abbr  class="initialism">Sales Per Quantity</abbr></h4>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="211px" Width="100%" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MEDICINE_CODE" HeaderText="MEDICINE_CODE" SortExpression="MEDICINE_CODE" />
            <asp:BoundField DataField="MEDICINE_NAME" HeaderText="MEDICINE_NAME" SortExpression="MEDICINE_NAME" />
            <asp:BoundField DataField="SOLD_QTY" HeaderText="SOLD_QTY" SortExpression="SOLD_QTY" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"  CssClass="row-style"/>
         <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="right" />
        <RowStyle BackColor="#EFF3FB" CssClass="row-style" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;SOLD_ITEM_WITH_QTY&quot;"></asp:SqlDataSource>
  
</asp:Content>
