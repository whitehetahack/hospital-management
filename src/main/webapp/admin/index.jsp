<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<%@include file="../Componet/allcss.jsp" %>
<style type="text/css">
    .paint-card{
    box-shadow: 0 0 10px 0 rgba(0,0,0,0.3); 
    }
</style>
</head>
<body>
<%@include file="navbar.jsp" %>

<c:if test="${empty adminobj }">
<c:redirect url="../admin_login.jsp"></c:redirect>
</c:if>

<div class="container p-5">
  <p class="text-center fs-3">Admin Dashboard</p>
		<c:if test="${not empty errormsg}">
			<p class="text-center text-danger">${errormsg}</p>
			<c:remove var="errormsg" scope="session" />
		</c:if>
		<c:if test="${not empty sucmsg}">
			<p class="text-center text-success">${sucmsg}</p>
			<c:remove var="sucmsg" scope="session" />
		</c:if>
		<div class="row">
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
					<i class="fas fa-user-circle fa-3x"></i><br>
					<p class="fs-4 text-center">
						User<br>43
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

		<div class="col-md-4 mt-2">
			<div class="card paint-card" data-bs-toggle="modal"
			data-bs-target="#exampleModal">
				<div class="card-body text-center text-success">
					<i class="fas fa-calendar-check fa-3x"></i><br>
					<p class="fs-4 text-center">
						Specialist<br>34
					</p>
				</div>
			</div>
		</div>
	</div>

		
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
					<form action="../addSpecialist" method="post">
					<div class="form-group">
					<label>Enter Specialist Name</label>
					<input tyep="text" name="specName" class="form-control">
					</div>
					<div class="text-center mt-3">
					<button type="submit" class="btn btn-primary">Add</button>
					</div>
					</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>