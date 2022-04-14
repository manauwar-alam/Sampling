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
	outline-style: solid;
	outline-width: 1px;
}
</style>

<script type="text/javascript">

</script>


</head>
<%@ include file="header.jsp"%>


<body>
	<div class="container-fluid">

		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<h4 class="card-title mt-3 text-center">ADD CPS SECTION 2</h4>
			</div>
			<div class="col-sm-3"></div>
		</div>
<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6" align="center">
					<div class="alert alert-success">
						<strong>Success!</strong> ${msg} ${id}
					</div>
				</div>
				<div class="col-sm-3"></div>
			</div>
		<form:form method="post"  modelAttribute="CPS" >
					
					<form:hidden path="id" />
					<input type="hidden" name = "stage" value = "2" />
					
				<div class="row">
					<div class="col-sm-1"></div>
					<div class="col-sm-10">
						
						<table class="table table-bordered">
							<tbody>
								<tr class="table-success">
									<td><form:label  path="styleCode">Style Code</form:label> <form:input
											path="styleCode" type="text" class="form-control"
											required="required" /></td>
									<td><form:label path="SANumber">SA Number</form:label> <form:input
											path="SANumber" type="text" class="form-control"
											required="required" /></td>
									<td><form:label path="color">Color</form:label> <form:input
											path="color" type="text" class="form-control"
											required="required" /></td>
								</tr>

								<tr class="table-success">
									<td><form:label path="styleName">Style Name</form:label> <form:input
											path="styleName" type="text" class="form-control"
											required="required" /></td>

									<td colspan="2"><form:label path="description">Description</form:label>
										<form:textarea path="description" class="form-control"
											rows="3" required="required" /></td>
								</tr>

								<tr class="table-success">
									<td colspan="3"><form:label path="embellishment">Embellishment</form:label>
										<form:textarea path="embellishment" class="form-control"
											rows="3" required="required" /></td>
								</tr>
								<tr class="table-success">
									<td colspan="3"><form:label path="notesWithComments">Notes With Comments</form:label>
										<form:textarea path="notesWithComments" class="form-control"
											rows="4" required="required" /></td>
								</tr>
							</tbody>
						</table>
						
					</div>
					<div class="col-sm-1"></div>
				</div>
				
		<section id="saveButton">
				<div class="row">
					<div class="col-sm-3"></div>
					<div class="col-sm-6" align="center">
						<button type="submit" class="btn btn-success">SAVE AND PROCEED TO STAGE 3</button>
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