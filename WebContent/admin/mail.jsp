<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Mail</title>
</head>
<body>
     <%@page import="java.sql.*" %>
     <%@page import="java.util.Properties" %>
     <%@page import="javax.mail.Authenticator" %>
     <%@page import="javax.mail.Message" %>
     <%@page import="javax.mail.MessagingException" %>
     <%@page import="javax.mail.PasswordAuthentication" %>
     <%@page import="javax.mail.Session" %>
     <%@page import="javax.mail.Transport" %>
     <%@page import="javax.mail.internet.InternetAddress" %>
     <%@page import="javax.mail.internet.MimeMessage" %>
     <%@page import="javax.net.ssl.HttpsURLConnection" %>
     <%@page import="javax.net.ssl.SSLContext" %>
     <%@page import="javax.net.ssl.TrustManager" %>
     <% 
        String name=request.getParameter("customer_name");
        String address=request.getParameter("address");
        String contact=request.getParameter("contact");
        String to=request.getParameter("email");
        String book_name=request.getParameter("name");
        String book_price=request.getParameter("price");
        Connection con=null;
        PreparedStatement ps=null;
        
        
        //String to=mail;
    	String subject="Order confirmation from Book Hub";
    	String message="Dear  "+name +", we have recieved your order request of item "+book_name+"having price"+book_price+". Your item will be delivered within 7 working days.";
    	
    	final String from="bookhub05@gmail.com";
    	final String password="onlinebookstore";
        try{
        	Class.forName("com.mysql.jdbc.Driver");
        	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
        	ps=con.prepareStatement("insert into orders(customer_name,address,contact,item,price) values(?,?,?,?,?)");
        	ps.setString(1, name);
        	ps.setString(2, address);
        	ps.setString(3, contact);
        	ps.setString(4, book_name);
        	ps.setString(5, book_price);
        	ps.executeUpdate();
        	
        	Properties props=new Properties();
    		props.put("mail.smtp.host", "smtp.gmail.com");
    		props.put("mail.smtp.socketFactory.port", "465");
    		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
    		props.put("mail.smtp.auth", "true");
    		props.put("mail.smtp.port", "465");
    		
    		
    		Authenticator auth = new Authenticator() {
    			public PasswordAuthentication getPasswordAuthentication() {
    				return new PasswordAuthentication(from, password);
    			}
    		};
    		
    		Session ssn = Session.getInstance(props, auth);
    		
    		//Composing the message
    		
    		MimeMessage msg=new MimeMessage(ssn);
    		msg.setFrom(new InternetAddress(from));
    		msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
    		msg.setSubject(subject);
    		msg.setText(message);
    		
    		//Sending message
    		Transport.send(msg);
    		out.println("<script>");
    		out.println("alert('Your Order Has Been Placed Successfully!')");
    		out.println("location='../index.jsp';");
    		out.println("</script>");
        }catch(Exception e){
        	e.printStackTrace();
        }
     %>
</body>
</html>