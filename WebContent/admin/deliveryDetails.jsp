<!DOCTYPE html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Delivery Details</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
      <%
        String name=request.getParameter("name");
        String price=request.getParameter("price");
      %>

<nav class="navbar navbar-fixed-top">
    <div class="navbar-header">
        <nav class="navbar-brand">
            <a href="admin/login.jsp">Delivery Details</a>
        </nav>
    </div>
</nav>
<div class="col-sm-offset-3 col-sm-6" style="border: solid;border-color: #25A2B6;margin-top:130px;">
  <div class="form-group">
       <form action="mail.jsp?name=<%=name%>&price=<%=price%>" method="post">
       <div>
        <label class="MyLabel" style="margin-top: 25px;">Customer Name:</label>
         <div class="input-group">
           <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
           <input type="text" class="form-control" name="customer_name" placeholder="Enter Your Name" />
         </div>
       </div>
       <div>
        <label class="MyLabel" style="margin-top: 15px;">Address:</label>
         <div class="input-group">
           <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
           <input type="text" class="form-control" name="address" placeholder="Enter Your Address" />
         </div>
       </div>
       <div>
        <label class="MyLabel" style="margin-top: 15px;">Contact:</label>
         <div class="input-group">
           <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
           <input type="text" class="form-control" name="contact"  placeholder="Enter Your Contact Number" />
         </div>
       </div>
       <label class="MyLabel" style="margin-top: 15px;">Email:</label>
        <div class="input-group">
           <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
           <input type="text" class="form-control" name="email"  placeholder="Enter Your Email" />
         </div>
        <div class="col-sm-6" style="margin-top: 40px;padding-left: 0px;">
           <div class="form-group">
         <a href=""><button id="registerButton" type="submit" class="btn btn-info" style="width: 300px;">Place Order</button></a>
     </div>
 </div>
 </form>
   <div class="col-sm-6" style="margin-top: 40px;padding-right: 0px;">
   <div class="form-group">
         <a href="books.jsp"><button id="registerButton" type="submit" class="btn btn-danger pull-right" style="width: 300px;">Cancel</button></a>
     </div>
   </div>
          
       </div>
       </div>
  </div>
</div>
</div>


</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
    $('document').ready(function(){
        $('#registerButton').click(function(){
            $('#loginForm').hide();
            $('#registerForm').show();
        });
        $('#loginButton2').click(function(){
            $('#registerForm').hide();
            $('#loginForm').show();
        });
    });
</script>
</body>
</html>