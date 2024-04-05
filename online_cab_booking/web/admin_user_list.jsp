<%-- 
    Document   : Total_journey
    Created on : 28 Jan, 2022, 11:07:26 AM
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
          opacity: 0.8;
          background-color: black;
           background-repeat: no-repeat;
            background-size: 100%;
            background-position: center;
            margin-top: 50px;
            margin-left: 150px;
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
        
       <li><a href='admin_Total_journey.jsp'>Pending Journey</a></li>
        <li><a href='.jsp'>Completed Journey</a></li>
        <li><a href='admin_driver_list.jsp'>Driver List</a></li>
         <li><a href='admin_user_list.jsp'>User List</a></li>
        <li><a href='admin_login.jsp'>Logout</a></li>
        
       
      </ul>
    </div>
  </div>
</nav>
        
        <div class="row">
            <h1 align="center">User Registration  List</h1>
            <div class="table-users">
  
   
   <table cellspacing="0">
      <tr>
         <th>Name</th>
          <th>Address</th>
         <th>Email</th>
         <th>Mobile</th>
          <th>Birth date</th>
          <th>Gender</th>
      </tr>
      
      
      <% 
        
           Connection cn = null;
           Statement st = null;
           
           String full_name = "";
           String Address = "";
           String Email = "";
           String mobile_no = "";
           String Birth_date = "";
           String gender = "";
         
            
           
           
            Class.forName("com.mysql.jdbc.Driver");
                    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_cab_booking","root","root");
                    st=cn.createStatement();
                    
                    String sql="select * from user_registration ";
                    ResultSet rs=st.executeQuery(sql);
        
                    
                    while(rs.next())
                    {
                        full_name = rs.getString("full_name");
                        Address = rs.getString("Address");
                        Email= rs.getString("Email");
                        mobile_no = rs.getString("mobile_no");
                        Birth_date = rs.getString("birth_date");
                        gender = rs.getString("gender");
                       
                        
                    
      %>

      <tr>
         <td><%=full_name%></td>
         <td><%=Address%></td>
         <td><%=Email%></td>
         <td><%=mobile_no%></td>
         <td><%=Birth_date%></td>
         <td><%=gender%> </td>
         
      </tr>
      
      <%
                 }
      %>


   
   </table>
</div>  
             
            
      
            
        </div>
       </form>
    </body>
</html>
