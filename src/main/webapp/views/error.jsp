<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<title>Error</title>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link href="<spring:url value="/css/style.css"/>" rel="stylesheet">
</head>
<%@ include file="header.jsp"%>

<body>

	<div class="container">

		
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
			<h2 align="center">Some Error Occurerd ... </h2>
				</div>
			<div class="col-sm-2"></div>
		</div>
		
		<br>
${msg}

	</div>
	
	<br>
	<br>

</body>
</html>