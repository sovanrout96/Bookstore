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
	 <script src="js/jquery.min.js"></script>
     <script src="js/bootstrap.min.js"></script>
	<!-- // Meta Tags -->
      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.css" rel="stylesheet">
      <!-- //font-awesome icons -->
	  
      <!--stylesheets-->
		<link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
     <link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i" rel="stylesheet">
<style type="text/css">
	.fa{
		margin-top: 8px!important;
	}
	.table-bordered th{color:black !important;font-size: 16px !important;text-align: center;}
	.table-bordered td{color:black !important;font-size: 10px;text-align: center;}
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
    <!--header-->
    <h1 class="text-center" style="text-align: center;
    font-size: 3em;
    color: #2c363e;
    text-shadow: 0 1px 2px rgba(0, 0, 0, 0.37);
    margin-top: 30px;">Study Books</h1>
        <div class="container" style="margin-top: 50px;margin-bottom: 50px;">      
  
  <%@page import="java.sql.*" %>
       <%
           Connection con=null;
           PreparedStatement ps=null;
           ResultSet rs=null;
           try{
        	   Class.forName("com.mysql.jdbc.Driver");
        	   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
        	   ps=con.prepareStatement("select * from books where book_type =? ");
        	   ps.setString(1, "study");
        	   rs=ps.executeQuery();
        	  
           
       %>
  <table class="table table-bordered ">
    <thead>
      <tr>
        <th>Sl No</th>
        <th>Book Name</th>
        <th>Author Name</th>
        <th>Book Type</th>
        <th>Book Price</th>
        <th>Action</th>
      </tr>
    </thead>
    <% 
           while( rs.next()){
        %>
    <tbody>
      <tr>
        <td><%out.println(rs.getString("id"));%></td>
        <td><%out.println(rs.getString("book_name"));%></td>
        <td><%out.println(rs.getString("author"));%></td>
        <td><%out.println(rs.getString("book_type"));%></td>
        <td><%out.println(rs.getString("book_price"));%></td>
        <td><a href="admin/buy.jsp?id=<%=rs.getString("id")%>"><button class="btn-info">View</button></a></td>       
      </tr>
       <% 
                }
        %>
        <% 
           }catch(Exception e){
        	   e.printStackTrace();
           }
        %>
    </tbody>
  </table>
</div>
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