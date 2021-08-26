<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/NormalKullnc.Master" AutoEventWireup="true" CodeBehind="BilgileriGuncelle.aspx.cs" Inherits="PersonelTakip.Web_Forms.BilgileriGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bilgileri Güncelle</title>
</head>
<body>
        <table>
          <div>
            <tr>
                <td colspan="2" style="text-align:center">
                    <h3>Bilgileri Güncelle</h3>
                </td>
            </tr>
            <tr>
                <td>T.C. No:</td>
                <td>
                    <asp:TextBox ID="txtTc" runat="server" CssClass="textBox"></asp:TextBox>                                                        
                </td>
                <td>Sicil No:</td>
                <td>
                    <asp:TextBox ID="txtSicil" runat="server" CssClass="textBox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"                             
                            ControlToValidate="txtSicil" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Departman ID:</td>
                <td>
                    <asp:TextBox id="txtDepartmanId" runat="server" TextMode="Number" CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"                             
                            ControlToValidate="txtDepartmanId" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Ad:</td>
                <td>
                    <asp:TextBox id="txtAd" runat="server"  CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"                             
                            ControlToValidate="txtAd" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
                <td>Soyad:</td>
                <td>
                    <asp:TextBox id="txtSoyad" runat="server"  CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"                             
                            ControlToValidate="txtSoyad" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <td>Email:</td>
                <td>
                    <asp:TextBox id="txtEmail" runat="server" textmode="Email" CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"                             
                            ControlToValidate="txtEmail" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
                <td>Telefon:</td>
                <td>
                    <asp:TextBox id="txtTelefon" runat="server" textmode="Phone" CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"                             
                            ControlToValidate="txtTelefon" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Adres:</td>
                <td>
                    <asp:TextBox id="txtAdres" runat="server"  CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"                             
                            ControlToValidate="txtAdres" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Parola:</td>
                <td>
                    <asp:TextBox id="txtParola" runat="server" textmode="Password" CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"                             
                            ControlToValidate="txtParola" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" />
                              
                </td>
            </tr>
        </div>
      </table>

</body>
</html>
</asp:Content>
