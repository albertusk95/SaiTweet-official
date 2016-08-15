<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="saitweet.Query" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="mainhome">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

	<title>Preview page</title>
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	
	<!-- Custom CSS -->
	<link rel="stylesheet" href="assets/css/home.css">
	
	<!-- Font-awesome -->
	<link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
	
	<!-- Javascript -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- 
	<script src="assets/js/angular.min.js"></script>
	-->
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
	<script type="text/javascript" src="node_modules/angular-route/angular-route.min.js"></script>
	
</head>

<body>
	
	<%
		// query text
		String query = request.getParameter("query"); 
		// checkbox value
		String[] socmedCheck = new String[2];
		
		socmedCheck = request.getParameterValues("socmed_check");
		
		Query.setQuery(query, socmedCheck);
	%>
	
	<!-- NavBar-->
	<nav id="home_navbar" class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container">		
			<div class="navbar-header">
				<a class="navbar-brand" href="#/queryContainer"><%= query %></a>
			</div>

			<div class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
				<ul class="nav navbar-nav">	
					<li class="menuItem"><a href="#/whatisit">What is it?</a></li>
					<li class="menuItem"><a href="#/howtouse">How to use?</a></li>
					<li class="menuItem"><a href="#/contact">Contact</a></li>
				</ul>
			</div>
		</div>
	</nav> 

	<!-- Controlled by Angular -->
	<div ng-view></div>
	
	<script src="public/app.js"></script>
	<script src="public/preview/preview.js"></script>
</body>
</html>