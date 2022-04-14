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
<link href="<spring:url value="/css/style.css"/>" rel="stylesheet">
	
	<script>
/* 	window.onload = function() {
		document.getElementById("keyword").value = "${keyword}";		
	};
	 */
</script>

<style type="text/css">
.table {
	 
	 border-collapse:separate;
    border:solid black 1px;
    border-radius:6px;
    -moz-border-radius:6px;
}
td, th {
    border-left:solid black 1px;
    border-top:solid black 1px;
}

th {
    background-color: #1f3d7a;
    border-top: none;
}

td:first-child, th:first-child {
     border-left: none;
}

</style>
</head>
<%@ include file="header.jsp"%>

<body>

	<div class="container">
		
		<c:if test="${listCPS != null}">

			


			<div class="panel panel-primary">
				<div class="panel-heading">
					<h5>List CPS</h5>
				</div>
				<div class="panel-body">
				
				<c:if test="${ totalPages > 1}">
				
		<div class="row">
		<div class="col-sm-2">
			Total Rows : ${totalItems}
			</div>
			
			<div class="col-sm-10">
					<nav aria-label="Page navigation example">
  <ul class="pagination">
				
			<c:forEach begin="1" end="${totalPages}" var="i">
			<c:choose>
			<c:when test="${currentPage != i}">
			
			<li class="page-item"><a class="page-link" href="/page/${i}?sortField=${sortField}&sortDir=${sortDir}">${i}</a></li>
			</c:when>
			<c:otherwise>
			<li class="page-item active">
    		  <span class="page-link">${i} <span class="sr-only">(current)</span></span>
    		</li>
			</c:otherwise>
			</c:choose>
			</c:forEach>
			
			
			
			<c:choose>
			<c:when test="${currentPage <  totalPages}">
			
			<li class="page-item"><a class="page-link" href="/page/${currentPage +1}?sortField=${sortField}&sortDir=${sortDir}">Next</a></li>
			</c:when>
			<c:otherwise>
			 <li class="page-item active">
     		 <span class="page-link" >Next <span class="sr-only">(current)</span></span>
   			 </li>
  			  </c:otherwise>
			</c:choose>
    
   		 <c:choose>
			<c:when test="${currentPage <  totalPages}">
			
			<li class="page-item"><a class="page-link" href="/page/${totalPages}?sortField=${sortField}&sortDir=${sortDir}">Last</a></li>
			</c:when>
			<c:otherwise>
			 <li class="page-item active">
    		  <span class="page-link" >Last <span class="sr-only">(current)</span></span>
  			  </li>
			</c:otherwise>
		</c:choose>
			
			
	  </ul>
</nav>		
</div>
		</div>
		
		</c:if>

				<table class="table table-striped" border="1">
    <thead>
     <tr class="p-3 mb-2 bg-info text-white">
      <th width="15%">
      <a href="/page/${currentPage}?sortField=BA&sortDir=${reverseSortDir}" class="text-white">
      BUYING AGENCY
      </a>
      </th>
     
      <th width="15%">
      <a href="/page/${currentPage}?sortField=customer&sortDir=${reverseSortDir}" class="text-white">
      CUSTOMER
      </a>
      
      
      </th>
      <th width="15%">
       <a href="/page/${currentPage}?sortField=client&sortDir=${reverseSortDir}" class="text-white">
      CLIENT
      </a>
      </th>
      
      <th width="15%">COUNTRY</th>
      <th width="10%">ORDER DATE</th>
       <th width="30%"><a type="button" class="btn btn-primary btn-sm" href="/cps">Add New CPS</a></th>
     </tr>
    </thead>
    <tbody>

<c:forEach items="${listCPS}" var="cps">
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
     
        </td>
      </tr>
     </c:forEach>
 </tbody>
   </table>
				</div>
			</div>

		</c:if>
		
		<c:if test="${ totalPages > 1}">
				
		<div class="row">
		<div class="col-sm-2">
			Total Rows : ${totalItems}
			</div>
			
			<div class="col-sm-10">
					<nav aria-label="Page navigation example">
  <ul class="pagination">
				
			<c:forEach begin="1" end="${totalPages}" var="i">
			<c:choose>
			<c:when test="${currentPage != i}">
			
			<li class="page-item"><a class="page-link" href="/page/${i}?sortField=${sortField}&sortDir=${sortDir}">${i}</a></li>
			</c:when>
			<c:otherwise>
			<li class="page-item active">
    		  <span class="page-link">${i} <span class="sr-only">(current)</span></span>
    		</li>
			</c:otherwise>
			</c:choose>
			</c:forEach>
			
			
			
			<c:choose>
			<c:when test="${currentPage <  totalPages}">
			
			<li class="page-item"><a class="page-link" href="/page/${currentPage +1}?sortField=${sortField}&sortDir=${sortDir}">Next</a></li>
			</c:when>
			<c:otherwise>
			 <li class="page-item active">
     		 <span class="page-link" >Next <span class="sr-only">(current)</span></span>
   			 </li>
  			  </c:otherwise>
			</c:choose>
    
   		 <c:choose>
			<c:when test="${currentPage <  totalPages}">
			
			<li class="page-item"><a class="page-link" href="/page/${totalPages}?sortField=${sortField}&sortDir=${sortDir}">Last</a></li>
			</c:when>
			<c:otherwise>
			 <li class="page-item active">
    		  <span class="page-link" >Last <span class="sr-only">(current)</span></span>
  			  </li>
			</c:otherwise>
		</c:choose>
			
			
	  </ul>
</nav>		
</div>
		</div>
		
		</c:if>


	</div>

<br>
<br>
</body>
</html>