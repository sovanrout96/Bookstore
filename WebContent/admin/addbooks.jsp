<!DOCTYPE html>
<html class="no-js" lang="">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Add Book</title>
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
        <a class="navbar-brand" href="#">Book Hub Publisher Panel</a>
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
          <a href="publisherProfile.jsp">My Profile</a>
        </h4>
      </div>
    </div>
     <div class="panel panel-primary">
      <div class="panel-heading">
        <h4 class="panel-title" data-parent="#accordion" href="">
          <a href="publisherPanel.jsp">My Books</a>
        </h4>
      </div>
    </div>
    <div class="panel panel-primary Mypanel">
     <div class="panel-heading">
      <h4 class="panel-title" data-parent="#accordion" >
       <a href="addbooks.jsp">Add Book</a>
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
    <h4 class="heading">Add Books</h4>
  </div>
</div>
<div class="col-sm-offset-4 col-sm-4" style="border: solid;border-color: #25A2B6;">
  <div class="form-group">
       <form action="addBook.jsp" method="post">
       <div>
        <label class="MyLabel" style="margin-top: 25px;">Book Name:</label>
         <div class="input-group">
           <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
           <input type="text" class="form-control" name="book_name" placeholder="Enter Book Name" />
         </div>
       </div>
       <div>
        <label class="MyLabel" style="margin-top: 15px;">Author Name:</label>
         <div class="input-group">
           <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
           <input type="text" class="form-control" name="author_name" placeholder="Enter Author Name" />
         </div>
       </div>
       <div>
        <label class="MyLabel" style="margin-top: 15px;">Book Price:</label>
         <div class="input-group">
           <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
           <input type="text" class="form-control" name="book_price"  placeholder="Enter Book Price" />
         </div>
       </div>
       <label class="MyLabel" style="margin-top: 15px;">Book Type:</label>
       <div class="dropdown">
        <select name="book_type" style="height: 34px;width: 100%;margin-bottom: 15px;">
           <option value="Select">Select</option>
           <option value="Study">Study</option>
           <option value="Entertainment">Entertainment</option>
           <option value="Biography">Biography</option>
           <option value="Novel">Novel</option>
           <option value="Kids">Kids</option>
           <option value="Notes">Notes</option>
        </select>
       </div> 
       <div class="form-group" style="margin-top: 15px;">
        <div class="col-sm-6 col-xs-6" style="padding-left: 0px;padding-right: 0px;">
   <button id="registerButton" type="submit" class="btn btn-info" style="background-color: #096d79;
   margin-left: 95px;margin-bottom: 25px;width: 140px;">Add Book</button>
          </form>
       </div>
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
</body>
</html>

