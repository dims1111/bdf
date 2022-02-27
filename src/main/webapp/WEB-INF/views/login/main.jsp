<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Built1 MVC Project</title>
		<script src="/js/jquery-3.3.1.slim.min.js"></script>
		<link href="/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://kit.fontawesome.com/7217e40e9a.js" crossorigin="anonymous"></script>
	</head>
	
	<body>
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
		
		<a href="/sys/sys101100m/list?method_type=get 방식&company_code=BT1&company_name=빌트원">회사등록(get 방식)</a>
		
		<hr/>
		<form action='/sys/sys101100m/list' method='post'>
			Mothod Type : <input type='hidden' name='method_type' value="post 방식" /><br/>
			회사코드 : <input type='text' name='company_code' value="BT1" /><br/>
			회사명 : <input type='text' name='company_name' value="빌트원" /><br/><br/>
			
			<button type='submit'>회사등록(post 방식)</button>
		</form>
		
		<form action='/sys/sys101100m/list2' method='get'>
			Mothod Type : <input type='hidden' name='method_type' value="post 방식" /><br/>
			회사코드 : <input type='text' name='company_code' value="BT1" /><br/>
			회사명 : <input type='text' name='company_name' value="빌트원" /><br/><br/>
			
			<button type='submit'>회사등록(Rest API 방식)</button>
		</form> 		
	</body>
</html>
