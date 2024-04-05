using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.Configuration;
using WEB_PROJE;
using System.Text.RegularExpressions;

namespace WEB_PROJE
{
    public partial class Login_page : System.Web.UI.Page
    {
        private readonly object txtkullaniciAdi;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {




            try
            {
                SqlCommand commandlogin = new SqlCommand("Select * from Table_1 where User_Mail=@pmail and User_Password=@ppass", SQL_Connection.connection);
                SQL_Connection.Connection_Check();



                string shaPass = Sha256Converter.ComputeSha256Hash(TextBox6.Text);

                commandlogin.Parameters.AddWithValue("@pmail", TextBox5.Text);
                commandlogin.Parameters.AddWithValue("@ppass", shaPass);


                // Yeni bir tablede  SQL den çekilen kullanıcının verilerini tutacağız.Eğer veriler mevcutsa tablemiz dolu olacak bu şekilde başarılı girişi kontrol edeceğiz
                string username = TextBox5.Text;
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(commandlogin);

                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {

                    Session["oturum"] = username;
                    Response.Redirect("Main_Menu.aspx");
                }
                else
                {

                    Label2.Visible = true;
                    Label2.Text = "E- mail veya şifre hatalı";


                }
                

            }
            catch (Exception)
            {

                throw;
            }

            
        }


        //kayıt için gereken verileri kontrol ettiğim alan
        #region kayıtkontrolişlemleri
        static bool EmailKontrol(string inputEmail)
        {
            const string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}" +
            @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" +
            @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";

            return (new Regex(strRegex)).IsMatch(inputEmail);
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string telephone = TextBox1.Text;
            string user_mail = TextBox2.Text;
            string password = TextBox3.Text;
            string password_check = TextBox4.Text;
            bool mail_Check = EmailKontrol(user_mail);
            int flag = 0;

            if (telephone == "" || telephone.Length != 10)
            {

                Label1.Visible = true;
                Label1.Text = "Lütfen başında 0 olmadan doğru telefon numaranızı giriniz";


            }
            else if (user_mail == "" || user_mail.Length < 5)
            {
                Label1.Visible = true;
                Label1.Text = "Lütfen doğru mail adresinizi giriniz";


            }

            else if (mail_Check == false)
            {

                Label1.Visible = true;
                Label1.Text = "Lütfen doğru mail adresinizi girin";

            }
            else if (password == "" || password.Length < 5)
            {
                Label1.Visible = true;
                Label1.Text = "Lütfen 5 karakterden büyük bir şifre girin";


            }
           else  if (password != password_check)
            {
                Label1.Visible = true;
                Label1.Text = "Lütfen şifrenizi aynı girin";



            }
            else
            {
                flag = 1;
            }

            #endregion

            if (password == password_check&&flag==1)
            {


                try
                {


                    SqlCommand commandRegister = new SqlCommand("Insert into Table_1(Telephone,User_Mail,User_Password) values (@phone,@pmail,@ppass)", SQL_Connection.connection);
                    SQL_Connection.Connection_Check();


                    string telephone_converted = Sha256Converter.ComputeSha256Hash(telephone);
                    string password_converted = Sha256Converter.ComputeSha256Hash(password);



                    commandRegister.Parameters.AddWithValue("@phone", telephone_converted);
                    commandRegister.Parameters.AddWithValue("@pmail", user_mail);
                    commandRegister.Parameters.AddWithValue("@ppass", password_converted);

                    commandRegister.ExecuteNonQuery();

                    flag = 0;
                    Label1.Visible = false;
                    Session["oturum"] = user_mail;
                    Response.Redirect("Main_Menu.aspx");
                }
                catch (Exception)
                {


                    Label1.Visible = true;
                    Label1.Text = "Bu mail adresi zaten kullanımda !";


                }

            }
            else
            {


            }


        }

    }
}