
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="css/bootstrap.min.css" rel="stylesheet"/>
        <title>Login</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%@page import="java.util.*" %>
      
        
        <%
         
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        if(username.equals("admin") && password.equals("admin")){
            session.setAttribute("valid","yes");
            session.setAttribute("user","admin");
            response.sendRedirect("adminPanel.jsp");
        }
  
        try{
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore", "root", "");
                   PreparedStatement ps=c.prepareStatement("select * from users where uname=? and password=?");
                   ps.setString(1,username);
                   ps.setString(2,password);
                   ResultSet rs=ps.executeQuery();
                   if(rs.next()){
                     if(rs.getString("utype").equals("publisher")){
                       session.setAttribute("valid","yes");
                       session.setAttribute("name",rs.getString("name"));
                       session.setAttribute("username",username);
                       response.sendRedirect("publisherPanel.jsp");
                     }
                     }else{
                    	 
                       %>
                       
                       <jsp:forward page="login.jsp">
                           <jsp:param name="err" value="Invalid Credentials! Try again."></jsp:param>
                           <jsp:param name="username" value="<%=username%>"></jsp:param>
                       </jsp:forward>
                       <%
                        }
        }catch(Exception e)
              {
                out.println(e);
        }

        %>
    </body>
</html>
