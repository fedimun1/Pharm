<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CustomerInfo.aspx.vb" Inherits="New_Pharm.CustomerInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4><abbr class="initialism">CUstomer Info</abbr></h4>
    <h4>
        <abbr class="initialism">&nbsp;</abbr><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Customer Name" HeaderText="Customer Name" SortExpression="Customer Name" />
                <asp:BoundField DataField="MEDICINE_NAME" HeaderText="MEDICINE_NAME" SortExpression="MEDICINE_NAME" />
                <asp:BoundField DataField="TRAN_DATE" HeaderText="TRAN_DATE" SortExpression="TRAN_DATE" />
                <asp:BoundField DataField="TOTALPRICE" HeaderText="TOTALPRICE" SortExpression="TOTALPRICE" />
                <asp:BoundField DataField="BRANCHDESC" HeaderText="BRANCHDESC" SortExpression="BRANCHDESC" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;CUCTOMERINFO&quot;"></asp:SqlDataSource>
    </h4>
    
</asp:Content>
