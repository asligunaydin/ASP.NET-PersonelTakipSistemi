<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Yonetici2.Master" AutoEventWireup="true" CodeBehind="IzinTalep.aspx.cs" Inherits="PersonelTakip.Web_Forms.IzinTalep" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
                <tr>
                    <td>
                        <table style="height:100px; width: 800px">
                            <tr>
                                <th>Personel No   </th>
                                <th>İzin Başlangıç Tarihi   </th>
                                <th>İzin Bitiş Tarihi   </th>
                                <th>İzin Türü    </th>
                                <th>Açıklama      </th>
                                <th>Gün Sayısı</th>
                            </tr>
                            <tbody>
                                <asp:Repeater ID="rp" runat="server">
                                    <ItemTemplate>
                                     <tr>
                                            <td style="border: 1px solid #808080"><%# Eval("personelID") %></td>
                                            <td style="border: 1px solid #808080"><%# Eval("baslangicTarihi") %></td>
                                            <td style="border: 1px solid #808080"><%# Eval("bitisTarihi") %></td>
                                         <td style="border: 1px solid #808080"><%# Eval("izinTuru") %></td>
                                            <td style="border: 1px solid #808080"><%# Eval("aciklama") %></td>
                                            <td style="border: 1px solid #808080"><%# Eval("toplamGun") %></td>
                                            <td style="border: 1px solid #808080">
                                                <asp:Button ID="btnIzin" runat="server" Text="İzin Ver " OnClick="btnIzin_Click"/>
                                                <asp:Button ID="btnRet" runat="server" Text="Reddet" OnClick="btnRet_Click"/>                        
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </td>
                </tr>
        </div>
</asp:Content>












