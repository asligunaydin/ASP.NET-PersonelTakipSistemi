using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace PersonelTakip.Web_Forms
{
    public partial class IzinTalepEt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGonder_Click(object sender, EventArgs e)
        {
            if (Session["personelID"] == null)
            {
                Response.Redirect("Login.aspx");
            }


            int personelID = Convert.ToInt16(Session["personelID"]);
            string baslangicTarihi = txtBaslangicTarihi.Text;
            string bitisTarihi = txtBitisTarihi.Text;
            string yonetici = txtYoneticiNo.Text;
            string aciklama = txtAciklama.Text;
            string izinTuru = DropDownList1.Text;
            string toplamGun = txtGun.Text;

            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("INSERT INTO IZINLAR (personelID,baslangicTarihi,bitisTarihi,yoneticiID,aciklama,izinTuru,toplamGun) VALUES (@personelID,@baslangicTarihi,@bitisTarihi,@yoneticiID,@aciklama,@izinTuru,@toplamGun)", baglanti);
            cmd.Parameters.AddWithValue("@personelID", personelID);
            cmd.Parameters.AddWithValue("@baslangicTarihi", baslangicTarihi);
            cmd.Parameters.AddWithValue("@bitisTarihi", bitisTarihi);
            cmd.Parameters.AddWithValue("@yoneticiID", yonetici);
            cmd.Parameters.AddWithValue("@aciklama", aciklama);
            cmd.Parameters.AddWithValue("@izinTuru", izinTuru);
            cmd.Parameters.AddWithValue("@toplamGun", toplamGun);
            baglanti.Open();
            cmd.ExecuteNonQuery();
            baglanti.Close();

        }
    }
}