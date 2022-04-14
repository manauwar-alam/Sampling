<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CPS List</title>
<script src="/webjars/jquery/3.5.1/jquery.slim.min.js"></script>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link href="<spring:url value="/css/style.css"/>" rel="stylesheet">
<script src="/webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>
<script>
    $('#targetDate').datepicker({
        format: 'dd/mm/yyyy'
    });
</script>

<style >
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
<br>

<c:if test="${cpsList != null}">

			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6" align="center">
					<div class="alert alert-success">
						<strong>Success!</strong> ${msg}
					</div>
				</div>
				<div class="col-sm-3"></div>
			</div>

			<div class="panel panel-primary">
  <div class="panel-heading">
   <h3>List CPS</h3>
  </div>
  <div class="panel-body">

<table class="table table-striped" border="1">
    <thead>
     <tr class="p-3 mb-2 bg-info text-white">
      <th width="15%">BA</th>
      <th width="15%">CUSTOMER</th>
      <th width="15%">CLIENT</th>
      <th width="15%">COUNTRY</th>
      <th width="10%">ORDER DATE</th>
      <th width="10%"><a type="button" class="btn btn-primary btn-sm" href="/cps">Add New CPS</a></th>
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
       
        
      </tr>
     </c:forEach>
 </tbody>
   </table>
    </div>
 </div>
 </c:if>

</div>
</body>
</html>