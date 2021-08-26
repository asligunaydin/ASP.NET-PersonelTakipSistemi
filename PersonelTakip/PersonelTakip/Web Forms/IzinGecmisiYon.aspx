<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Yonetici2.Master" AutoEventWireup="true" CodeBehind="IzinGecmisiYon.aspx.cs" Inherits="PersonelTakip.Web_Forms.IzinGecmisiYon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Personel İzinGeçmileri</title>
</head>
<body>
        <table>
          <div>
            <tr>
                <td colspan="2" style="text-align:center">
                    <h3>        Personel İzin Geçmişleri</h3>
                </td>
            </tr>
              <tr>
                    <td>

                    </td>
              </tr>
            <tr>
                <td>Personel ID:</td>
                <td></td>
                <td>
                    <asp:TextBox ID="txtID" runat="server" CssClass="textBox"></asp:TextBox>                                                        
                </td>
                <td colspan="2">
                    <asp:Button ID="btnAra" runat="server" Text="Ara"  OnClick="btnAra_Click"/>
                              
                </td>
            </tr>
                <tr>
                    <br />
                </tr>
                         <tr>
                                 <td>
                                     <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                         <FooterStyle BackColor="White" ForeColor="#000066" />
                                         <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                         <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                         <RowStyle ForeColor="#000066" />
                                         <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                         <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                         <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                         <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                         <SortedDescendingHeaderStyle BackColor="#00547E" />
                                     </asp:GridView>
                                 </td>
                           </tr>
        </div>
      </table>

</body>
</html>
</asp:Content>
