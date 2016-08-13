<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!--
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="saitweet">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
</head>
<body>
-->

<div class="container">
<h1>Your query: </h1>
<h1 id="query">{{ query }}</h1>

<h1>test/test.jsp</h1><br />
<h1>{{ message }}</h1>

<p>
<%
	int a=1, b=2;
	int c = a + b;
	out.println("Hello: " + c);
%>
</p>

<!--  
<script>
	var quoted_query = localStorage.getItem("queryDetails");
	document.getElementById("query").innerHTML = JSON.parse(quoted_query);
</script>
-->

<!--  
</body>
</html>
-->

</div>