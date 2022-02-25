<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Home</title>
	</head>
	
	<body>
		<h1>
			Hello world!  
		</h1>
	
		<P>  The time on the server is ${serverTime}. </P>
		
		<a href="/sys/sys101100m/list?method_type=get 방식&company_code=BT1&company_name=빌트원">회사등록(get 방식)</a>
		
		<hr/>
		<form action='/sys/sys101100m/list' method='post'>
			Mothod Type : <input type='hidden' name='method_type' value="post 방식" /><br/>
			회사코드 : <input type='text' name='company_code' value="BT1" /><br/>
			회사명 : <input type='text' name='company_name' value="빌트원" /><br/><br/>
			
			<button type='submit'>회사등록(post 방식)</button>
			<button type='submit'>회사등록(post 방식)</button>
		</form>
		
		<form action='/sys/sys101100m/list2' method='post'>
			Mothod Type : <input type='hidden' name='method_type' value="post 방식" /><br/>
			회사코드 : <input type='text' name='company_code' value="BT1" /><br/>
			회사명 : <input type='text' name='company_name' value="빌트원" /><br/><br/>
			
			<button type='submit'>회사등록(post 방식)</button>
		</form>
	</body>
</html>
