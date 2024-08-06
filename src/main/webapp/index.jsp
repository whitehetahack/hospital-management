
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital System</title>
<%@include file="Componet/allcss.jsp" %>

<style type="text/css">
    .point-card {
    box-shadow: 0 0 10px 0 rgba(0,0,0,0.3); 
    }
</style>
</head>
<body>
<%@include file="Componet/navbar.jsp" %>


<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 6"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/doc1.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/doc2.png" class="d-block w-100" alt="..."height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/doc3.png" class="d-block w-100" alt="..."height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/doc4.png" class="d-block w-100" alt="..."height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/doc5.jpg" class="d-block w-100" alt="..."height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/doc6.png" class="d-block w-100" alt="..."height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
	
<div class="container p-3">
<p class="text-center fs-2">key Features of our Hospital</p>
<div class="row ">
   <div class="col-md-8 p-6">
   <div class="row">
    <div class="col-md-6 p-2">
      <div class="card point-card">
         <div class="card-body">
           <p class="fs-5">100% Safety</p>
           <p>Lorem ipum dolor sit amet, consectetur adipisicing elit.
               Voluptatem,inventore</p>
         </div>
      </div>
    </div>
    <div class="col-md-6 p-2">
      <div class="card point-card">
         <div class="card-body">
           <p class="fs-5">Clean Environment</p>
           <p>Lorem ipum dolor sit amet, consectetur adipisicing elit.
               Voluptatem,inventore</p>
         </div>
      </div>
    </div>     
    <div class="col-md-6 p-2">
      <div class="card point-card">
         <div class="card-body">
           <p class="fs-5">Friendly Doctors</p>
           <p>Lorem ipum dolor sit amet, consectetur adipisicing elit.
               Voluptatem,inventore</p>
         </div>
      </div>
    </div>   
    <div class="col-md-6 p-2">
      <div class="card point-card">
         <div class="card-body">
           <p class="fs-5">Medical Research</p>
           <p>Lorem ipum dolor sit amet, consectetur adipisicing elit.
               Voluptatem,inventore</p>
         </div>
      </div>
    </div> 
   </div>
   </div>
   <div class="col-md-4 ">
       <img alt="" src="img/doct.png" height="300px p-5" align="right">
   </div> 
</div>
</div>

<hr>

<div class="container p-2">
<p class="text-center fs-2"> Our Team</p>
<div class="row">
   <div  class=" col-md-3">
   <div class="card paint-card">
      <div class="card-body text-center">
      <img alt="" src="img/doctor1.png" width="250px" height="300px" >
      <p class="fw-bold fs-5">Dr.Siva Kumar</p>
      <p class="fs-7">(CEO & Chairman)</p>
      </div>
   </div>
   </div>
   
   <div  class=" col-md-3">
   <div class="card paint-card">
      <div class="card-body text-center">
      <img alt="" src="img/doct5.png" width="250px" height="300px">
      <p class="fw-bold fs-5">Samuani simi</p>
      <p class="fs-7">(Chief Doctor)</p>
      </div>
   </div>
   </div>
   
   <div  class=" col-md-3">
   <div class="card paint-card">
      <div class="card-body text-center">
      <img alt="" src="img/doct4.png" width="250px" height="300px">
      <p class="fw-bold fs-5">Dr.Niuise Paule</p>
      <p class="fs-7">(Chief Doctor)</p>
      </div>
   </div>
   </div>
   
   <div  class=" col-md-3">
   <div class="card paint-card">
      <div class="card-body text-center">
      <img alt="" src="img/doctor2.png" width="250px" height="300px">
      <p class="fw-bold fs-5">Dr.Mathue Samuel</p>
      <p class="fs-7">(Chief Doctor)</p>
      </div>
   </div>
   </div>
   
</div>
</div>
	
	
	
	
<%@include file="Componet/footer.jsp" %>	
</body>
</html>