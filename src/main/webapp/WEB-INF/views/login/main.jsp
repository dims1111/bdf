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
		
		<frameset rows="154px, *">
			<frame name="frameTop" src="top">
			<frameset cols="300px, *">			
				<frame name="frameLeft" src="/left">
				<frame name="frameRight" src="/right">			
			</frameset>
		</frameset>
	</head>
	
	<body>
		<form >
		</form>		
	</body>
</html>
