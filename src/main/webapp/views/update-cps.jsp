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



<script type="text/javascript">
function getMaterialWeight() {

		var pw = $("#panelWeight").val();
		var fw = $("#fabricWeight").val();
		
		
		console.log("Panel Weight : " + pw);
		console.log("Fabric Weight : " + fw);

		var mw = pw-fw;
		$("#materialWeight").val(mw);

		
		
		/* $.ajax({
			type : "GET",
			url : "/get/material-weight?pw=" + pw,
			cache : false,
			success : function (result) {
		      console.log("result "+result);
		      $("#materialWeight").val(result);
		    }	
		}); */
	}
function getSizeGrading() {

	var sg = $("#sizeGrading").val();
	var mw = $("#materialWeight").val();
	

	console.log("Size Grading : " + sg);
	var gradingPercentValue = sg/100*mw;
	var beadingCostOne = parseFloat(gradingPercentValue) + parseFloat(mw);
	$("#beadingCost1").val(beadingCostOne);
	
}

function getMaterialWastage() {

	var material_wastage = $("#materialWastage").val();
	var beadingCostOne = $("#beadingCost1").val();

	console.log("Material Wastage : " + material_wastage);
	console.log("Beading Cost 1 : " + beadingCostOne);
	
	var beadingCostTwo = parseFloat(material_wastage/100*beadingCostOne) + parseFloat(beadingCostOne);
	
	console.log("Beading Cost 2 : " + beadingCostTwo);
	$("#beadingCost2").val(beadingCostTwo);
	
}

function getTotalEmbCost() {

	var embroideryArea = $("#embroideryArea").val();
	var embCostPrice = $("#embCostPrice").val();

	console.log("embroideryArea : " + embroideryArea);
	console.log("embCostPrice : " + embCostPrice);
	
	var totalEmbcost = parseFloat(embroideryArea) * parseFloat(embCostPrice);	
	console.log("totalEmbcost : " + totalEmbcost);
	$("#totalEmbcost").val(totalEmbcost);

}


function getTotalMatCost() {

	var embroideryArea = $("#embroideryArea").val();
	var materialCostPrice = $("#materialCostPrice").val();

	console.log("embroideryArea : " + embroideryArea);
	console.log("materialCostPrice : " + materialCostPrice);

	var totalMatCost = parseFloat(embroideryArea) * parseFloat(materialCostPrice);
	console.log("totalMatCost : " + totalMatCost);
	$("#totalMatCost").val(totalMatCost);
	
}

</script>

</head>
<%@ include file="header.jsp"%>
<body>
	<div class="container-fluid">
			
			<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6"><h4 class="card-title mt-3 text-center">UPDATE CPS</h4></div>
			<div class="col-sm-3"></div>
		</div>
				


				<form:form method="post" modelAttribute="CPS" >
					
					<form:hidden path="id" />
					
					
					<section id="cps1">
					
					<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-10">
					
				<table class="table table-bordered">
					<tbody>
						<tr class="table-info">



							<td><form:label path="BA">Buying Agency</form:label> <form:input
									path="BA" type="text" class="form-control" required="required" />


							</td>
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
							<td><form:label path="sampleSize">Sample Size</form:label> <form:input
									path="sampleSize" type="number" class="form-control"
									required="required" /></td>
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
					
					


	<section id="cps2">

			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-10">
					<table class="table table-bordered">
						<tbody>
							<tr class="table-success">
								<td><form:label path="styleCode">Style Code</form:label> <form:input
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
									<form:textarea path="description" class="form-control" rows="3"
										required="required" /></td>
							</tr>

							<tr class="table-success">

								<td colspan="3"><form:label path="embellishment">Embellishment</form:label>
									<form:textarea path="embellishment" class="form-control" rows="3"
										required="required" /></td>
							</tr>
							<tr class="table-success">
								<td colspan="3"><form:label path="notesWithComments">Notes With Comments</form:label>
									<form:textarea path="notesWithComments" class="form-control" rows="4"
										required="required" /></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-sm-1"></div>
			</div>

</section>


<section id="cps3">

				<div class="row">
					<div class="col-sm-1"></div>
					<div class="col-sm-10">

						<table class="table table-bordered">
							<tbody>

								<tr class="table-primary">
									<td colspan="1"><form:label class="col-form-label-sm" path="panelWeight">Panel Weight</form:label>
										<div class="input-group input-group-sm">
											<form:input path="panelWeight" type="number"
												class="form-control" required="required"  step="any"
												 id="panelWeight"/>
											<div class="input-group-append">
												<span class="input-group-text">gram</span>
											</div>
										</div></td>
									<td colspan="1"><form:label class="col-form-label-sm" path="fabricWeight">Fabric Weight</form:label>
										<div class="input-group input-group-sm">
											<form:input path="fabricWeight" type="number" step="any"
												class="form-control" required="required" id="fabricWeight"/>
											<div class="input-group-append">
												<span class="input-group-text">gram</span>
											</div>
										</div></td>
									<td colspan="1"><form:label class="col-form-label-sm" path="materialWeight">Material Weight</form:label>
										<div class="input-group input-group-sm">
											<form:input path="materialWeight" type="number" onclick="getMaterialWeight();"
												class="form-control" required="required" step="any" id="materialWeight"/>

											<div class="input-group-append">
												<span class="input-group-text">gram</span>
											</div>
										</div></td>
									<td colspan="1"><form:label class="col-form-label-sm" path="sizeGrading">Size Grading</form:label>
										<div class="input-group input-group-sm">
											<form:input path="sizeGrading" type="number" id="sizeGrading"
												class="form-control" required="required" step="any"/>

											<div class="input-group-append">
												<span class="input-group-text">%</span>
											</div>
										</div></td>
									
										<td colspan="1"><form:label class="col-form-label-sm" path="beadingCost1">Wt. With Grading</form:label>
										<div class="input-group input-group-sm">
											<div class="input-group-prepend">
												<span class="input-group-text">₹</span>
											</div>
											<form:input path="beadingCost1" type="number" id="beadingCost1"
												class="form-control"  onclick="getSizeGrading();" step="any"/>
										</div></td>
										
										
										<td colspan="1"><form:label class="col-form-label-sm" path="materialWastage">Wastage</form:label>
										<div class="input-group input-group-sm">
											<form:input path="materialWastage" type="number" id="materialWastage"
												class="form-control" required="required" step="any"/>

											<div class="input-group-append">
												<span class="input-group-text">%</span>
											</div>
										</div></td>
										<td colspan="1"><form:label class="col-form-label-sm" path="beadingCost2">Total Weight</form:label>
										<div class="input-group input-group-sm">
											<div class="input-group-prepend">
												<span class="input-group-text">₹</span>
											</div>
											<form:input path="beadingCost2" type="number" id="beadingCost2" step="any"
												class="form-control" required="required" onclick="getMaterialWastage();"/>
										</div></td>
								</tr>

								<tr class="table-secondary">
								<td colspan="1">
									<form:label class="col-form-label-sm" path="areaUnit">Area Unit</form:label>
									<form:select path="areaUnit" class="form-control form-control-sm">
											<form:options items="${areaUnitList}" />
									</form:select>
								</td>
									<td colspan="1"><form:label class="col-form-label-sm" path="embroideryArea">Embroidery Area</form:label>
										<div class="input-group input-group-sm">
											<form:input path="embroideryArea" type="number" id="embroideryArea"
												class="form-control" required="required" step="any"/>
											
										</div></td>
									<td colspan="1"><form:label class="col-form-label-sm" path="embCostPrice">Embroidery Cost</form:label>
										<div class="input-group input-group-sm">
										<div class="input-group-prepend">
												<span class="input-group-text">₹</span>
											</div>
											<form:input path="embCostPrice" type="number" id="embCostPrice"
												class="form-control" required="required" step="any"/>
											
										</div></td>
										
										<td colspan="1"><form:label class="col-form-label-sm" path="totalEmbcost">Tot. Emb. Cost</form:label>
										<div class="input-group input-group-sm">
										<div class="input-group-prepend">
												<span class="input-group-text">₹</span>
											</div>
											<form:input path="totalEmbcost" type="number" onclick="getTotalEmbCost();" id="totalEmbcost"
												class="form-control" required="required" step="any"/>
											
										</div></td>
										
										
									<td colspan="1"><form:label class="col-form-label-sm" path="materialCostPrice">Material Cost</form:label>
										<div class="input-group input-group-sm">
										<div class="input-group-prepend">
												<span class="input-group-text">₹</span>
											</div>
											<form:input path="materialCostPrice" type="number" id="materialCostPrice"
												class="form-control" required="required" step="any"/>
											
										</div></td>
										
										<td colspan="1"><form:label class="col-form-label-sm" path="totalMatCost">Total Mat. Cost</form:label>
										<div class="input-group input-group-sm">
										<div class="input-group-prepend">
												<span class="input-group-text">₹</span>
											</div>
											<form:input path="totalMatCost" type="number" onclick="getTotalMatCost();" id="totalMatCost"
												class="form-control" required="required" step="any"/>
											
										</div></td>
									
								</tr>

								<tr class="table-info">
						
									<td colspan="1"><form:label class="col-form-label-sm" path="wagesPerHour">Wages/Hour</form:label>
										<div class="input-group input-group-sm">
											<div class="input-group-prepend">
												<span class="input-group-text">₹</span>
											</div>
											<form:input path="wagesPerHour" type="number"
												class="form-control" required="required" step="any"/>
										</div></td>
									<td colspan="1"><form:label class="col-form-label-sm" path="skill">Skill Used</form:label>
										<form:select path="skill" class="form-control form-control-sm">
											<form:options items="${skillList}" />
										</form:select></td>
									<td colspan="1"><form:label class="col-form-label-sm" path="hoursConsumed">Total Hours</form:label>
										<form:input path="hoursConsumed" type="number" step="any"
											class="form-control form-control-sm" required="required" /></td>

									<%-- <td colspan="1"><form:label path="hoursConsumed">Total Hours</form:label>
										<form:input path="hoursConsumed" type="number"
											class="form-control" required="required" /></td> --%>
								</tr>
							</tbody>
						</table>

					</div>
					<div class="col-sm-1"></div>
				</div>
			</section>


			<section id="updateButton">
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4" align="center">
						<button type="submit" class="btn btn-success">Update</button>
					</div>
					<div class="col-sm-4"></div>
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