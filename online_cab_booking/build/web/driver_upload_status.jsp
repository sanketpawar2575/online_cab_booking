<%-- 
    Document   : upload_status
    Created on : 30 Jan, 2022, 1:19:13 PM
    Author     : Shubham Patil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>upload</title>
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
        .row
        {
            height: 600px;
            width: 700px;
            background-image: url("images/19.jpg");
            background-size: 100%;
            background-repeat: no-repeat;
            opacity: 0.8;
            margin-top: 100px;
            margin-left: 500px;
        }
        h1
        {
            margin-left: 140px;
            padding-top: 20px;
           
            color: white;
            font-size: 40px;
        }
        .pic
        {
            height: 70px;
            width: 70px;
            background-image: url("images/up.png");
            background-size: 100%;
            background-repeat: no-repeat;
            background-position: center;
            border-radius: 100px;
            margin-left: 50px;
            margin-top: -80px;
        }
        .button
        {
            margin-top: 40px;
            margin-left: 150px;
           
           
            
        }
        .lab
        {
            color: white;
            font-size: 24px;
           
            margin-top: 50px;
        }
        .box
        {
            margin-left: 170px;
            margin-top: 15px;
            height: 27px;
            width: 200px;
            border: no;
            border-radius: 10px;
        }
        .lab1
        {
              color: white;
            font-size: 25px;
            margin-left: 170px;
           
           
            
        }
        .button1
        {
            margin-top: 30px;
            margin-left: 80px;
            background-image: url("images/19.jpg");
            background-size: 100%;
            background-repeat: no-repeat;
            height: 35px;
            width: 100px;
            color: white;
            border-color: white;
            border-radius: 20px;
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
        <form method="post" action="driver_upload_status">
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
        
        <li><a href='driver_confirmation.jsp'>Confirmation</a></li>
        <li><a href='driver_upload_status.jsp'>Profile</a></li>
        <li><a href='driver_login.jsp'>Logout</a></li>
        
       
      </ul>
    </div>
  </div>
</nav>
        
        <div class="row">
             <h1>Upload Status</h1>
           
            
            <div class="pic">
                
            </div>
             
             <input style="margin-left:100px;" class="button" type="radio" value="Ideal" name="status"> <label class="lab">Ideal</label>
             
             <input style="margin-left:100px;" class="button" type="radio" value="Busy" name="status"> <label class="lab">Busy</label>
             <br>
             <br>
             
             
             
             <input class="button1" type="submit" value="Close" name="submit">   <input class="button1" type="submit" value="upload" name="submit">  
             
           
            
            
        </div>
       </form>
    </body>
</html>