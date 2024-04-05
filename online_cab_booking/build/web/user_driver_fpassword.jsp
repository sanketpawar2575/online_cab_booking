<%-- 
    Document   : user_forgot_password
    Created on : 15 Feb, 2022, 4:06:25 PM
    Author     : Shubham Patil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="validation.js"></script>
        <title>JSP Page</title>
          <link rel="stylsheet" href="bootstrap.css">
       
        <script src="validation.js"> </script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
         <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
          <script src="validation.js"></script>
       
    </head>
    <style>
        
        body{
            background-image: url("images/1.jpg");
           background-repeat: no-repeat;
            background-size: 100%;
        }
        
        .row{
             height: 600px;
            width: 500px;
            background-image:;
            background-color: black;
            background-size: 100%;
            background-repeat: no-repeat;
            opacity: 0.7;
            margin-top: 50px;
            margin-left: 500px;
            border-radius: 20px;
        }
        h1{
            
        }
        
        .pic
        {
            background-image:  url("images/forgot.png");
           
            height: 150px;
            width: 300px;
             background-repeat: no-repeat;
            background-size: 100%;
            margin-left: 100px;
            margin-top: px;
             
        }
        
        .box
        {
            height: 30px;
            width: 300px;
            margin-left: 50px;
            margin-top: 30px;
            border-radius: 10px;
            background-color: black;
            color: white;
            
        }
        
        .box1
        {
             height: 30px;
            width: 80px;
            margin-top: 20px;
            margin-left: 10px;
             background-color: black;
            color: orange;
            
        }
        
        .box2{
            height: 30px;
            width: 100px;
            background-color: black;
            color: orange;
             margin-top: 40px;
            margin-left: 150px;
            border-bottom-color: white;
            
        }
            #scanfcode
{
  border-radius:0px;
  background:#fff;
  padding:10px;
  font-size:17px;
}
/* logo or main heading */
#logo
{
  font-size:20px;
  font-weight:bolder;
  color:#00004d;
  letter-spacing:2px;
}
/* navigation links*/
#link a
{
  color:#01325d;
  margin:0 20px 0 10px;
  letter-spacing:1.5px;
   
  
}
 

/* navigation link with right border */
#first-link
{
  padding-right:6px;
  border-right:solid 1px #ccc;
  
}
/* sign up link button and toggle button */
#button-link ,#toogle-button
{
  color:#f2f2f2;
  border-style: solid;
  border-width: 1px;
  border-color: rgba(0,0,0,.2);
  border-radius: 2px;
  background-color: orange;
  line-height: 17px;
  
}
#button-link a
{
  color:#f2f2f2;
  background-color: orange;
}

        
        
        
        
    </style>
    <body>
        <form method ="post" action="user_driver_fpassword">
        <nav  id="scanfcode" class="navbar">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" id="toogle-button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
       <span class="glyphicon glyphicon-menu-hamburger"></span>                     
      </button>
      <a id="logo" class="navbar-brand" href="#">Online Cab Booking</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
 
      <ul id="link" class="nav navbar-nav navbar-right">
           <li><a href='#'>Home</a></li>
         <li class="dropdown" id="first-link">
             
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">LogIn <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="user_login.jsp">User LogIn</a></li>
            <li><a href="driver_login.jsp">Driver LogIn</a></li>
            <li><a href="admin_login.jsp">Admin LogIn</a></li>
          </ul>
        </li>
       
        
      </ul>
    </div>
  </div>
</nav>
   
        <div class="row">
            <div class="pic">
                
            </div>
            <input type="text" name="username" placeholder="Username" class="box">
            <br>
            <input type="text" name="email" placeholder="EmailId" class="box">  <input type="submit" name="sendotp" value="Send OTP" class="box1">
            <br>
            <input type="text" name="otp" placeholder="OTP" class="box" onkeypress="return isNumber(event)">
            <br>
            <input type="password" name="Rpassword" placeholder="Reset Password" class="box">
            <br>
            <input type="password" name="cpassword" placeholder="Comfirm Reset Password" class="box">
            <br>
            <input type="submit" name="resetb" value="Reset" class="box2" >
        </div>
        
        
        </form>
    </body>
</html>
