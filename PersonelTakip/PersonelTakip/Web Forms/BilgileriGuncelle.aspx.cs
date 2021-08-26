using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PersonelTakip.Web_Forms
{
    public partial class BilgileriGüncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["personelID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            int personelID = Convert.ToInt16(Session["personelID"]);

            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Select * from KULLANICILAR where personelID=personelID", baglanti);
            cmd.Parameters.AddWithValue("@personelID", personelID);
            baglanti.Open();
            SqlDataReader listt = cmd.ExecuteReader();
            if (listt.HasRows)
            {
                while (listt.Read())
                {
                    
                    txtSicil.Text = listt["sicilno"].ToString();
                    txtDepartmanId.Text = listt["departmanID"].ToString();
                    txtAd.Text = listt["ad"].ToString();
                    txtSoyad.Text = listt["soyad"].ToString();
                    txtEmail.Text = listt["email"].ToString();
                    txtTelefon.Text = listt["telefon"].ToString();
                    txtAdres.Text = listt["adres"].ToString();
                    txtParola.Text = listt["parola"].ToString();
                }
            }
            cmd.Dispose();
            listt.Close();

        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            string tcno = txtTc.Text;
            string sicilno = txtSicil.Text;
            string departmanID = txtDepartmanId.Text;
            string ad = txtAd.Text;
            string soyad = txtSoyad.Text;
            string email = txtEmail.Text;
            string telefon = txtTelefon.Text;
            string adres = txtAdres.Text;
            string parola = txtParola.Text;
            int id = 0;

            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Update KULLANICILAR " +
                "Set tcno=@tcno, sicilno=@sicilno, departmanID=@departmanID, ad=@ad, soyad=@soyad, email=@email,telefon=@telefon,adres=@adres,parola=@parola", baglanti);
            cmd.Parameters.AddWithValue("@tcno", tcno);
            cmd.Parameters.AddWithValue("@sicilno", sicilno);
            cmd.Parameters.AddWithValue("@departmanID", departmanID);
            cmd.Parameters.AddWithValue("@ad", ad);
            cmd.Parameters.AddWithValue("@soyad", soyad);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@telefon", telefon);
            cmd.Parameters.AddWithValue("@adres", adres);
            cmd.Parameters.AddWithValue("@parola", parola);
            baglanti.Open();
            cmd.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("BilgileriGuncelle.aspx");
        }
    }
}