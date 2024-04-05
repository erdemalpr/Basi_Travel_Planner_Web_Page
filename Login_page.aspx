<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_page.aspx.cs" Inherits="WEB_PROJE.Login_page" EnableSessionState="True" %>

<!DOCTYPE html>
<html>
<head>
    <title>Impressive Login & Sign up Forms Flat Responsive Widget Template :: w3layouts</title>
    <link href="web/css/style.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Impressive Login & Sign up Forms Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <!-- //end-smoth-scrolling -->
    <link href='//fonts.googleapis.com/css?family=Open+Sans:300,400,400italic,600,600italic,700,300italic' rel='stylesheet' type='text/css'>
    <style type="text/css">
        .auto-style1 {
            background-color: #CB1217;
        }
    </style>
</head>
<body>


    <h1>kAYIT OL VEYA <span class="auto-style1">GİRİŞ YAP</span></h1>

    <div class="main">
        <div class="login-top left">
            <div class="social_icons">
                <!-- Facebook -->
                <div class="slide-social w3l">
                    <a href="#">
                        <div class="button">Facebook</div>
                        <div class="facebook icon"><i class="facebook"></i></div>
                        <div class="facebook slide">
                            <p>Facebook</p>
                        </div>
                        <div class="clear"></div>
                    </a>
                </div>
                <!-- Twitter -->
                <div class="slide-social w3l">
                    <a href="#">

                        <div class="twitter icon"><i class="twitter"></i></div>
                        <div class="twitter slide">
                            <p>Twitter</p>
                        </div>
                        <div class="clear"></div>
                    </a>
                </div>

                <form id="form1" runat="server">
                    <asp:TextBox ID="TextBox1" placeholder="Telefon No" runat="server" CssClass="email1" MaxLength="50"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" placeholder="Mail Adresi" runat="server" CssClass="email" MaxLength="50"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" placeholder="Şifre" runat="server" CssClass="password" MaxLength="50"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" placeholder="Şifre kontrol" runat="server" CssClass="password" MaxLength="50"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="Kayıt Ol" OnClick="Button1_Click" />
            </div>





        </div>


        <div class="login-top right">
            <h3>Giriş</h3>


            <asp:TextBox ID="TextBox5" placeholder="e-mail" runat="server" CssClass="email" Width="190px" Wrap="False" BorderStyle="Ridge"></asp:TextBox>
            &nbsp;
            <asp:TextBox ID="TextBox6" placeholder="şifre" runat="server" CssClass="password" Width="190px" Wrap="False" BorderStyle="Ridge" MaxLength="50"></asp:TextBox>


            <br />
            <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>


            <div class="login-bottom">
                <ul>

                    <li>
                        <asp:Button ID="Button2" runat="server" Text="Giriş Yap" Width="278px" OnClick="Button2_Click" />
                </ul>
            </div>




        </div>

    </div>

    </form>
    </form>
</body>
</html>
