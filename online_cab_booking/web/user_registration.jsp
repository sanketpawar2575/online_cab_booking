    `<%-- 
    Document   : user_registration
    Created on : 6 Jan, 2022, 12:58:50 AM
    Author     : Shubham Patil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user registration </title>
       <link rel="stylsheet" href="bootstrap.css">
       
        <script src="validation.js"> </script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
         <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
          <script src="validation.js"></script>
       
    </head>
    
    <style>
        .row1{
            height: 650px;
            width: 1000px;
           
            
            background-color:whitesmoke;
            margin-left: 250px;
            
            
            
            
        }
        .row
        {
            margin-left: 100px;
            height: 550px;
            width: 800px;
            background-color: black;
            opacity: 0.6;
            margin-left: 600px;
            margin-top: 20px;
            
        }
        
        h2{
            color: white;
            font-size: 40px;
            font-family: Tempus Sans ITC;
            
        }
        body{
            
           background-image: url("images/1.jpg");
           background-repeat: no-repeat;
           background-size: 100%;
           
           
           
            
        }
        h1{
            font-family: Papyrus;
            font-size: 50px;
            margin-left: 750px;
            
            
        }
        
        .box{
            background-color: black;
            border-left: none;
            border-right: none;
            border-top: none;
            color: white;
            width: 300px;
            font-size: 20px;
            
            
            
        }
        .box2{
            
            border-left: none;
            border-right: none;
            border-top:10px;;
            color: white;
            width: 300px;
            font-size: 20px;
            
            
        }
        .box3{
             background-color: black;
             border-color:white;
             border-radius: 20px;
           
            color: orange;
            width: 300px;
            font-size: 20px;
            margin-left: 250px;
            margin-top: 20px;
            
            
        }   
        .gender
        {
            color: white;
            font-size:15px;
            
            
            
        }
        h3
        {
            color: white;
            
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
  color: black;
}
/* navigation links*/
#link a
{ 
    margin:0 20px 0 10px;
  letter-spacing:1.5px;
  color: black;
   
  
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
        
        <form method="post" action="user_registration">
            <nav style="margin-top:-20px; height: 70px;" id="scanfcode" class="navbar">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" id="toogle-button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
       <span class="glyphicon glyphicon-menu-hamburger"></span>                     
      </button>
      <a id="logo" class="navbar-brand" href="#">Online Cab Booking</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
 
        <ul id="link" class="nav navbar-nav navbar-right">
        
        <li><a href='homepage.jsp'>Home</a></li>
        
        <li><a href='user_My_booking.jsp'>My Booking</a></li>
        <li><a href='user_cab_booking.jsp'>Cab Booking</a></li>
        <li><a href='user_login.jsp'>Logout</a></li>
        
       
      </ul>
    </div>
  </div>
</nav>
            
        <h1><span style="color: orange">U</span><span style="color: white">ser</span>
        <span style="color: orange">R</span><span style="color: white">gister</span>
        <span style="color: orange">F</span><span style="color: white">orm</span>
        </h1>
            
        <div class="row">
            
            <h2 align="center"> Personal Details</h2>
            <br>
            <div class="col-sm-6">
                <i class='fas fa-user-alt'> </i>  <input class="box" type="text" name="name" placeholder="Full name" onkeypress="return isString(event)">
                <br><br><br>
                <input class="box" type="text" name="email" placeholder="Email">
                <br><br><br>
                <input class="box" type="password" name="password" placeholder="Password">
                <br><br><br>
                <input class="box" type="date" name="birth" placeholder="Date Of Birth">
               
               
                
                <br><br<br>
                 <br><br<br>
                  <br><br<br>
               
                
                 
                 
             
                
            </div>
            <div class="col-sm-6">
                
                 <input class="box" type="text" name="address" placeholder="Address">
                <br><br><br>
                
                 
                <input class="box" type="text" name="mobile" placeholder="Mobile No" onkeypress="return isNumber(event)">
                <br><br><br>  
                <input class="box" type="password" name="cpassword" placeholder="comform password">
                <br><br>
                
                
                <h3 > Gender</h3>
                
                <input class="gender" type="radio" name="radio" value="male">   <label  class="gender"> male</label> <br>
                <input class="gender" type="radio" name="radio" value="female">   <label  class="gender">Female</label><br>
                 <input class="gender" type="radio" name="radio" value="other">   <label  class="gender">Other</label><br>
                 
                
                
            </div>
            <br><br><br><br>
             <input class="box3" type="submit" name="submit" value="Register">
            
        </div>
            
            
        
        </form>
    </body>
</html>
