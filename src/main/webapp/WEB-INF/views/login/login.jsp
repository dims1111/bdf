<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
	<head>	
		<meta charset="utf-8">
		<title>Built1 MVC & Bootstrap v5.1</title>
	
		<!-- Bootstrap core CSS -->
		<link href="/css/bootstrap.min.css" rel="stylesheet">
		<link href="/css/signin.css" rel="stylesheet">
	</head>	
	
	<body class="text-center">
		<main class="form-signin">
			<form action='/main' method='post'>
				<img class="mb-4" src="/image/bootstrap-logo.svg" alt="" width="72" height="57">				
				<h1 class="h3 mb-3 fw-normal">Please sign in</h1>

				<div class="form-floating">
					<input type="text" class="form-control" id="user_id" text="" placeholder="User ID"> 
					<label for="user_id">User ID</label>
				</div>
				
				<div class="form-floating">
					<input type="password" class="form-control" id="password" value="" text="" placeholder="Password">
					<label for="password">Password</label>
				</div>

				<div class="checkbox mb-3">
					<label> <input type="checkbox" value="remember-me">Remember me</label>
				</div>
				
				<button class="w-100 btn btn-lg btn-primary" type="submit">Sign	in</button>
				<p class="mt-5 mb-3 text-muted"></p>
		</form>
	</main>
</body>
</html>

