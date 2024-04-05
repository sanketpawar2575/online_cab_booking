<%-- 
    Document   : track
    Created on : 4 Feb, 2022, 8:10:52 AM
    Author     : Shubham Patil
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>track</title>
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
            width: 1100px;
            background-image: url("images/20.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
            background-position: center;
            margin-left: 230px;
            margin-top: 50px;
            opacity: 0.7;
           
        }
        h1
        {
            color: white;
            font-size: 40px;
            background-color: #ffaa00;
            
        }
        .lab
        {
            color: white;
            margin-top: 25px;
            margin-left: 20px;
            font-size: 15px;
        }
        .box
        {
            margin-left: 20px;
            width: 280px;
            height: 30px;
            border-radius: 10px;
            border: none;
            color:#ffffff;
            background-color: black;
            
            
        }
        .pic
        {
            height: 170px;
            width: 170px;
            background-color: white;
           
            margin-left: -70px;
        }
        .lab2
        {
            padding-top: 130px;
        }
        h4
        {
            color: white;
            margin-left: -100px;
        }
        .button
        {
            width: 50px;
            height: 30px;
            border-radius: 10px;
            border: none;
            background-color: orange;
        }
        .button1
        {
            margin-top: 250px;
            background-color: orange;
            width: 100px;
            height: 30px;
            border: none;
            border-radius: 20px;
            color: black;
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

.box3
{
    background-color:orange;
            height: 45px;
            width: 150px;
            color: white;
            font-size: 15px;
            margin-top: 0px;
            margin-left: 200px;
           
           border-color: black;
            border-radius: 20px;
           
}
   

    </style>
    
    
    
    <body>
         
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
        
        <li><a href='homepage.jsp'>Home</a></li>
     
        <li><a href='user_My_booking.jsp'>My Booking</a></li>
        <li><a href='user_cab_booking.jsp'>Cab Booking</a></li>
        <li><a href='user_login.jsp'>Logout</a></li>
        
       
      </ul>
    </div>
  </div>
</nav>
        <div class="row">
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
           String ex_km="";
           String driver_name="";
           String driver_contact="";
           String cab_no="";
           String cab_type="";
           
           
           
           
            Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");
                    st=cn.createStatement();
                    
                    String sql="select * from user_cab_booking where id='"+session.getAttribute("id")+"' ";
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
            
            
            
            
            
            <h1 align="center">Track</h1>
            
            <div class="col-sm-5">
                <label class="lab">Pickup Point: </label>
                <br>
                <input type="text" class="box" name="ppoint" value="<%=Pickup%>"disabled="">

                <label class="lab"></label>
                <br>
                
                 <label class="lab">Time</label>
                <br>
                <input type="text" class="box" name="time" value="<%=time%>"disabled="">
                <br>
                
                 <label class="lab">Cab No</label>
                <br>
                <input type="text" class="box" name="cabno" value="<%=cab_no%>"disabled="">
                <br>
                
                <label class="lab">Driver Contact No</label>
                <br>
                <input type="Number" class="box" name="dcontact" value="<%=driver_contact%>"disabled="">
                <br>
                
                <label class="lab">Total Amount</label>
                <br>
                <input type="text" class="box" value="<%=amount%>"disabled="">
                <br>
                
              
            </div>
            
            <div class="col-sm-5">
                <label class="lab">Drop Point</label>
                <br>
                <input type="text" class="box" name="dpoint" value="<%=drop%>" disabled="" >
                <br>
                
                 <label class="lab">Contact Number</label>
                <br>
                <input type="Number" class="box" name="contactno" value="<%=contact%>" disabled="">
                <br>
                
                <label class="lab">Cab Type</label>
                <br>
                <input type="text" class="box" name="cabtype" value="<%=cab_type%>" disabled="">
                <br>
                
                  <label class="lab">Running Given</label>
                <br>
                <input type="text" class="box" name="running" value="<%=km%>" disabled="">
                <br>
                
                 
                
                <label class="lab">Status</label>
                <br>
                <input class="box" type="text" name="status" value="<%=status%>" disabled="">
                <br><br><br>
                
                <form method="post" action="Report_View.jsp">
                    <input type="hidden" name="id" value="<%=id%>">
                  <input class="box3" type="submit" name="submit" value="Print payment Reset">
                
                </form>
                
                
            </div>
            
            
            
        </div
        <%
               }%>
            
            
    
    </body>
</html>
