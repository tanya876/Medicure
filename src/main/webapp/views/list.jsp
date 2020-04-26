<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Medicure Consultancy</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/index.css" />"
rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
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
                 <a href="../loginUs/doctor">Doctors</a>
                  <a href="../login">Book Appointment</a>
               <a href="diagnostic">Diagnostic</a>
                <a href="#">Services</a>
           
               
            </nav>
        </div>
    </div>
	<div class="container">
<img src="<c:url value="/resources/static/images/logo.png"/>"/>
			
		
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title" style="font-size:20px">Patient Details</div>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<tr>
							<th>Name</th>
							<th>Password</th>
							<th>Email</th>
						
							
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempPatient" items="${patient}">

							<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/customer/updateForm">
								<c:param name="patientId" value="${tempPatient.patientId}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/customer/delete">
								<c:param name="patientId" value="${tempPatient.patientId}" />
							</c:url>

							<tr bgcolor="green">
								<td>${tempPatient.name}</td>
								<td>${tempPatient.password}</td>
								<td>${tempPatient.email}</td>

							

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
			
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title" style="font-size:20px">Doctor Details</div>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<tr>
							<th>Name</th>
							<th>Password</th>
							<th>Email</th>
						<th>Specialization</th>
							
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempDoctor" items="${doctor}">

							<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/customer/updateForm">
								<c:param name="doctorid" value="${tempDoctor.doctorid}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/customer/delete">
								<c:param name="doctorid" value="${tempDoctor.doctorid}" />
							</c:url>
					

							<tr bgcolor="green">
								<td>${tempDoctor.name}</td>
								<td>${tempDoctor.password}</td>
								<td>${tempDoctor.email}</td>
								<td>${tempDoctor.specialization}</td>

							

							</tr>

						</c:forEach>

					</table>

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
