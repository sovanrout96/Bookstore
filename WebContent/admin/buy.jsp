<!DOCTYPE html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Book Details</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/admin.css">
</head>
<nav class="navbar navbar-fixed-top">
    <div class="navbar-header">
        <nav class="navbar-brand">
            <a href="">Book Details</a>
        </nav>
    </div>
</nav>
<%@page import="java.sql.*" %>
<% 
   String id=request.getParameter("id");
   Connection con=null;
   PreparedStatement ps=null;
   try{
	   Class.forName("com.mysql.jdbc.Driver");
	   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
	   ps=con.prepareStatement("select * from books where id=?");
	   ps.setString(1, id);
       ResultSet rs=ps.executeQuery();
       rs.next();
%>
<div class="col-md-offset-3 col-md-6" style="margin-top: 150px;">
    <div class="well">
        <div class="row">
            <div class="col-sm-12">
        <div>
      <label class="myLabel">Book Name:</label>
      <span><%out.println(rs.getString("book_name")); %></span>
    </div>
    <div>
      <label class="myLabel">Author Name:</label>
      <span><%out.println(rs.getString("author")); %></span>
    </div>
    <div>
      <label class="myLabel">Book Type:</label>
      <span><%out.println(rs.getString("book_type")); %></span>
    </div>
    <div>
      <label class="myLabel">Book Price:</label>
      <h3><%out.println(rs.getString("book_price")); %></h3>
    </div>
    
    <div class="col-sm-6" style="margin-top: 40px;padding-left: 0px;">
           <div class="form-group">
         <a href="deliveryDetails.jsp?name=<%=rs.getString("book_name")%>&price=<%=rs.getString("book_price")%>"><button id="registerButton" type="submit" class="btn btn-info" style="width: 300px;">Buy</button></a>
     </div>
 </div>
   <div class="col-sm-6" style="margin-top: 40px;padding-right: 0px;">
   <div class="form-group">
         <a href="books.jsp"><button id="registerButton" type="submit" class="btn btn-danger pull-right" style="width: 300px;">Cancel</button></a>
     </div>
   </div>
</div>
</div>
</div>
    </div>
    <%
       }
       catch(Exception e){
    	   e.printStackTrace();
       }
    %>
</body>
</html>