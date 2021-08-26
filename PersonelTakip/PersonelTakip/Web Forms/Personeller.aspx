<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Yonetici.Master" AutoEventWireup="true" CodeBehind="Personeller.aspx.cs" Inherits="PersonelTakip.Web_Forms.Personeller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
            <h3>Personeller</h3>
    </div>


    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="16px" style="margin-left: 11px" Width="400px" AutoGenerateColumns="False" DataKeyNames="personelID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="personelID" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="personelID" />
            <asp:BoundField DataField="tc" HeaderText="TC" SortExpression="tc" />
            <asp:BoundField DataField="sicilno" HeaderText="Sicil No" SortExpression="sicilno" />
            <asp:BoundField DataField="departmanID" HeaderText="Departman No" SortExpression="departmanID" />
            <asp:BoundField DataField="ad" HeaderText="Ad" SortExpression="ad" />
            <asp:BoundField DataField="soyad" HeaderText="Soyad" SortExpression="soyad" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="telefon" HeaderText="Telefon" SortExpression="telefon" />
            <asp:BoundField DataField="adres" HeaderText="Adres" SortExpression="adres" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PersonelTakipConnectionString %>" SelectCommand="SELECT [personelID], [tc], [sicilno], [departmanID], [ad], [soyad], [cinsiyet], [dgmtarih], [email], [telefon], [adres] FROM [KULLANICILAR]"></asp:SqlDataSource>
</asp:Content>
