<%-- 
    Document   : Add_route
    Created on : 6 Jan, 2022, 1:00:34 AM
    Author     : Shubham Patil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>car details</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
         <script src="validation.js"></script>
    </head>
    <style>
        body
        {
            background-image:url("images/1.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
            
        }
        .row
        {
            background-color: white;
            opacity: 0.8;
            height: 500px;
            width: 900px;
            margin-top: 150px;
            margin-left: 400px;
        }
        .line
        {
            border-top: none;
            border-left: none;
            border-right: none;
            background-color: white;
            font-size: 25px;
            font-family: MS Serif;
            
        }
        .button
        {
            margin-top: 50px;
            margin-left: 200px;
            width: 150px;
            height: 30px;
            color: white;
            background-color: black;
            border-radius: 20px;
        }
        h1
        {
            font-size: 55px;
            font-family: Poor Richard;
        }
        .box
        {
           
            margin-left:50px;
           margin-top: 300px;
          
            
            height: 200px;
            width: 300px;
            background-image: url("images/car1.png");
            background-repeat: no-repeat;
            background-size: 100%;
            margin-top: 100px;
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
        <form method="post" action="driver_cab_details">
            <nav id="scanfcode" class="navbar">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" id="toogle-button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
       <span class="glyphicon glyphicon-menu-hamburger"></span>                     
      </button>
      <a id="logo" class="navbar-brand" href="#">Online Cab Booking</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
 
        <ul id="link" class="nav navbar-nav navbar-right">
        
 
        <li><a href='driver_login.jsp'>Logout</a></li>
        
       
      </ul>
    </div>
  </div>
</nav>
        <div class="row">
            <div class="col-sm-6">
                <div class="box"></div>
                
            </div>
            
            <div class="col-sm-6">
               
                      <h1><samn style="color:gray">C</samn>ab <span style="color:gray">D</span>etails</h1>
                <br><br><br>
                <input class="line" type="text" placeholder="*Cab No" name="cabno">
                <br><br><br><br>
                <input class="line" type="text" placeholder="*Cab Type" name="cabtype" >
                <br><br><br><br>
                <input class="line" type="text" placeholder="*No of Seats" name="noofseats" onkeypress="return isNumber(event)">
                <br>
                <input class="button" type="submit" value="Submit" name="submit">
                    
                    
               
                
               
                
            </div>
            
            
            
        </div>
        
        
        
        
       </form>
    </body>
</html>
