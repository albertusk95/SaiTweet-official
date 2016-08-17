<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="saitweet.Query" %>
<%@ page import="saitweet.Tweet" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- VERTICAL NAVBAR -->	

<div id="analysis_navbar" class="navbar navbar-custom navbar-fixed-left">
	
	<ul id="navbarVertical" class="nav navbar-nav">
		<li><a ng-class="{'activePrimary': selectedView === 0}" ng-click="setView(0)">DASHBOARD</a></li>
		<li><a ng-class="{'activePrimary': selectedView === 1}" ng-click="setView(1)">TWEETS</a></li>
		<li><a ng-class="{'activePrimary': selectedView === 2}" ng-click="setView(2)">SENTIMENT</a></li>
	</ul>

</div>

<!-- END OF VERTICAL NAVBAR -->

<div class="selectedView" ng-show="selectedView === 0">
	<div class="container">	
		<div id="intro">
		
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
		</div>
	</div>
</div>

<!-- Tweet container -->
<div class="testTweet" ng-show="selectedView === 2">
 
		<c:set var="tweetNum" value="<%= Tweet.qrTweets.size() %>" />
		
		<div class="tweetContainer">
			<h1>TweetNum is <c:out value="${tweetNum}" /></h1>
		</div>
		
		
		<c:forEach var="item" items="<%= Tweet.qrTweets %>" varStatus="loop">
			
			<div class="tweetContainer">
				
				<!-- 
				<table border="1" class="table table-striped" style="width: 100%; display: block; table-layout: fixed;">
				-->
				<table border="1" class="table table-striped" style="width: 100%; table-layout: fixed;">
				
					<thead>
				  		<tr>
				    		<!-- user image profile -->
				      		<th rowspan="2" class="userIMG" style="width: 15%; border:1px solid grey;">
				      		
				      			<img src="${item.getUser().getProfileImageURL()}" style="display: block; width: 100%; height: 100%" />
				      		
				      		</th>
				      		
				      		<!-- user full name -->
				      		<th class="userFullname" style="width: 85%;">
				      			
				      			<c:out value="${item.getUser().getName()}" />
				      			
				      		</th>
				    	</tr>
					    <tr>
					    	<!-- username -->
					      	<th class="userUsername" style="width: 85%;">
					      		<c:out value="${item.getUser().getScreenName()}" />
					      	</th>
					    </tr>
				  	</thead>
				  	<tbody>
				    	<tr>
				      		<td colspan="2" class="userText" style="max-width:700px; word-wrap:break-word;">
				      			<c:out value="${item.getText()}" />
				      		</td>
				    	</tr>
				  	</tbody>
				</table>
			
			</div>
			
			<!-- DETAIL BUTTON -->
			
			<div class="detailButtonContainer" ng-click="showDetails(${loop.index})">
				<b>Show details</b>
			</div>
			
			<div id="${loop.index}" style="display: none; margin-bottom: 100px;">
	            
	     	</div>
		
		</c:forEach>
		
</div>