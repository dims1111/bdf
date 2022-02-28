<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Bootstrap core CSS/JS, jQuery -->
		<link href="/css/bootstrap.min.css" rel="stylesheet">
		<script src="/js/bootstrap.bundle.min.js"></script>
		<script src="/js/jquery-3.6.0.min.js"></script>
		
		<title>Built1 MVC Project</title>
		
		
		<style type="text/css">
			.skip-link {
				  position: absolute;
				  top: 690px;
				  font-weight: bold;
				}
				.skip-link:focus {
				  top: 590px;
				}
		</style>
		
		<!-- 메인버튼 클릭 이벤트  -->
		<script>		
			$(document).on('click', '#btnCompany', function(e) {
				$(window.parent.frames['frameRight'].document.location).attr('href', '/sys/sys101100m/list');		
			});
		</script>	
	</head>
	
	<body style="margin-left:20px; margin-right:20px;">		
		<form name="frameLeft" method="post">
				
			<a target= "frameRight" href="/sys/sys101100m/list?method_type=get 방식&company_code=BT1&company_name=빌트원">회사등록(get 방식)</a>
		
			<hr/>
			
			Mothod<input type='hidden' name='method_type' value="post 방식" /><br/>
			코드<input type='text' name='company_code' value="BT1" /><br/>
			회사<input type='text' name='company_name' value="빌트원" /><br/><br/>				
			<button id="btnCompany" class="w-100 btn btn-lg btn-primary" type="submit">회사등록(post 방식)</button>
				
			<!-- 
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
			</form> -->	
			
			<div style="background-color: ivory	"> 
				<h1><a target="frameRight" href="/html/atag"> a Tag</a></h1><hr>				
			</div>
			
			<br><br>
			
			<div style="background-color: #CFE2FF; opacity:1.0;"> <h1>h 태크</h1><hr>
				<div>
					<h1>Heading 1</h1>
					<h2>Heading 2</h2>
					<h3>Heading 3</h3>
					<h4>Heading 4</h4>
					<h5>Heading 5</h5>
					<h6>Heading 6</h6>
				</div>
			</div>
		</form>		
	</body>
</html>
