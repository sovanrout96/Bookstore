
<!DOCTYPE html>
<html lang="eng">
   <head>
      <title>Books</title>
      <!-- Meta Tags -->
	 <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
	<meta name="keywords" content="" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- // Meta Tags -->
      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.css" rel="stylesheet">
      <!-- //font-awesome icons -->
	  <link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen"><!-- //Gallery Css -->
      <!--stylesheets-->
		<link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
     <link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
     <link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i" rel="stylesheet">
   <style type="text/css">
   	.book-gallery-img{
   		width: 100%;
   		height: 300px;
   	}
   	.text{
   		font-weight:bold;
   		font-size: 15px;
   		text-align: center;
   	}
   </style>
   </head>
   <body>

<!--/banner-->
<!-- banner -->
<header>
<div class="banner1">
	<div class="header-bar">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light">
               <div class="hedder-up">
				<h1><a class="navbar-brand" href="index.jsp">Book Hub</a></h1>
			   </div>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                   <ul class="navbar-nav">
							 <li class="nav-item">
								<a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
							 </li>
							 <li class="nav-item">
								<a href="about.jsp" class="nav-link">About</a>
							 </li>
							  <li class="nav-item">
								<a href="services.jsp" class="nav-link">Services</a>
							 </li>
							 <li class="nav-item active">
								<a href="books.jsp" class="nav-link ">Books</a>
							 </li>
							 <li class="nav-item">
								<a href="contact.jsp" class="nav-link">Contact</a>
							 </li>
							 <li class="nav-item">
								<a href="admin/login.jsp" class="nav-link">Login</a>
							 </li>
						  </ul>
               </div>
            </nav>				
		</div>
   </div>
         <!-- //Navigation -->
</div>
	</header>
	<!-- //banner -->

	<!--Gallery-->
	<section class="book-gallery">
		  <h1 class="text-center" style="text-align: center;
    font-size: 3em;
    color: #2c363e;
    text-shadow: 0 1px 2px rgba(0, 0, 0, 0.37);
    margin-top: 30px;">Our Book Gallery</h1>
		<div class="container">
		<div class="row" style="margin-top:40px;margin-bottom: 40px;">
			<div class="col-sm-4" style=" height:300px; ">
				<a href="study.jsp"><img src="images/study.jpg" alt="study" class="book-gallery-img"></a>
				<center><span class="text" style="font-weight: bold;font-size: 22px;">Study</span>
				</center>
			</div>
			<div class="col-sm-4" style=" height: 300px">
				<a href="entertainment.jsp"><img src="images/entertainment.jpg" alt="entertainment" class="book-gallery-img"></a>
				<center>
				<span class="text" style="font-weight: bold;font-size: 22px;">Entertainment</span>
			    </center>
			</div>
			<div class="col-sm-4" style=" height: 300px">
				<a href="biography.jsp"><img src="images/biography.jpg" alt="biography" class="book-gallery-img"></a>
				<center><span class="text" style="font-weight: bold;font-size: 22px;">Biography
				</span></center>
			</div>
		</div>
		<div class="row" style="margin-bottom: 90px;">
			<div class="col-sm-4" style=" height:300px; ">
				<a href="novel.jsp"><img src="images/novel.jpg" alt="novel" class="book-gallery-img"></a>
				<center><span class="text" style="font-weight: bold;font-size: 22px;">Novel</span>
					</center>
			</div>
			<div class="col-sm-4" style=" height: 300px">
				<a href="kids.jsp"><img src="images/kids.jpg" alt="kids" class="book-gallery-img"></a>
				<center><span class="text" style="font-weight: bold;font-size: 22px;">Kid's
				</span></center>
			</div>
			<div class="col-sm-4" style=" height: 300px">
				<a href="notes.jsp"><img src="images/note.jpg" alt="notes" class="book-gallery-img"></a>
				<center><span class="text" style="font-weight: bold;font-size: 22px;">Student Notes
				</span></center>
			</div>
		</div>
   </div>
	</section>

	<!--//Gallery-->

	<!-- Footer -->
	<footer>
	<section class="w3ls_address_mail_footer_grids">
		<div class="container">
		<div class="row">
			<div class="col-sm-4 w3ls_footer_grid_left">
				<h5 class="sub-head">Address</h5>
				<p>Plot No:1234,CRP Square 
					<span>Bhubaneswar.</span>
				</p>
			</div>
			<div class="col-sm-4 w3ls_footer_grid_left">
				<h5 class="sub-head">Contact Us</h5>
				<p>+(0674) 345 6789
					<span>+(91) 8594541528</span>
				</p>
			</div>
			<div class="col-sm-4 w3ls_footer_grid_left">
				<h5 class="sub-head">Mail Us</h5>
				<p>
					<a href="mailto:info@example.com">query@bookstore.com</a>
					<span>
						<a href="mailto:info@example.com">director@bookstore.com</a>
					</span>
				</p>
			</div>
			</div>
			
			
		</div>
	</section>
	</footer>
	<section class="copyright-wthree">
		<div class="container">
			<p>&copy; 2018 Preparation . All Rights Reserved | Design by
				<a href="#">CAC</a>
			</p>
			<div class="w3l-social">
				<ul>
					<li>
						<a href="#" class="fab fa-facebook-f"></a>
					</li>
					<li>
						<a href="#" class="fab fa-twitter"></a>
					</li>
					<li>
						<a href="#" class="fab fa-google-plus-g"></a>
					</li>
					<li>
						<a href="#" class="fab fa-instagram"></a>
						<li>
							<li>
								<a href="#" class="fab fa-linkedin-in"></a>
								<li>
				</ul>
			</div>
		</div>
	</section>
	<!-- //Footer -->

     <!--js working-->
      <script src="js/jquery.min.js"></script>
      <!--//js working-->
<!--gallery -->
	<script src="js/jquery.chocolat.js"></script>
	<!--light-box-files -->
	<script type="text/javascript">
		$(function () {
			$('.gallery-grid1 a').Chocolat();
		});
	</script>
	<!-- //gallery -->

	<!-- smooth scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
<!-- //smooth scrolling -->
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<!-- //scrolling script -->

<!--bootstrap working-->
    <script src="js/bootstrap.min.js"></script>
 <!-- //bootstrap working-->
   </body>
</html>