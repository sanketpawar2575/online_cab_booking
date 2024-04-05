

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
   
        <style>
        body
        {
            background-image: url("images/1.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
        }
      
        
       
        
        
        .myrow
        {
            
            height: 550px;
            width: 450px;
            background-image: url("images/8.jpg");
            margin-left: 550px;
            padding-top: 50px;
            
            border-radius: 20px;
            opacity: 0.8;
           
            
             
            
        
        }
        
      
      
        .box
        {
            height: 35px;
            width: 300px;
            margin-top: 50px;
            margin-left: 70px;
           background-color:rgba(0,0,0,0.87);
            border: none;
            font-size: 20px;
            color: white;
            border-radius: 8px;
            
        }
        .button2
        {
            height: 40px;
            width: 300px;
            margin-top: 40px;
            margin-left: 70px;
            background-color:orange;
          border: none;
          font-size: 20px;
          border-radius: 10px;
          color: white;
          
            
        }
        h1{
            font-size: 40px;
         
        }
      
        .pic
        {
            background-image: url("images/admin.png");
            height: 100px;
            width: 150px;
            background-repeat: no-repeat;
            background-size: 90%;
            background-position: center;
            margin-left: 130px;
            margin-top: 20px;
            
            
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
        
        <form method="post" action="admin_login">
        
        <div class="myrow">
            <h1 align="center">  <span style="color: orange">ADMIN</span> LOGIN</h1>
            
            <div class="pic">
            </div>
            <input class="box" type="text"  placeholder="Username" name="username">
            <input class="box" type="password" placeholder="Password" name="password">
            <input class="button2" type="submit" value="LogIn" name="submit">
            
            
            
            
           
        </div>
        
        
        
            
        </form>
        
    </body>
</html>
