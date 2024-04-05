<%-- 
    Document   : Total_journey
    Created on : 28 Jan, 2022, 11:07:26 AM
    Author     : Shubham Patil
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>total journey</title>
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
            height: 600px;
            width: 1300px;
          opacity: 0.6;
          /* background-image:url("images/16.jpg");*/
          background-color: black;
           background-repeat: no-repeat;
            background-size: 100%;
            background-position: center;
            margin-top: 10px;
            margin-left: 130px;
            border-radius: 20px;
        }
        h1
        {
            color: white;
            font-size: 50px;
            font-family: 'Amatic SC', cursive;
        }
        .lab
        {
            color: white;
            margin-left: 100px;
            margin-top: 50px;
            font-size: 25px;
            
        }
        .button
        {
            color: white;
            margin-top:270px;
            margin-left: 550px;
            width: 100px;
            height: 35px;
            background-image: url("images/16.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
            background-position: center;
            border: none;
            font-size: 20px;
            border-radius: 20px;
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
        <form method="post" action="admin_Total_journey">
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
        
        <div class="row">
            <h1 align="center">Pending Journey</h1>
            
              <table>
  <tr>
     
    <th>Name</th>
    <th>Contact No</th>
    <th>Pickup</th>
    <th>Drop</th>
    <th>KM</th>
    <th>Date</th>
    <th>Time</th>
    <th>passenger</th>
    <th>Driver name</th>
    <th>Driver contact</th>
    <th>Car no</th>
    <th>Amount</th>
    <th>Status</th>
   
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
           String status="";
           String amount="";
           String driver_name="";
           String driver_contact="";
           String cab_no="";
           String cab_type="";
           
           
           
           
            Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");
                    st=cn.createStatement();
                    
                    String sql= "select * from user_cab_booking where status='Pending' ";
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
                        time=rs.getString("booking_time");
                        driver_contact=rs.getString("driver_contact");
                        driver_name=rs.getString("driver_name");
                        cab_no=rs.getString("cab_no");
                        cab_type=rs.getString("cab_type");
                          amount=rs.getString("amount");
                        status=rs.getString("status");
   

  %>  
  
  <tr> 
     
       <td><%=full_name%></td>
        <td><%=contact%></td>
         <td><%=Pickup%></td>
          <td><%=drop%></td>
           <td><%=km%></td>
            <td><%=date%></td>
            <td><%=time%></td>
             <td><%=passenger%></td>
             <td><%=driver_name%></td>
                <td><%=driver_contact%></td>
             <td><%=cab_no%></td>
             <td><%=amount%></td>
             <td><%=status%></td>
  </tr>

  
</table>
                
  <%
   }
                    %>
            
           
            
        </div>
       </form>
    </body>
</html>
