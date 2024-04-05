<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
jou

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>mybooking</title>
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
            height: 650px;
            width: 1000px;
            background-color: white;
            margin-top: 40px;
            margin-left: 250px;
            opacity: 0.8;
        }
        .picture
        {
            background-color:#eb99ff;
            height: 90px;
            width: 1000px;
            padding-top: 10px;
         
        }
        h1
        {
            font-size: 50px;
            color:white;
             padding-top: -80px;
             font-family:Kristen ITC;
        }
        .color
        {
            background-color: gray;
            height: 560px;
            width: 470px;
        }
        .line
        {
            height: 40px;
            width: 280px;
            margin-top: 50px;
            border-radius: 10px;
            font-size: 20px;
           
            margin-left: 20px;
            border-color: black;
        }
        .button
        {
             height: 40px;
              margin-top: 50px;
               border-radius: 20px;
               font-size: 20px;
               border-color: black;
               color: black;
            
        }
        .button1
        {
            margin-left: 150px;
            margin-top: 100px;
            color: white;
            background-color: #595959;
            height: 40px;
            width: 200px;
            font-size: 25px;
            border-radius: 20px;
            border: none;
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
  background-color: #fa6a48;
  line-height: 17px;
}
#button-link a
{
  color:#f2f2f2;
 
}
        
         table 
        {
         font-family: arial, sans-serif;
         border-collapse: collapse;
         width: 85%;
         margin-top:50px;
         margin-left:100px;
         background-color: white;
         
        }

        td, th 
        {
        border: 1px solid orange;
        text-align: left;
        padding: 8px;
        }

        tr:nth-child(even) 
        {
        background-color: orange;
        
        }   
        
    </style>
    
    
    
    
    <body>
       
             <nav style="margin-top:-20px;" id="scanfcode" class="navbar">
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
        <div class="row">
            
            
            <div class="picture">
                <h1 align="center">MY BOOKING</h1>
                
            </div>
              <table>
  <tr>
    <th>Name</th>
    <th>Contact No</th>
    <th>Date</th>
    <th>Pickup</th>
    <th>Drop</th>
    <th>Driver Contact </th>
    <th>track</th>
    
  </tr>
  
  <%
        Connection cn = null;
           Statement st = null;
           
           String id ="";
           String full_name = "";
           String contact = "";
           String Pickup = "";
           String drop = "";
           String km = "";
           String date = "";
           String time="";
           String passenger="";
           String pincode="";
           String user_id="";
           
           
            Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");
                    st=cn.createStatement();
                    
                    String sql="select * from user_cab_booking where user_id='"+session.getAttribute("user_id")+"' ";
                    ResultSet rs=st.executeQuery(sql);
        
                    
                    while(rs.next())
                    {
                        id=rs.getString("id");
                        full_name = rs.getString("Full_name");
                        contact = rs.getString("contact_no");
                        Pickup= rs.getString("pickup_point");
                        drop = rs.getString("drop_point");
                        km = rs.getString("kilo_meter");
                        date = rs.getString("booking_date");
                        passenger=rs.getString("No_of_passenger"); 
                        user_id=rs.getString("user_id");
  

  %>
 
   <form method="post" action="user_My_booking" >
  <tr>
  <input type="hidden" name="user_id" value="<%=user_id%>">
  <input type="hidden" name="id" value="<%=id%>">
  <td><%=full_name%></td> 
  <td><%=contact%></td>
    <td><%=date%></td>
  <td><%=Pickup%></td>
   <td><%=drop%></td> 
   <td><input type="submit" value="cancel order" name="submit"</td>
      <td><input type="submit" value="track" name="submit"</td>
  </tr>
  </form>
  <%
     }

  %>
           
             
                
               
                
                
            </div>
       
      
    </body>
</html>