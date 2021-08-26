<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Yonetici.Master" AutoEventWireup="true" CodeBehind="Departmanlar.aspx.cs" Inherits="PersonelTakip.Web_Forms.Departmanlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <h3>Departman Yoneticileri</h3> 
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" style="margin-left: 11px" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="196px" Width="806px">
        <Columns>
            <asp:BoundField DataField="departmanID" HeaderText="Departman ID" SortExpression="departmanID" />
            <asp:BoundField DataField="telefon" HeaderText="Telefon" SortExpression="telefon" />
            <asp:BoundField DataField="ad" HeaderText="Ad" SortExpression="ad" />
            <asp:BoundField DataField="soyad" HeaderText="Soyad" SortExpression="soyad" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PersonelTakipConnectionString %>" SelectCommand="SELECT [departmanID], [telefon], [ad], [soyad], [email] FROM [YONETICILER]"></asp:SqlDataSource>
</asp:Content>
