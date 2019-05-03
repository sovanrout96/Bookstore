<!DOCTYPE html>
<html class="no-js" lang="">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Admin Dashboard</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/admin.css">
  <style type="text/css">
    .table-bordered th{text-align: center;}
    .table-bordered td{text-align: center;}
  </style>
</head>
<body>
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Book Hub Admin Panel</a>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
         <li><a href="../index.jsp"> Home</a></li>
         <li><a href="logout.jsp"> Logout</a></li>
       </ul>
     </div>
   </div>
 </nav>
 <div class="col-lg-2 col-md-3 col-sm-4 col-xs-12 sidenav">
  <div class="row">
   <div class="panel-group col-xs-12" id="accordion">
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title" data-parent="#accordion" href="">
          <a href="adminProfile.jsp">My Profile</a>
        </h4>
      </div>
    </div>
     <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title" data-parent="#accordion" href="">
          <a href="adminPanel.jsp"> Users</a>
        </h4>
      </div>
    </div>
    <div class="panel panel-primary Mypanel">
     <div class="panel-heading">
      <h4 class="panel-title" data-parent="#accordion" >
       <a href="books.jsp">Books</a>
     </h4>
   </div>
 </div>
 <div class="panel panel-primary Mypanel">
   <div class="panel-heading">
    <h4 class="panel-title" data-parent="#accordion" >
     <a href="orders.jsp">Orders</a>
   </h4>
 </div>
</div>
</div>
</div>
</div>
<div class="col-lg-10 col-md-9 col-sm-8 col-xs-12 mainDiv">
  <div class="row">
   <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 Firstdivofmaindiv">
     <h3>Book Hub</h3>
     <h5>The Books Of Your Choice</h5>
   </div>
   <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 Seconddivofmaindiv">
    <div class="pull-right">
     <h4>Control Panel</h4>
   </div>
 </div>
</div>
<div class="row headingrow">
  <div class="col-sm-6">
    <h4 class="heading">Users</h4>
  </div>
</div>
<%@page import="java.sql.*" %>
       <%
           Connection con=null;
           PreparedStatement ps=null;
           ResultSet rs=null;
           try{
        	   Class.forName("com.mysql.jdbc.Driver");
        	   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
        	   ps=con.prepareStatement("select * from users where utype != 'admin'");
        	   rs=ps.executeQuery();
        	  
           
       %>
<div class="row">
  <div class="col-sm-12">
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
         <tr>
           <th>Sl.NO</th>
           <th>Name</th>
           <th>User Name</th>
           <th>User Type</th>
           <th>Edit</th>
           <th>Delete</th>
         </tr>
       </thead>
        <% 
           while( rs.next()){
        %>
       <tbody>
        <tr>
          <td><%out.println(rs.getString("id"));%></td>
          <td><%out.println(rs.getString("name"));%></td>
          <td><%out.println(rs.getString("uname"));%></td>
          <td><%out.println(rs.getString("utype"));%></td>
          <td><a href="">edit</a></td>
          <td><a href="">delete</a></td>
        </tr>
        <% 
                }
        %>
        
      </tbody>
    </table>
  </div>
</div>
</div>
</div>
<%
        if(session.getAttribute("valid")!="yes"){
        %>
        	<script>
            alert("Your Session has experied! Try Login again.");
            window.location="login.jsp";
            </script>
        <%
        }
        %>
        <% 
           }catch(Exception e){
        	   e.printStackTrace();
           }
        %>
</body>
</html>

