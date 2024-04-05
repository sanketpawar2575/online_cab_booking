

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Driver Login</title>
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
      
        
       
        
        
        .myrow
        {
            
            height: 600px;
            width: 450px;
            background-image: url("images/.jpg");
            background-color: black;
            margin-left: 550px;
            padding-top: 50px;
            
            border-radius: 20px;
            opacity: 0.6;
           
            
             
            
        
        }
        
      
      
        .box
        {
            height: 35px;
            width: 300px;
            margin-top: 50px;
            margin-left: 70px;
           background-color:white;
            border: none;
            font-size: 20px;
            color: black;
            border-radius: 8px;
            
        }
        .button2
        {
            height: 40px;
            width: 300px;
            margin-top: 30px;
            margin-left: 70px;
            background-color:orange;
          border: none;
          font-size: 20px;
          border-radius: 10px;
          color: white;
          
            
        }
        hr
        {
            width: 400px;
            
            
        }
        .button3
        {
            height: 40px;
            width: 300px;
            margin-top: -10px;
            margin-left: 70px;
            background-color:gray;
          border: none;
          font-size: 20px;
          border-radius: 10px;
          color: white;
          
            
        }
        h1{
            font-size: 40px;
            color: white;
            margin-top: -15px;
         
        }
      
        .pic
        {
            background-image: url("images/driver.png");
            
            height: 100px;
            width: 130px;
            background-repeat: no-repeat;
            background-size: 100%;
            background-position: center;
            margin-left: 130px;
            margin-top: 20px;
            border-radius: 100px;
            
            
            
        }
        
        a
        {
            margin-left:150px;
            color: orange;
            font-size:17px;
            
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
        <form method="post" action="driver_login">
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
            
            
            
        <div class="myrow">
            <h1 align="center">  <span style="color: orange">DRIVER</span> LOGIN</h1>
            
            <div class="pic">
            </div>
            <input class="box" type="text"  placeholder="Username" name="username">
            <input class="box" type="password" placeholder="Password" name="password">
            <input class="button2" type="submit" value="LogIn" name="submit"><br>
            <br>
            <a href="" name="fpassword">forgotten password..?</a>
            <br>
            <hr>
            <br>
            <input type="submit" value="Register" class="button3" name="submit">
                   
            
        </div>  
        
        
        
        
        
            
       </form>  
        
    </body>
</html>
