<!DOCTYPE html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Login</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>

<nav class="navbar navbar-fixed-top">
    <div class="navbar-header">
        <nav class="navbar-brand">
            <a href="login.jsp">Login</a>
            
        </nav>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
         <li><a href="../index.jsp"  style="font-weight:bold;font-size:18px;"> Home</a></li>
       </ul>
     </div>
</nav>
<div>
    <div class="container mycontainer" style="margin-bottom: 70px;">
        <div class="row">
            <div class="MyLoginPanel col-sm-6 col-md-5 col-md-offset-3 col-lg-4 col-lg-offset-4 col-sm-offset-3">
                <div class="panel-body" id="loginForm">
                    <div class="row">
                        <div class="center-block">
                            <h3 class="text-center" style="margin-top: 0px;margin-bottom: 15px;"> Login</h3>
                        </div>
                    </div>
                    <div class="row MyLoginDiv">
                    <form action="validate.jsp" method="post">
                        <div class="col-sm-12 col-md-10 col-md-offset-1">
                            <div class="form-group">
                                <br />
                                
                                <label class="MyLabel">Username:</label>
                                <div class="input-group">
                                
                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                    <input type="text" name="username" class="form-control" placeholder="Enter Username" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="MyLabel">Password:</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                    <input type="password" name="password" class="form-control"  placeholder="*******************" />
                                </div>
                            </div>
                            <%
                                 String x=request.getParameter("err");
                                 if(x!=null){
        	                %>
        	                   <center>
                                   <p style="color:red; font-size: 10pt;">
                                    <%=x%>
                                   </p>
                                </center>
          <%  
           }
        %>
                            <div class="form-group">
                                <label class="MyLabel">
                                    <input type="checkbox"/>
                                    Remember Me
                                </label>
                                <a class="pull-right ForgotPasswordLink" href="#">Forgot Password ?</a>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-6 col-xs-6" style="padding-left: 0px;padding-right: 0px;">
                                    <button id="loginButton" type="submit" class="btn btn-success">Login</button>
                                </div>
                                </form>
                                <div class="col-sm-6 col-xs-6" style="padding-right: 0px;">
                                    <button id="registerButton" type="submit" class="btn btn-default pull-right">Register</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-body" id="registerForm">
                    <div class="row">
                        <div class="center-block">
                            <h3 class="text-center" style="margin-top: 0px;margin-bottom: 15px;"> Register</h3>
                        </div>
                    </div>
                    <div class="row MyLoginDiv">
                        <div class="col-sm-12 col-md-10 col-md-offset-1">
                            <div class="form-group">
                                <br />
                                <label class="MyLabel">Name:</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                    <input type="text" class="form-control"  placeholder="Enter Name" />
                                </div>
                            </div>
                            <div class="form-group">
                                <br />
                                <label class="MyLabel">User Name:</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                    <input type="text" class="form-control"  placeholder="Enter User Name" />
                                </div>
                            </div>
                            <div class="form-group">
                                <br />
                                <label class="MyLabel">Password:</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                    <input type="password" class="form-control"  placeholder="Enter Password" />
                                </div>
                            </div>
                            <div class="form-group">
                                <br />
                                <label class="MyLabel">Confirm Password:</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                    <input type="password" class="form-control"  placeholder="Confirmation Password" />
                                </div>
                            </div>
                            <div class="form-group">
                            <label class="MyLabel" style="margin-top: 25px;">User Type:</label>
                             <div class="dropdown">
                                <select style="height: 34px;width: 100%;margin-bottom: 15px;">
                                    <option value="Select">Select</option>
                                    <option value="Publisher">Publisher</option>
                                    <option value="Customer">Customer</option>
                                </select>
                             </div> 
                            </div>
                            <div class="form-group" style="margin-top: 25px;">
                                <div class="col-sm-6 col-xs-6" style="padding-left: 0px;padding-right: 0px;">
                                    <button id="registerButton" type="submit" class="btn btn-default pull-right">Register</button>
                                </div>
                                <div class="col-sm-6 col-xs-6" style="padding-right: 0px;">
                                  <button id="loginButton2" type="submit" class="btn btn-success">Login</button>
                              </div>
                          </div>
                      </div>
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