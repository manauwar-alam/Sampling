<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search by Keyword</title>
<script src="/webjars/jquery/3.5.1/jquery.slim.min.js"></script>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link href="<spring:url value="/css/style.css"/>" rel="stylesheet" />
	
	<script>
	window.onload = function() {
		document.getElementById("keyword").value = "${keyword}";		
	};
	
</script>


</head>
<%@ include file="header.jsp"%>

<body>

	<div class="container">

	

		<br> 
		
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
			<c:if test="${not empty msg}">

					<div class="alert alert-success">
						<strong>Success!</strong> ${msg}
					</div>
				</c:if>
			</div>
			<div class="col-sm-3"></div>
			</div>
			

		<br>

		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">

				<spring:url value="/cps/search" var="searchByKeyword" />

				<form action="${searchByKeyword}">
					<div class="input-group mb-3">

						<input type="text" class="form-control"
							placeholder="Search Buying Agency"
							id="keyword" name="keyword">
						<div class="input-group-append">
							<button class="btn btn-info" type="submit">Search</button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-sm-3"></div>
		</div>

	

		<c:if test="${cpsList != null}">

			<div class="row">
				<div class="col-sm-4"></div>
				<div class="col-sm-4" align="center">
					<div class="alert alert-secondary">
						Search for keyword : <strong>"${keyword}"</strong>
					</div>
				</div>
				<div class="col-sm-4"></div>
			</div>


			<div class="panel panel-primary">
				<div class="panel-heading">
					<h5>List CPS</h5>
				</div>
				<div class="panel-body">

				<table class="table table-striped" border="1">
    <thead>
     <tr class="p-3 mb-2 bg-info text-white">
      <th width="15%">Buying Agency</th>
      <th width="15%">CUSTOMER</th>
      <th width="15%">CLIENT</th>
      <th width="15%">COUNTRY</th>
      <th width="10%">ORDER DATE</th>
       <th width="30%"><a type="button" class="btn btn-primary btn-sm" href="/cps">Add New CPS</a></th>
     </tr>
    </thead>
    <tbody>

<c:forEach items="${cpsList}" var="cps">
      <tr>
       <td>${cps.BA}</td>
        <td>${cps.customer}</td>
        <td>${cps.client}</td>
        <td>${cps.country}</td>
        <td>${cps.orderDate}</td>   
       <td>     
         <a type="button" class="btn btn-success"
        href="/update-cps?id=${cps.id}">Update</a>
        
        <a type="button" class="btn btn-danger"
        href="/delete-cps?id=${cps.id}">Delete</a>
        
        <%-- <security:authorize access="hasRole('ROLE_ADMIN')"> 
       <a type="button" class="btn btn-success"
        href="/cps/update?id=${cps1.id}">Update</a>
       <a type="button" class="btn btn-danger"
        href="/cps?id=${cps1.id}">Delete</a>
        </security:authorize> 
        <a type="button" class="btn btn-info"
        href="/epdetail/view?id=${cps1.id}">View</a> 
        --%>
        </td>
      </tr>
     </c:forEach>
 </tbody>
   </table>
				</div>
			</div>

		</c:if>
		
<%-- 		<c:if test="totalPages > 1">
		
		<div class="row col-sm-10">
			
			<div class="col-sm-2">
			Total Rows : [[${totalItems}]]
			</div>
			
			<div class="col-sm-1"> 
			<c:forEach begin="1" end="${totalPages}" var="i">
			<c:choose>
			<c:when test="${currentPage != i}">
			<a href="/page/${i}">[[${i}]] </a>
			</c:when>
			<c:otherwise>
			[[${i}]]
			</c:otherwise>
			</c:choose>
			</c:forEach>
			</div>
			
			<div class="col-sm-1"> 
			<c:choose>
			<c:when test="${currentPage <  totalPages} ">
			<a href="/page/${currentPage +1 }" >Next</a>
			</c:when>
			<c:otherwise>Next</c:otherwise>
			</c:choose>
			</div>
			
			<div class="col-sm-1"> 
			<c:choose>
			<c:when test="${currentPage <  totalPages} ">
			<a href="/page/${totalPages +1 }" >Last</a>
			</c:when>
			<c:otherwise>Last</c:otherwise>
			</c:choose>
			</div>
			
			
			</div>
		
		</c:if> --%>

	</div>


</body>
</html>