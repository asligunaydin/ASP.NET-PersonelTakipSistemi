using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace PersonelTakip.Web_Forms
{
    public partial class IzinGecmisi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {

            if (Session["personelID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            int tcno = Convert.ToInt16(Session["personelID"]);

            SqlConnection baglanti = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Select baslangicTarihi, bitisTarihi, aciklama, izinTuru, toplamGun from IZINLAR Where personelID=personelID AND onayDurumu='true'  ", baglanti);
            cmd.Parameters.AddWithValue("personelID", tcno);
            baglanti.Open();
            SqlDataReader list = cmd.ExecuteReader();
            GridView1.DataSource = list;
            GridView1.DataBind();
            cmd.Dispose();
            list.Close();

        }
    }
}
