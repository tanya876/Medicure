<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>online consultancy</title>
<link href="<c:url value="/resources/static/style/bootstrap.min.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/static/style/index.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
</head>
<body background="<c:url value="/resources/static/images/bg5.jpg"/>"/>
 <div class="fixed-header">
        <div class="container">
            <nav>
               <a href="#">Doctor</a>
                
                <a href="#">Book Appointment</a>
               <a href="#">Diagnostics</a>
                <a href="#">Services</a>
                <a href="../loginUs/logout" style="float:right">Logout! <%out.print(request.getSession().getAttribute("user")); %></a>
           

          
                
            </nav>
        </div>
    </div>
	<div class="container">
<img src="<c:url value="/resources/static/images/logo.png"/>"/>
			
		
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title" style="font-size:20px">Patient Appointment Details</div>
				</div>
		
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<tr>
							<th>Appointment Id</th>
							<th>Patient Id</th>
							<th>Patient Name</th>
							<th>Status</th>
							<th>Date1</th>
							<th>Date2</th>
							<th>Selected Date</th>
							
						
							<th>Update Status</th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempApp" items="${checkList}">

							<!-- construct an "update" link with doctor id -->
							<c:url var="acceptedLink" value="/loginUs/accepted">
								<c:param name="app_id" value="${tempApp.app_id}" />
							</c:url>
<c:url var="rejectedLink" value="/loginUs/rejected">
								<c:param name="app_id" value="${tempApp.app_id}" />
							</c:url>
							<tr bgcolor="green">
								<td>${tempApp.app_id}</td>
								<td>${tempApp.patientId}</td>
								<td>${tempApp.patientname}</td>
								<td>${tempApp.status}</td>
						
							<td>${tempApp.date1}</td>
							<td>${tempApp.date2}</td>
							<td>${tempApp.selectedDate}</td>
							

								<td>
									<!-- display the update link --> <a href="${acceptedLink}">Accepted</a>
								</td>
								<td>
									
									<a href="${rejectedLink}">Rejected</a>
								</td>

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
		</div>

</body>

</html>
