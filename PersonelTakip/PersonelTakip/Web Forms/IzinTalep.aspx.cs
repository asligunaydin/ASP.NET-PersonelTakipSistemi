using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace PersonelTakip.Web_Forms
{
    public partial class IzinTalep : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            baglanti.Open();
            DataTable deger = new DataTable();
            SqlCommand cmd = new SqlCommand("Select * from IZINLAR where onayDurumu='False'", baglanti);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(deger);
            rp.DataSource = deger;
            rp.DataBind();
            baglanti.Close();
            cmd.Dispose();
            baglanti.Dispose();
            da.Dispose();

        }

        protected void btnIzin_Click(object sender, EventArgs e)
        {
            try
            {
                int id = 0;
                if (Request.QueryString["id"] != null)
                {
                    id = Convert.ToInt32(Request.QueryString["id"]);
                }
                SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
                SqlCommand cmd = new SqlCommand("Update IZINLAR set onayDurumu=True where personelID=@id ", baglanti);
                cmd.Parameters.AddWithValue("@id", id);
                baglanti.Open();
                cmd.ExecuteNonQuery();
                baglanti.Close();
                Response.Redirect("IzinTalep.aspx");

            }
            catch (Exception ex)
            {

            }

        }

        protected void btnRet_Click(object sender, EventArgs e)
        {
            try
            {
                int id = 0;
                if (Request.QueryString["id"] != null)
                {
                    id = Convert.ToInt32(Request.QueryString["id"]);
                }
                SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
                SqlCommand cmd = new SqlCommand("DELETE FROM IZINLAR where personelID=@id ", baglanti);
                cmd.Parameters.AddWithValue("@id", id);
                baglanti.Open();
                cmd.ExecuteNonQuery();
                baglanti.Close();
                Response.Redirect("IzinTalep.aspx");

            }
            catch (Exception ex)
            {

            }

        }
    }
}