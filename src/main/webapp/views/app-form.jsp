<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Appointment</title>
<link href="<c:url value="/resources/static/style/register.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
rel="stylesheet">
<link href="<c:url value="/resources/static/style/index.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body background="<c:url value="/resources/static/images/slider3.jpg"/>"/>
<div class="fixed-header">
        <div class="container">
            <nav>
               <a href="#">Doctor</a>
               
             
               <a href="#">Diagnostics</a>
                <a href="#">Services</a>
                <a href="../loginUs/logout" style="float:right">Logout! <%out.print(request.getSession().getAttribute("user")); %></a>
                </nav>
                </div>
             </div >
<div  class="form">
<h3>Book Appointment</h3>
<form:form id="bookAppointment" action="../appAction" method="post" modelAttribute="appForm">

<div style="display:none">
<input type="text" name="patientname" value=${patient.name}>
<input type="text" name="patientId" value=${patient.patientId}>
<input type="text" name="status" value="Applied"/>
</div>
<label for="birthday">Birthday:</label>
<input type="date" id="dob" name="dob" tabindex="1">

<p class="contact"><label for="symptom">Symptoms</label></p>
<input id="symptom" name="symptom" placeholder="Symptoms" tabindex="3" type="text">

<p class="contact"><label for="gender">Specialization</label></p>
<input id="spacialization" name="specialist" value="Dentist" tabindex="4" readonly="readonly">
            
<p class="contact"><label for="gender">Doctor</label></p>
<select class="select-style gender" id="doctorid" name="doctorid" tabindex="5">

            <option value="select">Select Your specialist</option>
            <option value="1">Dr. Utkarsh Hajela</option>
            <option value="2">Dr. Runumi Devi</option>
            <option value="3">Dr. Garg</option>
             <option value="4">Dr. Sharad</option>
          
            </select><br><br>


<p class="contact"><label for="street">Address</label></p>
<input id="street" name="street" placeholder="Street Address" tabindex="6" type="text">



<p class="contact"><label for="pincode">Pin Code</label></p>
<input id="pincode" name="pincode" placeholder="Enter Pin Code" tabindex="7" type="text">

<p class="contact"><label for="pincode">Date 1</label></p>
<input type="date" id="dob" name="date1" tabindex="8">

<p class="contact"><label for="pincode">Date 2</label></p>
<input type="date" id="dob" name="date2" tabindex="9">

<input class="buttom" name="submit" id="submit" tabindex="11" value="Book Appointment" type="submit"> 
</form:form>
</div>
</body>
</html>