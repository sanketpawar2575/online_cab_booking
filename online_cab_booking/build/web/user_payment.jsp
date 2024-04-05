<%-- 
    Document   : Add_car
    Created on : 6 Jan, 2022, 12:59:31 AM
    Author     : Shubham Patil
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>payment</title>
             <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
         <script src="validation.js"></script>
       
    </head>
    
    <style>
        body
        {
          background-image: url("images/1.jpg");
          background-size: 100%;
          background-repeat: no-repeat;
        }
        .row
        {
            
            height: 650px;
            width: 450px;
            opacity: 0.7;
            margin-top: 50px;
            margin-left: 550px;
            border-radius: 50px;
            background-color:#333333;
        }
        .pic
        {
            height:100px;
            width: 100px;
            margin-top: px;
            
           
        }
        h1
        {
            color: white;
            margin-top: -80px;
            margin-left: 150px;
        }
        .line
        {
            margin-left: 150px;
            margin-top: 10px;
            width: 150px;
            height: 30px;
            background-color: #333333;
            border-radius: 20px;
            font-size: 20px;
            color: white;
           
            border-color: white;
              border-left: none;
            border-right:  none;
            border-top: none;
        }
        h3
        {
            color: white;
            margin-top: 20px;
            font-size: 15px;
            margin-left: 20px;
        }
        .line1
        {
            margin-top: 40px;
            margin-left: 50px;
            height: 40px;
            width: 320px;
            border-color: white;
            color: white;
            font-size: 20px;
            background-color: #333333;
            border-radius: 15px;
            border-left: none;
            border-right:  none;
            border-top: none;
        }
        h4
        {
            color: white;
            font-size: 15px;
            margin-left: 20px;
            margin-top: 20px;
        }
        i{
            margin-left: 20px;
        }
        
        q{
            margin-left: 50px;
        }
        button
        {
            background-color: #333333;
            color:white; 
            border-left: none;
            border-right: none;
            border-top: none;
            border-bottom: none;
           
            
        }
        y
        {
            font-size: 80px;
            margin-left: 30px;
            color: skyblue;
            padding-top: 35px;
          
            
        }
        
        .lab1
        {
           
            margin-left: 65px;
          font-size: 20px;
          color: white;
        }
        
           .lab2
        {
           
            margin-left: 45px;
          font-size: 20px;
          color: white;
        }
        
        
      
        
        
        
        
        
    </style>
    
    
    
    <body>
        <form method="post" action="user_payment">
        <div class="row">
             
            <div class="pic">
                 <y class="fab fa-amazon-pay"></y>
            </div>
            <h1>Total Payment</h1>
          
           
            <input class="line" type="text" name="amount" placeholder="Amount">
            <br>
            <h3>Customer Details<span style="color: gray">-------------------------------------------------</span></h3>
            <input class="line1"  type="text" placeholder="   Name" name="name" onkeypress="return isString(event)">  <i class="fa fa-pencil"></i>
            <br>
            <input class="line1" type="text" placeholder="   Enter Email" name="email">
            <br>
            
            <input class="line1" type="number" placeholder="   Contact No" name="contact" onkeypress="return isNumber(event)">
            <br>
            <h4>Select Payment Method<span style="color:grey">---------------------------------------</span></h4>
            <br><br>
         
            <div class="col-sm-6" >
                <button name="submit" type="submit" style="font-size:40px;margin-left:100px;" value="cash" > <s class="fas fa-hand-holding-usd"> </s></button>
                <br>
                  <label class="lab2"> Cash </label>
                
            </div>
         
           
           

             
            
            
        </div>
        </form>
    </body>
</html>