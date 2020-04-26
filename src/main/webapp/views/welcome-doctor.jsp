<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Medicure Consultancy</title>
<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/index.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/nav.css" />"
rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>

<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
body, html {
  height: 100%;
  line-height: 1.8;
}

/* Full height image header */
.bgimg-1 {
  background-position: center;
  background-image: url("/resources/static/images/slider3.jpg");
  min-height: 106%;
  margin:0px 0px;
  padding:0px 20px;
  z-index:-1;
}

.w3-bar .w3-button {
  padding: 16px;
}
</style>

</head>

<body>
 <div class="fixed-header">
        <div class="container">
            <nav>
             
            <a href="/">Home</a>
               <a href="../loginUs/doctor">Doctor</a>
                
              
               <a href="#">Diagnostics</a>
                <a href="#">Services</a>
                <a href="list">View Records</a>


<a href="../loginUs/logout" style="float:right">Logout! <%out.print(request.getSession().getAttribute("user")); %></a>
               
                </nav>
                </div>
             </div>
          
           <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <strong style="font-size:30px;color:green;">MEDICURE</strong>
  <br><br>
   <a href="../loginUs/editDoctor">Edit Profile</a>
   <br><br>
  
  <a href="../loginUs/checkAppointment">Check Appointment</a>
  <br><br>
 
  
  
</div>
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
 <form:form id="displayDetails" action="loginUs/displayDetails" method="post" modelAttribute="basicDetails">
<!-- Taking email as input -->
<div style="display:none">
</div>
<input type="email" name="email" placeholder="Enter patient email">
<input class="buttom" name="submit" id="submit" tabindex="10"  type="submit"> 
<div style="color: red">${errorInput}</div>
</form:form>

<form:form id="displayAppDetails" action="loginUs/displayAppDetails" method="post" modelAttribute="basicAppDetails">
<!-- Taking email as input--> 
<div style="display:none">
</div>
<input type="number" name="appid" placeholder="Enter appointment id">
<input class="buttom" name="submit" id="submit" tabindex="10"  type="submit"> 
<div style="color: red">${errorInputId}</div>
</form:form>   

<!-- Header -->
<header class="w3-display-container w3-content w3-center" style="max-width:1500px">
   <img src="<c:url value="/resources/static/images/login2.jpg"/>" alt="Me" class="w3-image" width="900" height="600">
  <div class="w3-display-middle w3-padding-large w3-border w3-wide w3-text-light-grey w3-center">
    <h1 class="w3-hide-medium w3-hide-small w3-xxxlarge" style="color:black">MEDICURE</h1>
    <h3 class="w3-hide-medium w3-hide-small" style="color:black">CONSULTANCY</h3>
  </div>
  
   <div class="w3-bar w3-light-grey w3-round w3-display-bottommiddle w3-hide-small" style="bottom:-16px">
    <a class="w3-bar-item w3-button">SMILE GALLERY</a>
    
  </div>
  </header>
<!-- Page content -->
<div class="w3-content w3-padding-large w3-margin-top" id="portfolio">
<div class="w3-display-container w3-content w3-center">
  <!-- Images (Portfolio) -->
  <img src="<c:url value="/resources/static/images/smile6.jpg"/>"  class="w3-image" width="1000" height="500">
  <img src="<c:url value="/resources/static/images/smile1.jpg"/>"  class="w3-image w3-margin-top" width="1000" height="500">
  <img src="<c:url value="/resources/static/images/smile2.jpg"/>" class="w3-image w3-margin-top" width="1000" height="500">
  <img src="<c:url value="/resources/static/images/smile3.jpg"/>"  class="w3-image w3-margin-top" width="1000" height="500">
  <img src="<c:url value="/resources/static/images/dentist1.jpg"/>" class="w3-image w3-margin-top" width="1000" height="500">
</div>

<!-- End page content -->
</div>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>

 <footer class="w3-row-padding w3-padding-32" style="background-color:black">
    <div class="w3-third" style="color:white">
      <h3>MEDICURE</h3>
      <a href="">Book appointment</a><br>
      <a href="">About Us</a><br>
       <a href="">Contact Us</a>
    </div>
 
    <div class="w3-third" style="color:white">
      <h3>SOCIAL</h3>
      <a href="">Facebook</a><br>
      <a href="">Twitter</a><br>
       <a href="">Instagram</a>
      <!-- <ul class="w3-ul w3-hoverable">
        <li class="w3-padding-0">
          <!-- <img src="/w3images/workshop.jpg" class="w3-left w3-margin-right" style="width:50px"> -->
          <!-- <span class="w3-large" style="color:white">Twitter</span><br>
         
        </li>
        <li class="w3-padding-0">
          <!--<img src="/w3images/gondol.jpg" class="w3-left w3-margin-right" style="width:50px"> -->
          <!-- <span class="w3-large" style="color:white">Facebook</span><br>
       
        </li>
      </ul> -->
    </div>

    <div class="w3-third w3-serif" style="color:white">
      <h3>Contact Us</h3>
      <a href="">Ph no: 7985855652</a>
      <br>
      <a href="">Ph no: 9450216745</a>
     
    </div>
  </footer>
</body>
</html>





