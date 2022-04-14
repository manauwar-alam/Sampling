<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add CPS</title>
<script src="/webjars/jquery/3.5.1/jquery.slim.min.js"></script>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link href="<spring:url value="/css/style.css"/>" rel="stylesheet">
<script type="text/javascript" src='<spring:url value="/js/app.js"/>'></script>

<style>


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
    background-color: blue;
    border-top: none;
}

td:first-child, th:first-child {
     border-left: none;
}

</style>




</head>
<%@ include file="header.jsp"%>


<body>
	<div class="container-fluid">

		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<h4 class="card-title mt-3 text-center">SAVE CPS SECTION 1</h4>
			</div>
			<div class="col-sm-3"></div>
		</div>



		<form:form method="post" modelAttribute="CPS" >
					<form:hidden path="id" />
					
					<input type="hidden" name = "stage" value = "1" />
			<section id="cps1">

				<div class="row">
					<div class="col-sm-1"></div>
					<div class="col-sm-10">

						<table class="table table-bordered">
							<tbody>
								<tr class="table-info">

									<td><form:label path="BA">Buying Agency</form:label> <form:input
											path="BA" type="text" class="form-control"
											required="required" /></td>
									<td><form:label path="season">Season</form:label> <form:input
											path="season" type="text" class="form-control"
											required="required" /></td>
									<td><form:label path="orderDate">Order Date</form:label> <form:input
											path="orderDate" type="date" 
											class="form-control" id="orderDate" /></td>
								</tr>

								<tr class="table-info">
									<td><form:label path="customer">Customer</form:label> <form:input
											path="customer" type="text" class="form-control"
											required="required" /></td>
									<td><form:label path="sampleSize">Sample Size</form:label>
										<form:input path="sampleSize" type="number"
											class="form-control" required="required" /></td>
									<td><form:label path="sizeRange">Size Range</form:label> <form:input
											path="sizeRange" type="text" class="form-control"
											required="required" /></td>
								</tr>

								<tr class="table-info">
									<td><form:label path="client">Client</form:label> <form:input
											path="client" type="text" class="form-control"
											required="required" /></td>

									<td><form:label path="country">Country</form:label> <form:select
											path="country" class="form-control">
											<form:options items="${countryList}" />
										</form:select></td>

									<td><form:label path="maxOrderQuantity">Max Order Quantity</form:label>
										<form:input path="maxOrderQuantity" type="number"
											class="form-control" required="required" /></td>
								</tr>
							</tbody>
						</table>

					</div>
					<div class="col-sm-1"></div>
				</div>
			</section>

			<section id="saveButton">
				<div class="row">
					<div class="col-sm-3"></div>
					<div class="col-sm-6" align="center">
						<button type="submit" class="btn btn-success">SAVE AND PROCEED TO STAGE 2</button>
					</div>
					<div class="col-sm-3"></div>
				</div>
			</section>

		</form:form>
				<br>
	<br>

	</div>
	<br>
	<br>


</body>
</html>