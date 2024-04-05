<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main_Menu.aspx.cs" Inherits="WEB_PROJE.Main_Menu" %>

<!DOCTYPE html>

<!DOCTYPE HTML>
<html>
<head>
<title>Free Premium Website Template | Home :: w3layouts</title>
<link href="web2/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="web2/css/form.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='//fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/mootools-1.2.4-core.js"></script>
<script type="text/javascript" src="js/mootools-1.2.4.2-more.js"></script>
<script type="text/javascript">
		window.addEvent('domready', function() {
			new CalendarEightysix('exampleI', 	 { 'offsetY': -4 });
			new CalendarEightysix('exampleII', 	 { 'startMonday': true, 'format': '%m.%d.%Y', 'slideTransition': Fx.Transitions.Back.easeOut, 'draggable': true, 'offsetY': -4 });
	});	
</script>
</head>
<body>
<div class="header-bg">
	<div class="header-top">
		<div class="wrap">
				   <div class="box_header_user_menu">
					   <asp:Label ID="Label3" runat="server" Text="HOŞ GELDİN  ," ForeColor="White"></asp:Label>
					   <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" ForeColor="White">
						<asp:Button ID="Button2" runat="server" Text="Çıkış Yap" OnClick="Button2_Click" />
					   </asp:Label>
					   
					</div>
					<div class="header-right">
						<ul class="follow_icon">
							<li><a href="#"><img src="web2/images/follow_icon.png" alt=""/></a></li>
							<li><a href="#"><img src="web2/images/follow_icon1.png" alt=""/></a></li>
							<li><a href="#"><img src="web2/images/follow_icon2.png" alt=""/></a></li>
							<li><a href="#"><img src="web2/images/follow_icon3.png" alt=""/></a></li>
							<li><a href="#"><img src="web2/images/follow_icon4.png" alt=""/></a></li>
							<li><a href="#"><img src="web2/images/follow_icon5.png" alt=""/></a></li>
						</ul>
					</div>
				<div class="clear"></div> 
		</div>
	</div>
	<div class="header-bot">
		      <div class="wrap"> 	
						<div class="logo">
							<asp:Label ID="Label4" runat="server" Text="YBS TRAVEL" Font-Size="XX-Large" ForeColor="Black" Font-Bold="True" Font-Names="Gill Sans Ultra Bold"></asp:Label>
						</div>
						<div class="search">
						    <input type="text" class="textbox" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
						    <button class="gray-button"><span>Search</span></button>
				       </div>
					<div class="clear"></div> 
				</div>		
	</div>	
	<div class="banner-top">
		<div class="wrap"> 
			<div class="header-bottom">
				 <div class="header_bottom_right_images">
					 <asp:Image ID="Image1" runat="server" Height="536px" Width="724px" ImageUrl="~/web2/images/hiero.jpg" />
				 </div>				
			</div>
		<div class="header-para">
			<h2>Tur Oluştur</h2>
			<form action="" class="sky-form" runat="server">
			
				<section>
						<label class="label">Tur seç</label>
						<label class="select">
							<asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Ege Kültürel Turu</asp:ListItem>
                                <asp:ListItem>Akdeniz Turu</asp:ListItem>
                                <asp:ListItem>Marmara  Kültürel Turu</asp:ListItem>
                                <asp:ListItem>İç Anadolu Kültürel Turu</asp:ListItem>
                                <asp:ListItem>Karadeniz Turu</asp:ListItem>
                                <asp:ListItem>Güneydoğu Turu</asp:ListItem>
                                <asp:ListItem>Doğu Anadolu Turu</asp:ListItem>
                        </asp:DropDownList>
							<i></i>
						</label>
				</section>
			<section>
				<label class="label">Konaklama seç</label>
						<label class="select">
							<asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>VİP konaklama(En az 4 Yıldızlı otel)</asp:ListItem>
                                <asp:ListItem>Lüks Konaklama (En az 3 yıldızlı otel)</asp:ListItem>
                                <asp:ListItem>Standart Konaklama (En az 2 yıldızlı otel)</asp:ListItem>
                                <asp:ListItem>Eco Konaklama(Pansiyon veya butik otel)</asp:ListItem>
                </asp:DropDownList>
							<i></i>
				</label>

			</section>
	<div class="row1">
				<div class="columns grid_12">
					<form class="style-1">
						<div class="row">
							<div class="grid_4 columns">
								<label for="name">Yetişkin(12+yaş)</label>
								<asp:DropDownList ID="DropDownList3" runat="server">
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                </asp:DropDownList>
							</div>		
							<div class="grid_5 columns">
								<label for="name">Çocuk(2-12Yaş)</label>
								<asp:DropDownList ID="DropDownList4" runat="server">
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                </asp:DropDownList>
							</div>	
							<div class="grid_6 columns">
								<label for="name">Bebek(0-2Yaş)</label>
								<asp:DropDownList ID="DropDownList5" runat="server">
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                </asp:DropDownList>
							</div>	
							<div class="clear">
								<asp:TextBox ID="TextBox1" runat="server" placeholder="İndirim kodu" Width="121px"></asp:TextBox> <asp:Button ID="İndirim" runat="server" Text="Kodu Kullan" BorderStyle="None" OnClick="İndirim_Click" />
								<asp:Label ID="Label1" runat="server" Text="Kod Hatalı" Font-Size="Medium" ForeColor="Red" Visible="False"></asp:Label>
							</div>	
                            <div>
								<asp:Button ID="Hesapla" runat="server" Text="Fiyat Bul" BorderStyle="None" CssClass="button" OnClick="Hesapla_Click" />
								<asp:Button ID="Button1" runat="server" Text="Sıfırla" BorderStyle="None" CssClass="button" OnClick="Button1_Click1" />
								<asp:Label ID="Tutar" runat="server" Text="0 'DEN BAŞLAYAN FİYATLARLA TEKLİF ALMAK İÇİN İLETİŞİME GEÇ" Font-Size="Small" ForeColor="White" Visible="False"></asp:Label>
								
                            </div>
                            <div>
								<asp:Label ID="Label5" runat="server" Text="tel : 555 555 555" ForeColor="White"></asp:Label>
                            </div>
						</div>		
					</form>
				</div>
			</div>
		
		<div class="reservation">	
			<form>
				
			</form>
		</div>			
			<div class="but-text">
				
			</div>
	</div>
		<div class="clear"></div>
	</div></form>
</div>
<div class="main">
		<div class="wrap">
			<div class="content-middle">    
		     <div class="inner-top">   
		    	<div class="transparent p1">
					<div class="image_carousel">
						<h3>Yeni Üyeler</h3>
							<div id="foo1">
								<img src="web2/images/foto_yeni.jpg" alt="basketball" width="130" height="120" />
								<img src="web2/images/foto_yeni2.jpg" alt="beachtree" width="130" height="120" />
								<img src="web2/images/foto_yeni3.jpg" alt="cupcackes" width="125" height="120" />
								<img src="web2/images/pic4.jpg" alt="hangmat" width="125" height="120" />
								<img src="web2/images/foto_yeni4.jpg" alt="new york" width="125" height="120" />
								<img src="web2/images/pic5.jpg" alt="laundry" width="125" height="120" />
								<img src="web2/images/pic6.jpg" alt="mom son" width="125" height="120" />
								<img src="web2/images/pic7.jpg" alt="picknick" width="125" height="120" />
							</div>
					<div class="clearfix"></div>
			</div>
		</div>
      </div>
</div>
		<div class="section group">
				<div class="col_1_of_3 span_1_of_3">
					<div class="post-list">
						<h2>aliquam erat volutpat.</h2>
						<figure class="thumbnail">
							<a href="#" title="Donec tempor libero"><img src="web2/images/pic20.jpg" alt="tempor"></a>
						</figure>
						<div class="post-text">
							<span class="time">March 15,2013</span>
							<h5 class="head">Lorem ipsum</h5>
							<p class="text">Lorem ipsum dolor sit amettretrytrytu, consectetuer adipiscing elitLorem</p>
							<a href="#"><span class="italic">Read More</span></a>
						</div>
						<div class="clear"></div> 
					</div>
					<div class="post-list">
						<figure class="thumbnail">
							<a href="#" title="Donec tempor libero"><img src="web2/images/pic21.jpg" alt="tempor"></a>
						</figure>
						<div class="post-text">
							<span class="time">March 15,2013</span>
							<h5 class="head">Lorem ipsum</h5>
							<p class="text">Lorem ipsum dolor sit amettretrytrytu, consectetuer adipiscing elitLorem</p>
							<a href="#"><span class="italic">Read More</span></a>
						</div>
						<div class="clear"></div> 
					</div>
					<div class="post-list">
						<figure class="thumbnail">
							<a href="#" title="Donec tempor libero"><img src="web2/images/pic22.jpg" alt="tempor"></a>
						</figure>
						<div class="post-text">
							<span class="time">March 15,2013</span>
							<h5 class="head">Lorem ipsum</h5>
							<p class="text">Lorem ipsum dolor sit amettretrytrytu, consectetuer adipiscing elitLorem</p>
							<a href="#"><span class="italic">Read More</span></a>
						</div>
						<div class="clear"></div> 
					</div>
					<a href="#" class="link1">See all</a>
				</div>
				<div class="col_1_of_3 span_1_of_3">
					<div class="middle-list">
						<h2>Members Online Now</h2>
						<div class="img1">
							<ul class="hover-img">
								<li>
									<a href="#" class="sample-border2">
										<img src="web2/images/pic11.jpg" alt=""/>
									</a>
								</li>
							</ul>
							<p class="desc">euismod tincidunt</p>
						</div>
						<div class="img2">
							<ul class="hover-img">
								<li>
									<a href="#" class="sample-border2">
										<img src="web2/images/pic18.jpg" alt=""/>
									</a>
								</li>
							</ul>
							<p class="desc">euismod tincidunt</p>
						</div>
						<div class="img3">
							<ul class="hover-img">
								<li>
									<a href="#" class="sample-border2">
										<img src="web2/images/pic19.jpg" alt=""/>
									</a>
								</li>
							</ul>
							<p class="desc">euismod tincidunt</p>
						</div>
						<div class="clear"></div> 
					</div>
					<div class="post-list1">
						<div class="img1">
							<ul class="hover-img">
								<li>
									<a href="#" class="sample-border2">
										<img src="web2/images/pic12.jpg" alt=""/>
									</a>
								</li>
							</ul>
							<p class="desc">euismod tincidunt</p>
						</div>
						<div class="img2">
							<ul class="hover-img">
								<li>
									<a href="#" class="sample-border2">
										<img src="web2/images/pic13.jpg" alt=""/>
									</a>
								</li>
							</ul>
							<p class="desc">euismod tincidunt</p>
						</div>
						<div class="img3">
							<ul class="hover-img">
								<li>
									<a href="#" class="sample-border2">
										<img src="web2/images/pic14.jpg" alt=""/>
									</a>
								</li>
							</ul>
							<p class="desc">euismod tincidunt</p>
						</div>
						<div class="clear"></div> 
					</div>
					<div class="post-list1">
						<div class="img1">
							<ul class="hover-img">
								<li>
									<a href="#" class="sample-border2">
										<img src="web2/images/pic15.jpg" alt=""/>
									</a>
								</li>
							</ul>
							<p class="desc">euismod tincidunt</p>
						</div>
						<div class="img2">
							<ul class="hover-img">
								<li>
									<a href="#" class="sample-border2">
										<img src="web2/images/pic16.jpg" alt=""/>
									</a>
								</li>
							</ul>
							<p class="desc">euismod tincidunt</p>
						</div>
						<div class="img3">
							<ul class="hover-img">
								<li>
									<a href="#" class="sample-border2">
										<img src="web2/images/pic17.jpg" alt=""/>
									</a>
								</li>
							</ul>
							<p class="desc">euismod tincidunt</p>
						</div>
						<div class="clear"></div> 
					</div>
					<a href="#" class="link1">See all</a>
				</div>
				<div class="col_1_of_3 span_1_of_3">
					<div class="latest_comments">
					<h2>Latest Comments</h2>
						<div class="comments">
							<p><span>admin</span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorp Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorp</p>
							 <h4><a href="#">Lorem ipsum dolor sit dolor more normal!</a></h4>
							 <p>June 25th, 2013</p>
						</div>
						<div class="comments">
							<p><span>admin</span> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut </p>
							 <h4><a href="#">Lorem ipsum dolor sit dolor more normal!</a></h4>
							 <p>June 20th, 2013</p>
						</div>
						<div class="comments">
							<p><span>admin</span> Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut </p>
							 <h4><a href="#">Lorem ipsum dolor sit dolor more normal!</a></h4>
							 <p>June 15th, 2013</p>
						</div>
						<a href="#" class="link1">See all</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
	<div class="footer">
    	<ul class="footermenu">
        	<li class="current"><a href="#">Search</a></li>
            <li><a href="#">Join</a></li>
            <li><a href="#">Blog</a></li>
            <li><a href="#">Login</a></li>
            <li><a href="#">Help</a></li>
            <li><a href="#">FAQs</a></li>
            <li><a href="#">Contacts</a></li>
        </ul>
		<div class="footer-bottom">
			<div class="copy">
				<p> &copy; 2013 Premium. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
			</div>
		</div>
	</div>
   </div>
 </div>
</div>
</body>
</html>           