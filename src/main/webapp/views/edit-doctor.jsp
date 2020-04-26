<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicure Consultancy</title>
<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/index.css" />"
 rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/static/js/app.js" />"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
 <link href="<c:url value="/resources/static/style/patient-form.css" />"
 rel="stylesheet">
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
.w3-padding-32 {
margin-top:45px!important;
}
</style>

</head>
<body background="<c:url value="/resources/static/images/slider3.jpg"/>"/>
 <div class="fixed-header">
        <div class="container">
            <nav>
             <img src="<c:url value="/resources/static/images/logo-edited.png"/>"/>
             <a href="../loginUs/welcomeDoctor">Home</a>
               <a href="../loginUs/doctor">Doctor</a>
               
               <a href="#">Diagnostics</a>
                <a href="#">Services</a>
                <a href="../loginUs/logout" style="float:right">Logout! <%out.print(request.getSession().getAttribute("user")); %></a>
                </nav>
                </div>
             </div>
<div class="container" style="margin-top:50px!important;background-color:white;width: 457px;margin:auto;padding-left:50px;padding-top:50px">
<div class="col-md-offset-2 col-md-7">
<div class="panel panel-info">
<div class="panel-heading">
</div>
<div class="panel-body">

<form:form action="../loginUs/save" cssClass="form-horizontal"
method="post" modelAttribute="doctor" onsubmit="return validate()">
<h4>Edit Information</h4>

<!-- need to associate this data with patient id -->
<form:hidden path="doctorid" />
<form:hidden path="dob" />

<div class="form-group" style="padding:20px">
<div class="fa fa-user icon">
<label for="Name" style="color:white">Doctor Name</label>
<div class="col-md-9">
<form:input path="name" id="name" cssClass="form-control" style="width:500px;"/>
</div>
</div>
</div>
<div class="form-group"  style="padding:20px">
<div class="fa fa-key icon">
<label for="password" class="col-md-3 control-label" style="color:white">Password</label>
<div class="col-md-9">
<form:password path="password" id="password" cssClass="form-control" style="width:500px;"/>
</div>
</div>
</div>
<div class="form-group"  style="padding:20px">
<div class="fa fa-mobile icon">
<label for="phonenum" class="col-md-3 control-label" style="color:white">Phone</label>
<div class="col-md-9">
<form:input path="phoneNum" id="phoneNum" cssClass="form-control" style="width:500px;"/>
</div>
</div>
</div>
<div class="form-group"  style="padding:20px">
<div class="fa fa-envelope icon">
<label for="email" class="col-md-3 control-label" style="color:white">Email</label>
<div class="col-md-9">
<form:input path="email" id="" cssClass="form-control" style="width:500px;"/>
</div>
</div>
</div>

<div class="form-group"  style="padding:20px">
<div class="fa fa-envelope icon">
<label for="email" class="col-md-3 control-label" style="color:white">Specialization</label>
<div class="col-md-9">
<form:input path="specialization" id="" value="Dentist" cssClass="form-control" style="width:500px;" />
</div>
</div>
</div>
<div class="form-group">
<!-- Button -->
<div class="col-md-offset-3 col-md-9">
<form:button cssClass="btn btn-primary" style="align:center;">Submit</form:button>
</div>
</div>

</form:form>
</div>
</div>
</div>
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