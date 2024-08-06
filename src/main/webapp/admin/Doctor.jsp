<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specalist, java.util.*, java.io.*"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor</title>
<%@include file="../Componet/allcss.jsp" %>
<style type="text/css">
    .paint-card{
    box-shadow: 0 0 10px 0 rgba(0,0,0,0.3); 
    }
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container-fluid p-3">
<div class="row">
    <div class="col-md-5 offset-md-4">
       <div class="card paint-card">
          <div class="card-body">
              <p class="fs-3 text-center">Add Doctor</p>
						<c:if test="${not empty errormsg}">
							<p class="text-center text-danger">${errormsg}</p>
							<c:remove var="errormsg" scope="session" />
						</c:if>
						<c:if test="${not empty sucmsg}">
							<p class="text-center text-success">${sucmsg}</p>
							<c:remove var="sucmsg" scope="session" />
						</c:if>
			   <form action="../addDoctor" method="post">
			       	 <div class="mb-3">
  						<label  class="form-label">Full Name</label>
 					 	<input type="text" required name="fullName" class="form-control" >
					</div>
					<div class="mb-3">
  						<label  class="form-label">DOB</label>
 					 	<input type="date" required name="dob" class="form-control" >
					</div>
					<div class="mb-3">
  						<label  class="form-label">Qualification</label>
 					 	<input type="text" required name="Qualification" class="form-control">
					</div>
					<div class="mb-3">
  						<label  class="form-label">Specialist</label>
 					 	<select name="spec" required class="form-control">
 					 	    <option>--Select--</option>
 					 	    <% SpecialistDao dao=new SpecialistDao(DBConnect.getConn());
 					 	  		  List<Specalist>list= dao.getAllSpecialist();
 					 	  		for(Specalist s:list){
 					 	  		%>
 					 	  			
 					 	  			<option><%=s.getSpcialistName()%></option>
 					 	  		<% 
 					 	  		}
 					 	    %>
 					 	    
 					 	</select>
					</div>
					<div class="mb-3">
  						<label  class="form-label">Email</label>
 					 	<input type="text" required name="Email" class="form-control" >
					</div>
					<div class="mb-3">
  						<label  class="form-label">Mob No</label>
 					 	<input type="text" required name="mobno" class="form-control" >
					</div>
					<div class="mb-3">
  						<label  class="form-label">Password</label>
 					 	<input type="password" required name="password" class="form-control" >
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
			   </form>
		 </div>
       </div>
    </div>
</div>
</div>
</body>
</html>