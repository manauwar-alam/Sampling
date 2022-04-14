<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="background-color: #000080;">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
 <spring:url value="/home" var="homeUrl" />
 <spring:url value="/add-cps-stages" var="cpsInStagesUrl" /> 
 <spring:url value="/cps" var="cpsUrl" />
 <spring:url value="/cps/search/keyword" var="searchCpsUrl" />
 
 

 
 
 <a class="navbar-brand" href="${homeUrl}">
    <img alt="" src="<spring:url value="/images/logo.png"/>" width="130" height="30" >
  </a> 

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
    
       <li class="nav-item active">
        <a class="nav-link" href="${homeUrl}">HOME</a>
      </li>

  
<li class="nav-item active">
        <a class="nav-link" href="/page/1?sortField=BA&sortDir=asc">SHOW ALL</a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link" href="${cpsUrl}">Add CPS</a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link" href="${cpsInStagesUrl}">Create</a>
      </li>
      
  <li class="nav-item active">
        <a class="nav-link" href="${searchCpsUrl}">Search</a>
      </li>
      
      

    </ul>

  </div>

</nav>
<br>
<!-- <h5 align="center"  style="color: gray;font-size: large;"><b>SAMPLING TOOL</b> </h5> -->
<br>
