<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="saitweet.Query" %>

<div class="content-analysis" style="border-top: 0"> 
	<div class="container">
	
		<div id="intro">
		
			Your query: <%= Query.myQuery %>
			<br />
			SocmedCheck00: <%= Query.socmedCheck[0] %>
			<br />
			SocmedCheck01: <%= Query.socmedCheck[1] %>
		</div>
	</div>
</div>
