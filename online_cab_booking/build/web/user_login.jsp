
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylsheet" href="bootstrap.css">
       
        <script src="validation.js"> </script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
         <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    </head>
    
   
        <style>
        body
        {
            background-image: url("images/1.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
        }
      
        
        h1
        {
            
            
            
            color:whitesmoke;
            
        }
        
        
        
        .login
        {
            
            height: 600px;
            width: 350px;
           background-color:gold;
            margin-left: 750px;
            padding-top: 50px;
            
            border-radius: 20px;
            opacity: 0.8;
           
            
             
            
        
        }
        
        .textbox
        {
            height: 30px;
            width: 250px;
            margin-left: 50px;
            margin-top: 50px;
           
            background-color: gold;
            border-color: black;
            border-radius: 5px;
            font-size: 17px;
            
        }
        a
        {
            padding-left: 100px;
           
        }
        .button1
        {
            height: 30px;
            width: 250px;
            margin-top: 20px;
            margin-left: 50px;
           background-color: gray;
            border: gray;
        }
        .button2
        {
            height: 40px;
            width: 250px;
            margin-top: 20px;
            margin-left: 50px;
            background-color:bisque;
          border: none;
          font-size: 20px;
          border-radius: 10px;
          
            
        }
        h1{
           margin-top: -10px;
            color: black;
        }
        hr
        {
            margin-top: 20px;
            width: 300px;
        }
        .pic
        {
            background-image: url("images/admin.png");
            height: 100px;
            width: 150px;
            background-repeat: no-repeat;
            background-size: 90%;
            background-position: center;
            margin-left: 100px;
            margin-top: 50px;
            
            
        }
        
       .textbox1
       {
           height: 100px;
           width: 100px;
           margin-left: 150px;
           
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
        <form method="post" action="user_login">
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
   
        <div class="login">
            <h1 align="center">User Login</h1>
            <div class="pic">
                
            </div>
             
            <input class="textbox" type="text" placeholder="Enter Mobile Number or Email" name="userid">
            
            <input type="password"  class="textbox" placeholder="Enter Password" name="password">
            <br>
            <br>
           
            <a href="" name="fpass">Forgotten Password?</a>
            <br>
       
            <input type="submit" name="submit"   value="Log In" class="button1">
            <br>
            <hr>
            
            
           
            <input type="submit" name="submit"  value="Create a Account" class="button2">
            
           
        </div>
        
        
        
            
        
    </form>
    </body>
</html>
