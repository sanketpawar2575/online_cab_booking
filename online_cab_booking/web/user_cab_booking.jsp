<%-- 
    Document   : Book_cab
    Created on : 6 Jan, 2022, 12:57:51 AM
    Author     : Shubham Patil
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cab_booking</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="validation.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <style>
        body
        {
            background-image: url("images/1.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
        }
        .lab{
            font-size: 20px;
            margin-left: -50px;
        }
        .row
        {
            background-color: white;
            height: 600px;
            width: 1100px;
            margin-top: 50px;
            margin-left: 200px;
            opacity: 0.8;
        }
        .row2
        {
            background-color: gold;
            height: 580px;
            border-radius: 20px;
            margin-top: 10px;
            margin-left: 20px;
            
            
        }
        h1
        {
            
        }
        .pack
        {
            font-size: 20px;
            margin-left: 10px;
            
        }
        .line
        {
            border-left: none;
            border-top: none;
            border-right: none;
            background-color: white;
            width: 250px;
            margin-top: 15px;
        }
        .line1
        {
            border-left: none;
            border-top: none;
            border-right: none;
            background-color: white;
            width: 250px;
            margin-top: 165px;
             margin-left: -40px;
           
            
        }
        .line2
        {
             border-left: none;
            border-top: none;
            border-right: none;
            background-color: white;
            width: 250px;
            margin-top: 60px;
             margin-left: -40px;
            
        }
        .line3
        {
              border-left:none;
            border-top: none;
            border-right: none;
            background-color: white;
            width: 250px;
            margin-top:40px;
            margin-left: -40px;
            
            
        }
        .line4
        {
              border-left: none;
            border-top: none;
            border-right: none;
            background-color: white;
            width: 250px;
            margin-top:40px;
             margin-left: -40px;
           
        }
        .date
        {
            padding-top: 40px;
        }
        .button
        {
            background-color: black;
            color: white;
            margin-top: -40px;
            margin-left:200px;
            height: 30px;
            width: 150px;
            
            
        }
        .picture
        {
            background-image: url("images/car.png");
            height: 400px;
            width: 400px;
            margin-left:-130px;
            padding-top: 530px;
            background-repeat: no-repeat;
            background-size: 100%;
            background-position: center;
        }
       
        .pack1
        {
           
            margin-left: 100px;
            padding-left: 100px;
        }
        .select
        {
            font-f
            
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
#button-link ,
{
  color:#f2f2f2;
  border-style: solid;
  border-width: 1px;
  border-color: black;
  border-radius: 2px;
  background-color: #fa6a48;
  line-height: 17px;
}
#button-link a
{
  color:#f2f2f2;
 
}
     

        
    </style>
    
    
   
    <body>
        <form method="post" action="user_cab_booking">
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
        
        
        <li><a href='user_My_booking.jsp'>My Booking</a></li>
        <li><a href='user_cab_booking.jsp'>Cab Booking</a></li>
        <li><a href='user_login.jsp'>Logout</a></li>
        
       
      </ul>
    </div>
  </div>
</nav>
        <div class="row">
            <div class="col-sm-4">
                <h1>Online Cab Booking</h1>
               
                
                
                <br>
                <input type="radio" value="Ganeral" name="pradio" class="pack1" id="pack">  <label class="pack">General</label>  &nbsp;&nbsp;&nbsp;&nbsp;                             
                <input type="radio" value="Business" name="pradio" class="pack1"id="pack1"> <label class="pack">Business</label>&nbsp;&nbsp;&nbsp; &nbsp;
                <input type="radio" value="VIP" name="pradio" class="pack1"id="pack2"> <label class="pack">VIP</label>
                <br><br>
                <input type="text" class="line" placeholder="*Name" name="name" onkeypress="return isString(event)"> 
                <br><br><br>
                <input class="line" type="text" placeholder="*Pickup Point" name="ppoint" onkeypress="return isString(event)">
                <br><br><br>
                <input class="line" type="text" placeholder="*Kilo Meter(KM)" id="km"  name="km">
                <br><br>
                <label class="line">Amount to journey</label>
                
                 <input class="line" type="text" placeholder="Total amount to journey" name="amount"  onclick="sum();" id="amount">
                 <br><br>
                <input class="line" type="text" placeholder="*No Of passenger" name="noofpassenger">
                <br><br>
                <input class="line" type="text" placeholder="*Pin Code" name="pincode" onkeypress="return isNumber(event)">
                
            </div>
            <div class="col-sm-4">
                
                <input class="line1"  type="text" placeholder="*Contact No" maxlength="10" min="10" name="contact" onkeypress="return isNumber(event) ">
                
                <input class="line2" type="text" placeholder="*Drop Point" name="dpoint" onkeypress="return isString(event)">
                <br><br><br>
                <label class="lab">*Booking Time and date</label>
                <input class="line3" type="Time" placeholder="*Time" name="time">
                <input class="line4" type="date" placeholder="*Date" name="date">
                <br><br>
                 <label class="select">*select driver</label>
                 <br> 
                 <br>
      
      
                <select name="driver_name"  >
                    
                        
                  <% 
        
           Connection cn = null;
           Statement st = null;
           
           String driver_name = "";
           String driver_id = "";
          
           
           
            Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");
                    st=cn.createStatement();
                    
                    String sql="select * from driver_registration where status = 'Ideal' ";
                    ResultSet rs=st.executeQuery(sql);
        
                    
                    while(rs.next())
                    {
                        driver_name = rs.getString("full_name");
                        driver_id = rs.getString("driver_id");
                        
                 %>
                 
                  
      
                    <option><%=driver_name%></option>
                    
                    
                    
                    
                    <% } %>
                    
                </select>
                    
                 <br>
               
                
                
                       
            </div>
           
            
            <div class="col-sm-4">

                <div class="row2">  <div class="picture">
              <input class="button" type="submit" name="submit" value="Book">

                    </div>
                    
                   
                </div>            
                
                
                
            </div>
            
          
        
        </div>
        
        
        
        
       </form>
                    
                    
                    
                    
         <script type="text/javascript">
             function sum() {
                 
        var pack = document.getElementById('pack').value;
        var pack1 = document.getElementById('pack1').value;
        var pack2 = document.getElementById('pack2').value;

        if(pack == "Ganeral")
            {
                var km = document.getElementById('km').value;
                var result = parseInt(km) * 20;
                if(!isNaN(result))
                {

                    document.getElementById("amount").value = result; 
                }
            }
            
            if(pack1 == "Business")
            {
                var km = document.getElementById('km').value;
                var result = parseInt(km) * 35;
                if(!isNaN(result))
                {

                    document.getElementById("amount").value = result; 
                }
            }
            
             if(pack2 == "VIP")
            {
                var km = document.getElementById('km').value;
                var result = parseInt(km) * 50;
                if(!isNaN(result))
                {

                    document.getElementById("amount").value = result; 
                }
            }
             
         
            }
         </script>
    </body>
</html>


