using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace PersonelTakip.Web_Forms
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string kimlikNo = textboxKimlik.Text;
            string sifre = textboxSifre.Text;

            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);

            if (RadioButton1.Checked)
            {
                SqlCommand cmd = new SqlCommand("Select * from YONETICILER where yntcID=@kimlikNo AND parola=@parola", baglanti);

                cmd.Parameters.AddWithValue("@kimlikNo", kimlikNo);
                cmd.Parameters.AddWithValue("@parola", sifre);
                baglanti.Open();
                SqlDataReader listt = cmd.ExecuteReader();
                if (listt.HasRows)
                {
                    while (listt.Read())
                    {
                        Session["yntcID"] = listt["yntcID"];
                        Response.Redirect("Personeller.aspx");

                    }
                }
                else
                {
                    label1.Text = "Hatalı Giriş!!! Tekrar Deneyiniz.";
                }
                cmd.Dispose();
                listt.Close();
            }
            else if (RadioButton2.Checked)
            {
                SqlCommand cmd = new SqlCommand("Select * from KULLANICILAR where personelID=@kimlikNo AND parola=@parola", baglanti);

                cmd.Parameters.AddWithValue("@kimlikNo", kimlikNo);
                cmd.Parameters.AddWithValue("@parola", sifre);
                baglanti.Open();
                SqlDataReader listt = cmd.ExecuteReader();
                if (listt.HasRows)
                {
                    while (listt.Read())
                    {
                        Session["personelID"] = listt["personelID"];
                        Response.Redirect("BilgileriGuncelle.aspx");

                    }
                }
                else
                {
                    label1.Text = "Hatalı Giriş!!! Tekrar Deneyiniz.";
                }
                cmd.Dispose();
                listt.Close();

            }

        }
    }
}