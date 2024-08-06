<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.entity.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient</title>
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
<div class="container p-3">
   <div class="row">
         <div class="col-md-12">
            <div class="card paint-card">
               <div class="card-body">
                 <p class="fs-3 text-center">Patient Details</p>
                 <c:if test="${not empty errormsg}">
				<p class="text-center text-danger">${errormsg}</p>
				<c:remove var="errormsg" scope="session" />
				</c:if>
				<c:if test="${not empty sucmsg}">
				<p class="text-center text-success">${sucmsg}</p>
				<c:remove var="sucmsg" scope="session" />
				</c:if> 
				<table class="table">
					<thead>
					    <tr>
					   	  <th scope="col">Full Name</th> 
					   	  <th scope="col">Gender</th>
					   	  <th scope="col">Age</th>
					   	  <th scope="col">Appointment Date</th>
					   	  <th scope="col">Email</th>
					   	  <th scope="col">Mob No</th>
					   	  <th scope="col">Diseases</th>
					   	  <th scope="col">Status</th>
					   	  <th scope="col">Actions</th>
					    </tr>
					</thead>
					<tbody>
					<%
					  Doctor d=(Doctor)session.getAttribute("doctobj");
					  AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
					  List<Appointment> list =dao.gteAllAppointmentbyDoctorLogin(d.getId());
					  for(Appointment ap:list)
					  {%>
				         <tr>
				         	<th><%=ap.getFullName() %></th>
				         	<td><%=ap.getGender() %></td>
				         	<td><%=ap.getAge() %></td>
				         	<td><%=ap.getAppoinDate() %></td>
				         	<td><%=ap.getEmail() %></td>
				         	<td><%=ap.getPhNo() %></td>
				         	<td><%=ap.getDiseases() %></td>
				         	<td><%=ap.getStatus() %></td>
				         	<td>
				         	<a href="#" class="btn btn-success btn-sm">Comment</a>
				         	</td>
				         </tr>
				       <% }%>
					</tbody>
				</table>
               </div>
            </div>
         </div>
   </div>
</div>
</body>
</html>