<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/index.css" />"
rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>


<title>Medicure Consultancy</title>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
body, html {
  height: 100%;
  line-height: 1.8;
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
              
                 <a href="../loginUs/doctor">Doctors</a>
                   <a href="../login">Book Appointment</a>
               <a href="diagnostic">Diagnostic</a>
                <a href="#">Services</a>
           
<a href="../list">View Records</a>
               <a href="../patient/signup" class="signup">SignUp</a>
                 <a href="../login" class="login">Login</a>
               
            </nav>
        </div>
    </div>
<div class="w3-content" style="max-width:1100px">

  <!-- About Section -->
  <div class="w3-row w3-padding-64" id="about">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
       <img src="<c:url value="/resources/static/images/doc1.jpg"/>" alt="John" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="750">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">Dr. Satyendra Singh</h1><br>
      <h5 class="w3-center">General Physician</h5>
      <p class="w3-large">Dr. Satyendra Singh is one of the best physicians in the area and has 9 years of experience.</p>
      <p class="w3-large w3-text-grey w3-hide-medium">He has completed his MBBS from Era Lucknow Medical College, Lucknow and CCDM from Apollo Hospitals.</p>
<p><b>ADDRESS: 20,H-Block,Saket,Delhi</b></p>
<a href="../login" class="w3-button w3-light-grey w3-block">Book Appointment</a>
    </div>
  </div>
  
  <hr>
  
  <!-- Menu Section -->
  <div class="w3-row w3-padding-64" id="menu">
    <div class="w3-col l6 w3-padding-large">
      <h1 class="w3-center">Dr. Pratik Mishra</h1><br>
     <h5 class="w3-center">General Physician</h5>
      <p class="w3-large">Dr. Pratik Mishra is a General Physician and has a professional experience of 5 years. </p>
      <p class="w3-large w3-text-grey w3-hide-medium">He completed his MBBS from R.G. Kar Medical College, Kolkata and PGCC (Diabetes) and HYUY.</p>
  <p><b>ADDRESS:- 1/20,C-Block,Botanical Garden,Noida  </b></p>
 <a href="../login" class="w3-button w3-light-grey w3-block">Book Appointment</a>
    </div>
 
    <div class="w3-col l6 w3-padding-large">
       <img src="<c:url value="/resources/static/images/doc2.jpg"/>" class="w3-round w3-image w3-opacity-min" alt="Menu" style="width:100%">
    </div>
  </div>
  <hr>
  
  <div class="w3-row w3-padding-64" id="about">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
       <img src="<c:url value="/resources/static/images/doc3.jpg"/>" alt="John" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="750">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">Dr. Ruby Kansal</h1><br>
      <h5 class="w3-center">Pediatrician</h5>
      <p class="w3-large">Dr. Ruby Kansal is a Pediatrician and has a professional experience of 5 years.</p>
      <p class="w3-large w3-text-grey w3-hide-medium">She completed her MBBS from Kasturba Medical College in 2008 and MD - Pediatrics from Kasturba Medical College.</p>
<p><b> ADDRESS:- 10/1,H-Block,Sector-62,Noida</b></p>
 <a href="../login" class="w3-button w3-light-grey w3-block">Book Appointment</a>
    </div>
  </div>
  
  <hr>
  
   <!-- Menu Section -->
  <div class="w3-row w3-padding-64" id="menu">
    <div class="w3-col l6 w3-padding-large">
      <h1 class="w3-center">Dr. Divya Aggarwal</h1><br>
     <h5 class="w3-center">General Physician</h5>
      <p class="w3-large">Dr. Pratik Mishra is a General Physician and has a professional experience of 5 years. </p>
      <p class="w3-large w3-text-grey w3-hide-medium">He completed his MBBS from R.G. Kar Medical College, Kolkata and PGCC (Diabetes) and HYUY.</p>
 <p><b> ADDRESS:- 1069,H-Block,Niti Khand,Indirapuram</b></p>
 <a href="../login" class="w3-button w3-light-grey w3-block">Book Appointment</a>
    </div>
    
    <div class="w3-col l6 w3-padding-large">
       <img src="<c:url value="/resources/static/images/doc4.jpg"/>" class="w3-round w3-image w3-opacity-min" alt="Menu" style="width:100%">
    </div>
  </div>
  <hr>
</div>

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