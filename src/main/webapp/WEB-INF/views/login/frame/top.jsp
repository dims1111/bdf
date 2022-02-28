<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Bootstrap core CSS/JS, jQuery -->
		<link href="/css/bootstrap.min.css" rel="stylesheet">
		<script src="/js/bootstrap.bundle.min.js"></script>
		<script src="/js/jquery-3.6.0.min.js"></script>
		
		<title>Top page</title>
	</head>
	
	<body>
		<form id="frameTop">
			<h1 style="text-align:center">
				Built1 MVC Framework (Build 0.0.1)  
			</h1><hr>
			
			<nav class="navbar navbar-dark bg-primary">
			  <nav class="navbar navbar-expand-lg navbar-light bg-primary">
				  <div class="container-fluid">
				    <a class="navbar-brand" href="#">접고펴고</a>
				    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
				      <span class="navbar-toggler-icon"></span>
				    </button>
				    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				      <div class="navbar-nav">
				        <a class="nav-link active" aria-current="page" href="#">홈</a>
				        <a class="nav-link" href="#">기준관리</a>
				        <a class="nav-link" href="#">인사정보</a>
				        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">시스템관리</a>
				      </div>
				    </div>
				  </div>
				</nav>
			</nav>
		</form>
	</body>
</html>