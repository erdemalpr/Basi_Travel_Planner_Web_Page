using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB_PROJE
{
    public partial class Main_Menu : System.Web.UI.Page
    {
        public static  int toplam;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Label2.Text = Session["oturum"].ToString();
            }
            catch (Exception)
            {

                Label2.Text = "misafir";
            }


            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        

        protected void Hesapla_Click(object sender, EventArgs e)
        {
            

            string tatilseçimi=DropDownList1.SelectedItem.ToString();
            string konaklamaseçim=DropDownList2.SelectedItem.ToString();
            int yetiskin_Sayi =500*Convert.ToInt32(DropDownList3.Text);
            int cocuk_Sayi = 200*Convert.ToInt32(DropDownList4.Text);
            int bebek_sayi=100*Convert.ToInt32(DropDownList5.Text);
            int güncel= yetiskin_Sayi+cocuk_Sayi+bebek_sayi;

            if (tatilseçimi== "Ege Kültürel Turu")
            {
                toplam += 2500;
            }
            else if (tatilseçimi== "Akdeniz Turu")
            {

                toplam += 3000;

            }
            else if (tatilseçimi == "Marmara  Kültürel Turu")
            {

                toplam += 2000;

            }
            else if (tatilseçimi == "İç Anadolu Kültürel Turu")
            {
                toplam += 2000;
            }
            else if (tatilseçimi == "Karadeniz Turu")
            {
                toplam += 2500;
            }
            else if (tatilseçimi == "Güneydoğu Turu")
            {
                toplam += 2000;
            }
            else if (tatilseçimi == "Doğu Anadolu Turu")
            {
                toplam += 2000;
            }

            if (konaklamaseçim== "VİP konaklama(En az 4 Yıldızlı otel)")
            {
                toplam += 3000;
            }
            else if (konaklamaseçim== "Lüks Konaklama (En az 3 yıldızlı otel)")
            {
                toplam += 2000;
            }
            else if (konaklamaseçim == "Standart Konaklama (En az 2 yıldızlı otel)")
            {
                toplam += 1000;
            }
           else if (konaklamaseçim == "Eco Konaklama(Pansiyon veya butik otel)")
            {
                toplam += 500;
            }



            toplam += güncel;
            if (güncel == 0)
            {
                toplam = 0;
            }
            string güncel_Tut=toplam.ToString();

            Tutar.Text = güncel_Tut+ "DEN BAŞLAYAN FİYATLARLA TEKLİF ALMAK İÇİN İLETİŞİME GEÇ";
            Tutar.Visible = true;
            Hesapla.Enabled = false;
           
        }

        protected void İndirim_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "PAU YBS")
            {

                toplam -= 500;
                Tutar.Text = toplam.ToString() + "\t"+ " DEN BAŞLAYAN FİYATLARLA TEKLİF ALMAK İÇİN İLETİŞİME GEÇ";
                Label1.Text = "İndirim Uygulandı";
                Label1.Visible = true;
                İndirim.Enabled = false;
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Kod Hatalı";
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            toplam = 0;
            İndirim.Enabled = true;
            Hesapla.Enabled=true;
            DropDownList3.SelectedIndex = 0;
            DropDownList4.SelectedIndex = 0;
            DropDownList5.SelectedIndex = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Login_page.aspx");
        }
    }
}