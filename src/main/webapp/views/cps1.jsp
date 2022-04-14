<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add CPS</title>
<script src="/webjars/jquery/3.4.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet">
	<link href="<spring:url value="/css/style.css"/>" rel="stylesheet">
<!-- <script
	src="/webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.js"></script> -->
<script type="text/javascript" src='<spring:url value="/js/app.js"/>'></script>



</head>
<%@ include file="header.jsp"%>
<body>
	<div class="container">
<div class="row">
 <div class="col-sm-3"></div> 
	<div class="col-sm6">	

		<div class="card bg-light" ">
			
			
			<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6"><h4 class="card-title mt-3 text-center">Add CPS1</h4></div>
			<div class="col-sm-3"></div>
		</div>
				


				<form:form method="post" modelAttribute="CPS"
					class="needs-validation">
					<form:hidden path="id" />
					
					
					<div class="row px-md-5">
						
						<div class="col ">
							<spring:bind path="BA">
								<div
									class="form-group ${status.error ? 'has-error' : ''}">
									<!-- <div class="input-group-prepend"></div> -->
									<form:label path="BA">BA</form:label>
									<form:input path="BA" type="text" class="form-control"
										required="required" />
									<div class="valid-feedback">Looks good!</div>
									<form:errors path="BA" class="control-label" />
								</div>
							</spring:bind>
						</div>
						<div class="col">
						<spring:bind path="season">
								<div
									class="form-group  ${status.error ? 'has-error' : ''}">
									<form:label path="season">season</form:label>
									<form:input path="season" type="text" class="form-control"
										required="required" />
									<div class="valid-feedback">Looks good!</div>

									<form:errors path="season" class="control-label" />
								</div>
							</spring:bind>
						
						
						</div>
						
						<div class="col">
							<spring:bind path="orderDate">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<form:label path="orderDate">Order Date</form:label>
									<form:input path="orderDate" type="date" value="2000-01-01"
										class="form-control"  id="orderDate" />
									<div class="valid-feedback">Looks good!</div>
									<form:errors path="orderDate" class="control-label" />
								</div>
							</spring:bind>
						</div>
					</div>



					<div class="row px-md-5">
						
						<div class="col-sm-4">
							<spring:bind path="customer">
								<div
									class="form-group ${status.error ? 'has-error' : ''}">
									<form:label path="customer">Customer</form:label>
									<form:input path="customer" type="text" class="form-control"
										required="required" />
									<div class="valid-feedback">Looks good!</div>
									<form:errors path="customer" class="control-label" />
								</div>
							</spring:bind>
						</div>
						
						
						<div class="col-sm-6">
								<spring:bind path="sampleSize">
									<div class="form-group ${status.error ? 'has-error' : ''}">
										<form:label path="sampleSize">sampleSize</form:label>
										<form:input path="sampleSize" type="text" class="form-control"
											required="required" />
										<div class="valid-feedback">Looks good!</div>
										<form:errors path="sampleSize" class="control-label" />
									</div>
								</spring:bind>
						</div>
						<div class="col-sm-2"></div>
					</div>



			<div class="row px-md-5">
						
						<div class="col-sm-6">
							<spring:bind path="client">
								<div
									class="form-group ${status.error ? 'has-error' : ''}">
									<form:label path="client">client</form:label>
									<form:input path="client" type="text" class="form-control"
										required="required" />
									<div class="valid-feedback">Looks good!</div>
									<form:errors path="client" class="control-label" />
								</div>
							</spring:bind>
						</div>
					
						<div class="col-sm-6">
							<spring:bind path="sizeRange">
								<div
									class="form-group ${status.error ? 'has-error' : ''}">
									<form:label path="sizeRange">sizeRange</form:label>
									<form:input path="sizeRange" type="text" class="form-control"
										required="required" />
									<div class="valid-feedback">Looks good!</div>
									<form:errors path="sizeRange" class="control-label" />
								</div>
							</spring:bind>
						</div>
						
					</div>	


					<%-- <div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-6">
							<spring:bind path="orderDate">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<form:label path="orderDate">Order Date</form:label>
									<form:input path="orderDate" type="date"
										class="form-control"  id="orderDate" />
									<div class="valid-feedback">Looks good!</div>
									<form:errors path="orderDate" class="control-label" />
								</div>
							</spring:bind>
						</div>
						<div class="col-sm-3"></div>
					</div> --%>


					<div class="row px-md-5">
						
						<div class="col-sm-6">
							<spring:bind path="country">
								<div
									class="form-group ${status.error ? 'has-error' : ''}">
									<!-- <div class="input-group-prepend"></div> -->
									<form:label path="country">Country</form:label>
									<form:select path="country" class="form-control">
										<form:options items="${countryList}" />
									</form:select>
									<div class="valid-feedback">Looks good!</div>
									<form:errors path="country" class="control-label" />
								</div>
							</spring:bind>
						</div>
						
						<div class="col-sm-6">
							<spring:bind path="maxOrderQuantity">
								<div
									class="form-group ${status.error ? 'has-error' : ''}">
									<form:label path="maxOrderQuantity">maxOrderQuantity</form:label>
									<form:input path="maxOrderQuantity" type="text" class="form-control"
										required="required" />
									<div class="valid-feedback">Looks good!</div>
									<form:errors path="maxOrderQuantity" class="control-label" />
								</div>
							</spring:bind>
						</div>
						
					</div>
					
					
					<div class="row px-md-5">
						
						<div class="col-sm-4">
							<spring:bind path="styleCode">
								<div
									class="form-group ${status.error ? 'has-error' : ''}">
									<form:label path="styleCode">styleCode</form:label>
									<form:input path="styleCode" type="text" class="form-control"
										required="required" />
									<div class="valid-feedback">Looks good!</div>
									<form:errors path="styleCode" class="control-label" />
								</div>
							</spring:bind>
						</div>
						
					
						<div class="col-sm-4">
							<spring:bind path="SANumber">
								<div
									class="form-group ${status.error ? 'has-error' : ''}">
									<form:label path="SANumber">SANumber</form:label>
									<form:input path="SANumber" type="text" class="form-control"
										required="required" />
									<div class="valid-feedback">Looks good!</div>
									<form:errors path="SANumber" class="control-label" />
								</div>
							</spring:bind>
						</div>
						
						<div class="col-sm-4">
							<spring:bind path="color">
								<div
									class="form-group ${status.error ? 'has-error' : ''}">
									<form:label path="color">color</form:label>
									<form:input path="color" type="text" class="form-control"
										required="required" />
									<div class="valid-feedback">Looks good!</div>
									<form:errors path="color" class="control-label" />
								</div>
							</spring:bind>
						</div>
						
					</div>
						<div class="row px-md-5">
						
						<div class="col-sm-6">
							<spring:bind path="styleName">
								<div
									class="form-group ${status.error ? 'has-error' : ''}">
									<form:label path="styleName">Style Name</form:label>
									<form:input path="styleName" type="text" class="form-control"
										required="required" />
									<div class="valid-feedback">Looks good!</div>
									<form:errors path="styleName" class="control-label" />
								</div>
							</spring:bind>
						</div>
						<div class="col-sm-3"></div>
						<div class="col-sm-3"></div>
					</div>
					
					
					<div class="row px-md-5">
						<div class="col-sm-8">
							<spring:bind path="description">
								<div
									class="form-group  ${status.error ? 'has-error' : ''}">
									<!-- <div class="input-group-prepend"></div> -->
									<form:label path="description">description</form:label>
									<form:textarea path="description" class="form-control"
										required="required" />
									<div class="valid-feedback">Looks good!</div>
									<form:errors path="description" class="control-label" />
								</div>
							</spring:bind>
						</div>
						<div class="col-sm-4"></div>
					</div>
					
					<div class="row px-md-5">
						<div class="col-sm-8">
							<spring:bind path="embellishment">
								<div
									class="form-group  ${status.error ? 'has-error' : ''}">
									<!-- <div class="input-group-prepend"></div> -->
									<form:label path="embellishment">embellishment</form:label>
									<form:textarea path="embellishment" class="form-control"
										required="required" />
									<div class="valid-feedback">Looks good!</div>
									<form:errors path="embellishment" class="control-label" />
								</div>
							</spring:bind>
						</div>
						<div class="col-sm-4"></div>
					</div>	
						
						<div class="row px-md-5">
						<div class="col-sm-8">
							<spring:bind path="notesWithComments">
								<div
									class="form-group  ${status.error ? 'has-error' : ''}">
									<!-- <div class="input-group-prepend"></div> -->
									<form:label path="notesWithComments">Notes With Comments</form:label>
									<form:textarea path="notesWithComments" class="form-control"
										required="required" />
									<div class="valid-feedback">Looks good!</div>
									<form:errors path="notesWithComments" class="control-label" />
								</div>
							</spring:bind>
						</div>
						<div class="col-sm-4"></div>
					</div>
						
						
						
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-6">
							<button type="submit" class="btn btn-success">Save CPS1</button>
						</div>
						<div class="col-sm-3"></div>
					</div>

				</form:form>
				<br>
	<br>
		</div>
</div>

 <div class="col-sm-3"></div> 
</div>
	</div>
	<br>
	<br>


</body>
</html>