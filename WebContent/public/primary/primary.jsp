<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="saitweet.Query" %>
<%@ page import="saitweet.Tweet" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- VERTICAL NAVBAR -->	

<div id="analysis_navbar" class="navbar navbar-custom navbar-fixed-left">
	
	<ul id="navbarVertical" class="nav navbar-nav">
		<li><a ng-click="setView(0)">DASHBOARD</a></li>
		<li><a ng-click="setView(1)">TWEETS</a></li>
		<li><a ng-click="setView(2)">SENTIMENT</a></li>
	</ul>

</div>

<!-- END OF VERTICAL NAVBAR -->

<div class="selectedView" ng-show="selectedView === 0">
	<div class="container">	
		<div id="intro">
		<!-- 
			Your query: <%= Query.myQuery %>
			<br />
			
			<c:forEach items="<%= Query.socmedCheck %>" var="item">
		
				<c:choose>
					<c:when test="${item == 'TwitterCheck'}">
						<c:out value="OK: + ${item}"/> 
					</c:when>    
					<c:otherwise>
						<c:out value="NULL"/>
					<br />
					</c:otherwise>
				</c:choose>
			
			</c:forEach>
		
			Test Page<br/>
			<c:out value="This is JSTL"/>
		-->
		</div>
	</div>
</div>

<div class="selectedView" ng-show="selectedView === 1">
	<div class="container">
		<div id="intro">
			This is link2 page This is link2 page this is link2 page<br />
			This is link2 page This is link2 page this is link2 page<br />
			This is link2 page This is link2 page this is link2 page<br />
			This is link2 page This is link2 page this is link2 page<br />
			This is link2 page This is link2 page this is link2 page<br />
			This is link2 page This is link2 page this is link2 page<br />
			This is link2 page This is link2 page this is link2 page<br />
			This is link2 page This is link2 page this is link2 page<br />
			This is link2 page This is link2 page this is link2 page<br />
			This is link2 page This is link2 page this is link2 page<br />
			This is link2 page This is link2 page this is link2 page<br />
			This is link2 page This is link2 page this is link2 page<br />
			This is link2 page This is link2 page this is link2 page<br />
			This is link2 page This is link2 page this is link2 page<br />
			This is link2 page This is link2 page this is link2 page<br />
			This is link2 page This is link2 page this is link2 page<br />
		</div>
	</div>
</div>

<!-- Tweet container -->
<div class="testTweet" ng-show="selectedView === 2">
 
		<c:forEach begin="6" end="15" var="val">
			
			<!-- Spesific tweet container -->
			<div class="tweetContainer">
				
				<table border="1" class="table table-striped" style="width: 100%; display: block; table-layout: fixed;">
					<thead>
				  		<tr>
				    		<!-- user image profile -->
				      		<th rowspan="2" class="userIMG" style="width: 15%; height: 15%; border:1px solid grey;">Image</th>
				      		
				      		<!-- user full name -->
				      		<th class="userFullname">Fullname</th>
				    	</tr>
					    <tr>
					    	<!-- username -->
					      	<th class="userUsername">Username</th>
					    </tr>
				  	</thead>
				  	<tbody>
				    	<tr>
				      		<td colspan="2" class="userText" style="max-width:700px; word-wrap:break-word;">
				      			TextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextTextText
				      		</td>
				    	</tr>
				  	</tbody>
				</table>
			
			</div>
				
		</c:forEach>
		
</div>