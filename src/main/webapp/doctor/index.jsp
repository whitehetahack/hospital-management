<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Dashboard</title>
<%@include file="../Componet/allcss.jsp" %>
<style type="text/css">
    .paint-card{
    box-shadow: 0 0 10px 0 rgba(0,0,0,0.3); 
    }
</style>

</head>
<body>
<c:if test="${empty doctobj }">
<c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>
<%@include file="navbar.jsp"%>
	<p class="text-center fs-3">Doctor  Dashboard</p>

<div class="container p-5">
		<div class="row justify-content-md-center">
			<div class="col-md-4 ">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctor<br>5
						</p>
					</div>
				</div>
			</div>
		<div class="col-md-4">
			<div class="card paint-card">
				<div class="card-body text-center text-success">
					<i class="fas fa-calendar-check fa-3x"></i><br>
					<p class="fs-4 text-center">
						Total Appointment<br>453
					</p>
				</div>
			</div>
		</div>
	</div>
	</div>

</body>
</html>