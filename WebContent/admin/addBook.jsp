<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Books</title>
</head>
<body>
       <%@page import="java.sql.*" %>
       <% 
          String book_name=request.getParameter("book_name");
          String author=request.getParameter("author_name");
          String book_price=request.getParameter("book_price");
          String book_type=request.getParameter("book_type");
          String publisher_name=(String)session.getAttribute("name");
          Connection con=null;
    	  PreparedStatement ps=null;
    	  int x=0;
          try{
        	  Class.forName("com.mysql.jdbc.Driver");
        	  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
        	  ps=con.prepareStatement("insert into books(book_name,author,book_price,book_type,publisher_name) values(?,?,?,?,?)");
        	  ps.setString(1, book_name);
        	  ps.setString(2, author);
        	  ps.setString(3,book_price);
        	  ps.setString(4,book_type);
        	  ps.setString(5, publisher_name);
        	  x=ps.executeUpdate();
        	  if(x>0){
        		  out.println("<script>");
        		  out.println("alert('Book Added Successfully')");
        		  out.println("location='publisherPanel.jsp';");
        		  out.println("</script>");
        	  }
          }catch(Exception e){
        	  e.printStackTrace();
          }
       %>
</body>
</html>