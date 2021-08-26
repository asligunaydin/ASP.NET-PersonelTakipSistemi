<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/NormalKullnc.Master" AutoEventWireup="true" CodeBehind="IzinTalepEt.aspx.cs" Inherits="PersonelTakip.Web_Forms.IzinTalepEt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Personel Kayıt</title>
</head>
<body>
        <table>
          <div>
            <tr>
                <td colspan="2" style="text-align:center">
                    <h3>İzin Talep Ekranı</h3>
                </td>
            </tr>
            <tr>
                <td>Başlangıç Tarihi:</td>
                <td>
                    <asp:TextBox ID="txtBaslangicTarihi" runat="server" Textmode="Date" CssClass="textBox"></asp:TextBox>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"                             
                            ControlToValidate="txtBaslangicTarihi" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Bitiş Tarihi</td>
                <td>
                    <asp:TextBox id="txtBitisTarihi" runat="server" TextMode="Date" CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"                             
                            ControlToValidate="txtBitisTarihi" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Yönetici No:</td>
                <td>
                    <asp:TextBox id="txtYoneticiNo" runat="server"  CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"                             
                            ControlToValidate="txtYoneticiNo" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
              <tr>                
                <td>Açıklama:</td>
                <td>
                    <asp:TextBox id="txtAciklama" runat="server"  CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"                             
                            ControlToValidate="txtAciklama" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td></tr>
            <tr>
                <td>İzin Türü:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Yıllık</asp:ListItem>
                        <asp:ListItem>Mazeret</asp:ListItem>
                        <asp:ListItem>Hastalık/İstirahat</asp:ListItem>
                    </asp:DropDownList>              
                </td>
            </tr>
            <tr>
              <td>Toplam Gün</td>
                <td>
                    <asp:TextBox id="txtGun" runat="server"  CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"                             
                            ControlToValidate="txtGun" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                </td>
            </tr>
              <tr>
                  <td>
                       
                  </td>
              </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnKaydet" runat="server" Text="Gönder" OnClick="btnGonder_Click" />
                              
                </td>
            </tr>
        </div>
      </table>

</body>
</html>
</asp:Content>
