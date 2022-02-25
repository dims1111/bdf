<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<!-- jQuery -->
			<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
			        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
			        crossorigin="anonymous"></script>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" 
		      integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" 
		      crossorigin="anonymous" >

		<title>회사등록</title>
		
		<!-- 상단 마진 -->
		<style>
			body {			
				padding-top: 70px;			
				padding-bottom: 30px;			
			}		
		</style>
		
		<!-- 메인버튼 클릭 이벤트  -->
		<script>		
			$(document).on('click', '#btnLogin', function(e) {		
				e.preventDefault();
				location.href = "${pageContext.request.contextPath}/login";		
			});
		</script>
		
		<!-- 신규버튼 클릭 이벤트 -->
		<script>	
			$(document).on('click', '#btnAddRow', function(e) {		
				e.preventDefault();
				location.href = "${pageContext.request.contextPath}/sys101100m/save";		
			});
		</script>
	</head>
	<body>
		<form action="list2">			
			<div>
				JSON Data : ${selectCompanyList}
			</div>
				
			<div>
				<button type="button" class="btn btn-sm btn-primary" id="btnLogin">메인화면</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnAddRow">신규</button>
			</div>
			
		</form>
	</body>
</html>