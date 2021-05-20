<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="CustomerInfo.aspx.vb" Inherits="New_Pharm.CustomerInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4><abbr class="initialism">CUstomer Info</abbr></h4>
   
             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="20" ForeColor="#333333" GridLines="None"  Width="100%" Height="265px" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />


            <Columns>
                <asp:BoundField DataField="Customer Name" HeaderText="Customer Name" SortExpression="Customer Name" />
                <asp:BoundField DataField="MEDICINE_NAME" HeaderText="Medicine Name " SortExpression="MEDICINE_NAME" />
                <asp:BoundField DataField="TRAN_DATE" HeaderText="Trans Date" SortExpression="TRAN_DATE" />
                <asp:BoundField DataField="TOTALPRICE" HeaderText="Total Price" SortExpression="TOTALPRICE" />
                <asp:BoundField DataField="BRANCHDESC" HeaderText="Branch" SortExpression="BRANCHDESC" />
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
    
    
</asp:Content>
