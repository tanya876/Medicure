<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicure</title>
<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/static/style/index.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/static/js/welcomePop.js" />"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body background="<c:url value="/resources/static/images/bg6.jpg"/>"/>
<div class="fixed-header">
        <div class="container">
            <nav>
               <a href="#">Doctor</a>
                
                <a href="#">Book Appointment</a>
               <a href="#">Diagnostics</a>
                <a href="#">Services</a>
                </nav>
                </div>
             </div >
	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h2 class="text-center">Login Patient</h2>
			<div class="panel panel-info">
			
				<div class="panel-body">

 <form:form id="loginform" action="loginUs" method="post" modelAttribute="user">
 <div class="form-group">
 <div class="fa fa-envelope icon"></div>
 <label for="email"  class="col-md-3 control-label" style="color:green;font-size:30px;">Email</label>
 <div class="col-md-9">
    <input type="text" name="email" placeholder="Email" cssClass="form-control" />
    </div>
    </div>
     <div class="form-group">
  <div class="fa fa-key icon"></div>
<label for="password" class="col-md-3 control-label" style="color:green;font-size:30px;">Password</label>  
<div class="col-md-9">
    <input type="password" placeholder="Password" name="password" cssClass="form-control" />
    </div>
    </div>
    <div class="form-group">
<!-- Button -->
<div class="col-md-offset-3 col-md-9">
   <button cssClass="btn btn-primary" onclick="myalert()">Login</button>
    </div>
   </div>
  
  </form:form>
  </div>
  </div>
  </div>
  </div>
  <div style="color: blue">${error}</div>
</body>
</html>