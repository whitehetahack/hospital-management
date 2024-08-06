<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user login</title>
<%@include file="Componet/allcss.jsp" %>
<style type="text/css">
    .point-card {
    box-shadow: 0 0 10px 0 rgba(0,0,0,0.3); 
    }
</style>
</head>
<body>
<%@include file="Componet/navbar.jsp" %>

<div class="container p-5">
<div class="row">
 <div class="col-md-4 offset-md-4">
  <div class="card point-card">
    <div class="card-body">
	  <p class="fs-4 text-center">User Login</p>
	  
						<c:if test="${not empty succmsg}">
							<p class="text-center text-success">${succmsg}</p>
							<c:remove var="succmsg" scope="session" />
						</c:if>
						<c:if test="${not empty errormsg}">
							<p class="text-center text-danger">${errormsg}</p>
							<c:remove var="errormsg" scope="session" />
						</c:if>
						
		<form action="userLogin" method="post">
	     <div class="mb-3">
	        <label class="form-lable">Email address</label>
	        <input required name="email" type="email" class="form-control">
	     </div>
	      <div class="mb-3">
	        <label class="form-lable">Password</label>
	        <input required name="password" type="password" class="form-control">
	     </div>
	     <button type="submit" class="btn bg-success text-white col-md-12">Login</button>
	  </form>  
	  <br>Don't have an account?<a href="signup.jsp" class="text-decoration-none">create one</a>  
    </div> 
  </div> 
 </div>
</div>
</div>
</body>
</html>