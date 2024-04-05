<%-- 
    Document   : practice
    Created on : 15 Mar, 2022, 8:00:19 PM
    Author     : Shubham Patil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
               <link rel="stylesheet" href="style.scss">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <style>
      body
{
  background-image: url("images/1.jpg");
  background-repeat: no-repeat;
  background-size: 100%;
  font-family: 'Encode Sans', sans-serif;
} #scanfcode
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
.button
        {
            margin-top: 30px;
            margin-left: 80px;
            background-image: url("images/19.jpg");
            background-size: 100%;
            background-repeat: no-repeat;
            height: 35px;
            width: 200px;
            color: white;
            border-color: white;
            border-radius: 20px;
            font-size: 20px;
           
            
        }
        
        .box
        {
            height: 600px;
            width: 800px;
            background-image: url("images/19.jpg");
            background-size: 100%;
            background-repeat: no-repeat;
            opacity: 0.8;
            margin-top: 100px;
            margin-left: 500px;
        }
        h1{
            margin-top: 20px;
            padding-top: 20px;
            margin-left: 300px;
            color: white;
                
        }
</style>
    <body>
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
        <li><a href='admin_Total_journey.jsp'>Pending Journey</a></li>
        <li><a href='admin_completed_journey.jsp'>Completed Journey</a></li>
        <li><a href='admin_driver_list.jsp'>Driver List</a></li>
        <li><a href='admin_user_list.jsp'>User List</a></li>
        <li><a href='Report.jsp'>Reports</a></li>
        <li><a href='admin_login.jsp'>Logout</a></li>
        
       
      </ul>
    </div>
  </div>
</nav>
        <div class="box" >
            <h1>Reports</h1>
        <input type="submit" class="button" value="completed journey" name="cjourney">
        <br>
        
         <input type="submit" class="button" value="pending journey" name="pjourney">
         <br>
         
          <input type="submit" class="button" value="Driver List" name="ddetails">
          <br>
           <input type="submit" class="button" value="User_List" name="udetails">
           <br>
           
            <input type="submit" class="button" value="Payment Recipt" name="payment">
        

</div>


    </body>
</html>
