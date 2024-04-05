<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
6<%-- 
    Document   : Booking_list
    Created on : 6 Jan, 2022, 1:01:31 AM
    Author     : Shubham Patil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>journey_details</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
            height: 500px;
            width: 1300px;
            background-color: white;
            opacity: 0.9;
            margin-top: 90px;
            margin-left: 100px;
        }
        .row1
        {
            background-color: #cccccc;
            height: 500px;
            
        }
        h1
        {
            color: black;
            font-size: 60px;
        }
        .icon
        {
            background-image: url("images/track.png");
            background-color: #cccccc;
            background-repeat: no-repeat;
            background-size: 100%;
            background-position: center;
            height: 170px;
            width: 170px;
            margin-top: 70px;
            margin-left: 50px;
            
        }
        .line
        {
            height: 40px;
            width: 240px;
            background-color: #cccccc;
            border-radius: 15px;
            margin-top: 100px;
            font-size: 20px;
            
           
            
            border: none;
            
            
        }
        .button
        {
            margin-top: 100px;
            background-color: #ffb3da;
            color: white;
            border:none;
            border-radius: 20px;
            width: 170px;
            height: 40px;
            font-size: 20px;
        }
        
        
        table 
        {
         font-family: arial, sans-serif;
         border-collapse: collapse;
         width: 95%;
         margin-top:50px;
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
        
      <li><a href='driver_confirmation.jsp'>Confirmation</a></li>
        <li><a href='driver_upload_status.jsp'>Profile</a></li>
        <li><a href='driver_login.jsp'>Logout</a></li>
        
       
      </ul>
    </div>
  </div>
</nav>
        <div class="row">
            <div class="col-sm-3">
                <div class="row1">
                    <br><br>
                      <h1 align="center">Journey</h1>
                      <h1 align="center">Details</h1>
                      
                      <div class="icon"></div>
                   
                    
                </div>
               
               
                
            </div>
            
            <div class="col-sm-9">
                
               <table>
  <tr>
    <th>Name</th>
    <th>Contact No</th>
    <th>Pickup</th>
    <th>Drop</th>
    <th>KM</th>
    <th>Date</th>
    <th>Time</th>
    <th>No of passenger</th>
    <th>Pin Code</th>
    <th>status</th>
    <th>Submit</th>
  </tr>
  
      
      <% 
        
           Connection cn = null;
           Statement st = null;
           
           String booking_id="";
           String full_name = "";
           String contact = "";
           String Pickup = "";
           String drop = "";
           String km = "";
           String date = "";
           String time="";
           String passenger="";
           String pincode="";
           
           
           
            Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");
                    st=cn.createStatement();
                    
                    String sql="select * from user_cab_booking where ( driver_name = '"+session.getAttribute("full_name") +"' && ( status='Pending' || status='Ongoing' ) ) ";
                    ResultSet rs=st.executeQuery(sql);
        
                    
                    while(rs.next())
                    {
                        full_name = rs.getString("Full_name");
                        contact = rs.getString("contact_no");
                        Pickup= rs.getString("pickup_point");
                        drop = rs.getString("drop_point");
                        km = rs.getString("kilo_meter");
                        date = rs.getString("booking_date"); 
                        passenger=rs.getString("No_of_passenger"); 
                        booking_id=rs.getString("id");
                        
                    
      %>
     <form method="post" action="driver_confirmation">
      <tr>
      <input type="hidden" name="booking_id" value="<%=booking_id%>">
         <td><%=full_name%></td>
         <td><%=contact%></td>
         <td><%=Pickup%></td>
         <td><%=drop%></td>
         <td><%=km%></td>
         <td><%=date%> </td>
         <td><%=time%> </td>
         <td><%=passenger%> </td>
        <td><%=pincode%> </td>
        <td>
            <select name="status">
                <option>Pending</option>
                <option>Ongoing</option>
                <option>Completed</option>
            </select>
        </td>
        <td><input type="submit" name="submit" value="change status"></td>

      </tr>
      </form>  
      
      <%
            

             }
      %>

  
</table>
                
                
            </div>
        </div>
        
        
    </body>
</html>







