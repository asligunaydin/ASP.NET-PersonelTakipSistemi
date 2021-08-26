using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PersonelTakip.Web_Forms
{
    public partial class PersonelKayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            string tc = txtTc.Text;
            string sicil = txtSicil.Text;
            string departman = txtDepartmanId.Text;
            string ad = txtAd.Text;
            string soyad = txtSoyad.Text;
            string tarih = txtTarih.Text;
            string email = txtEmail.Text;
            string telefon = txtTelefon.Text;
            string adres = txtAdres.Text;
            string parola = txtParola.Text;
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("INSERT INTO KULLANICILAR (tc,sicilno,departmanID,ad,soyad,cinsiyet,dgmtarih,email.telefon,adres,parola) VALUES (@tc,@sicilno,@departmanID,@ad,@soyad,@cinsiyet,@dgmtarih,@email,@telefon,@adres,@parola)", baglanti);
            cmd.Parameters.AddWithValue("@tc", tc);
            cmd.Parameters.AddWithValue("@sicilno", sicil);
            cmd.Parameters.AddWithValue("@deparman", departman);
            cmd.Parameters.AddWithValue("@ad", ad);
            cmd.Parameters.AddWithValue("@soyad", soyad);
            cmd.Parameters.AddWithValue("@dgmtarih", tarih);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@telefon", telefon);
            cmd.Parameters.AddWithValue("@adres", adres);
            cmd.Parameters.AddWithValue("@parola", parola);
            baglanti.Open();
            cmd.ExecuteNonQuery();
            baglanti.Close();
        }
    }
}