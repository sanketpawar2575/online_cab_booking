<%-- 
    Document   : Driver_details
    Created on : 6 Jan, 2022, 1:00:07 AM
    Author     : Shubham Patil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Driver_details</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
         <script src="validation.js"></script>
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
            background-color: #ffcccc;
            font-size: 45px;
        }
        .row
        {
            background-color:white;
            height: 680px;
            width: 900px;
            margin-top:20px;
            margin-left: 300px;
            opacity: 0.7;
        }
        .photo
        {
            background-image:;
           
            height: 100px;
            width: 100px;
            background-repeat: no-repeat;
            background-size: 100%;
            background-position: center;
            border-radius: 100px;
            margin-left: 50px;
            margin-top: 30px;
        }
        .box
        {
            background-color: white;
            border-left: none;
            border-right: none;
            border-top: none;
            color: black;
            font-size: 20px;
            margin-top: 32px;
            margin-left: 50px;
            width: 500px;
        }
        .button
        {
            background-color:#3498DB ;
            height: 40px;
            width: 200px;
            color: white;
            font-size: 25px;
            margin-top: 30px;
            margin-left: 340px;
           
           border-color: black;
            border-radius: 20px;
        }
        .photo1
        {
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
        <form method="post" action="driver_registration">
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
            <h1 align="center">Driver Details</h1>
            
            <div class="col-sm-4">
                <div class="photo">
                    <label class="photo1">Photo</label>
                    <input type="file" name="image" placeholder="photo" >
                    
                </div>
            </div>
            
            <div class="col-sm-8">
                <input type="text" class="box" placeholder="*Full Name" name="name" onkeypress="return isString(event)">
                <input type="text" class="box" placeholder="*Mobile Number" name="mobile" maxlength="10" onkeypress="return isNumber(event)">
                 <input type="text" class="box" placeholder="*Address" name="address">
                 <input type="text" class="box" placeholder="*Email" name="email">
                 <input type="text" class="box" placeholder="*license No" name="lno">
                 <input type="text" class="box" placeholder="*Adhar card No" name="adharno"onkeypress="return isNumber(event)">
                 <input type="text" class="box" placeholder="*UserId" name="userid">
                 <input type="password" class="box" placeholder="*password" name="password">
                 <input type="submit" value="Register Now..." class="button" name="submit">
            </div>
            
        </div>
        
        
        
        
        </form>
    </body>
</html>
