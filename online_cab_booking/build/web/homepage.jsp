

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>card</title>
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
}
/* navigation bar */
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
 
    
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  margin-top:50px;
  
  position: relative;
  margin: auto;

}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 0.01s;
  animation-name: fade;
  animation-duration:1s;
}

@-webkit-keyframes fade {
  from {opacity: .1} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .1} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
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
           <li><a href='#'>Home</a></li>
         <li class="dropdown" id="first-link">
             
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">LogIn <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="user_login.jsp">User LogIn</a></li>
            <li><a href="driver_login.jsp">Driver LogIn</a></li>
            <li><a href="admin_login.jsp">Admin LogIn</a></li>
          </ul>
        </li>
       
        
      </ul>
    </div>
  </div>
</nav>


<div class="slideshow-container">

<div class="mySlides fade">
  
  <img src="images/cab1.jpg" style="width:1550px; height: 700px; margin-top:-15px;">

</div>

<div class="mySlides fade">
  
  <img src="images/cab2.jpg" style="width:1550px; height: 700px;margin-top:-15px;">
  
</div>

<div class="mySlides fade">
  
  <img src="images/cab3.jpg" style="width:1550px; height: 700px;margin-top:-15px;">



</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

</body>
</html>

           
    </body>
    
    
        
</html>