<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>review</title>
          <link rel="stylsheet" href="bootstrap.css">
       
        <script src="validation.js"> </script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
         <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
          <script src="validation.js"></script>
       
    </head>
    <style>
        body
        {
            background-image: url("images/1.jpg");
            background-size: 100%;
            background-repeat: no-repeat;
        }
        .row
        {
            background-image: url("images/21.jpg");
            background-size: 100%;
            background-repeat: no-repeat;
            height: 600px;
            width: 500px;
            opacity: 0.9;
            margin-top: 70px;
            margin-left: 500px;
            border-radius: 20px;
           
        }
        h1
        {
           padding-top: 140px;
           margin-left: 50px;
           font-size: 45px;
           color: black;
        }
        hr
        {
            width: 240px;
            margin-left: 50px;
           margin-top:-30px;
           
        }
        .box
        {
            height: 250px;
            width: 370px;
            border: none;
            margin-left: 70px;
            background-color: pink;
            border-radius: 20px;
            opacity: 0.6;
            font-size: 20px;
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
        <form method="post" action="user_feedback">
            
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
        
        <li><a href='homepage.jsp'>Home</a></li>
        <li><a href='user_track.jsp'>Track</a></li>
        <li><a href='user_My_booking.jsp'>My Booking</a></li>
        <li><a href='user_cab_booking.jsp'>Cab Booking</a></li>
        <li><a href='user_login.jsp'>Logout</a></li>
        
       
      </ul>
    </div>
  </div>
</nav>
        <div class="row">
            <h1>Feedback</h1>
             <hr>
             
             <input class="box" type="text">
             
           
            
        </div>
        </form>
    </body>
</html>