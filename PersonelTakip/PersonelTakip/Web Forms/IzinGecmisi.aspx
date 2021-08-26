<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/NormalKullnc.Master" AutoEventWireup="true" CodeBehind="IzinGecmisi.aspx.cs" Inherits="PersonelTakip.Web_Forms.IzinGecmisi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Geçmiş İzinler</title>
</head>
<body>
        <div>
            <h4>Geçmiş İzinler</h4>
            <hr />
        </div>
        <div>
                    <table>
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
                        </table>
            </div>
    </body>
    </html>
</asp:Content>
