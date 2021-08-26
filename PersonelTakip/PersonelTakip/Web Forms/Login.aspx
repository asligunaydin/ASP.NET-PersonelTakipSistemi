<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PersonelTakip.Web_Forms.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
</head>
<body>
    <div style="margin-left:auto;margin-right:auto; height: 50px;">
            <h4>Oturum Aç</h4>
        </div>
    <table>
        <div style="margin-left:auto;margin-right:auto; height: 138px;">
                 <tr>
                     <td>
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Yönetici" GroupName="kullanıciTipi"/>
                     </td>
                     <td>
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="Normal" GroupName="kullanıciTipi"/>
                     </td>
                 </tr>      
                <tr>
                    <td colspan="2" style="text-align:center">Kimlik No</td>
                    <td>
                        <asp:TextBox id="textboxKimlik" runat="server" CssClass="textBox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"                             
                            ControlToValidate="textboxKimlik" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                      
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">Şifre</td>
                    <td>
                        <asp:TextBox id="textboxSifre" TextMode="Password" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"                             
                            ControlToValidate="textboxSifre" ErrorMessage="Boş Geçilemez"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                   <tr>
                    <td colspan="2">
                        <asp:Button ID="btnGiris" runat="server" Text="Giriş" OnClick="btnGiris_Click"/>
                        <asp:Label ID="label1" runat="server" Text="" ForeColor="#cc0000" Font-Bold="true"></asp:Label>
                    </td>
                </tr>
        </div>
           
    </table>
    </body>
</html>
</asp:Content>
