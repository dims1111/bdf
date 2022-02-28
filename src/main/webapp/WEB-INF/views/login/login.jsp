<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="ko">
	<head>
    	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1">

    	<!-- Bootstrap core CSS/JS, jQuery -->
		<link href="/css/bootstrap.min.css" rel="stylesheet">
		<script src="/js/bootstrap.bundle.min.js"></script>
		<script src="/js/jquery-3.6.0.min.js"></script>

    	<style>
      		.bd-placeholder-img {
        		font-size: 1.125rem;
        		text-anchor: middle;
        		-webkit-user-select: none;
        		-moz-user-select: none;
        		user-select: none;
      		}

      		@media (min-width: 768px) {
        		.bd-placeholder-img-lg {
          			font-size: 3.5rem;
        		}
      		}
    	</style>
    	
    	<!-- 메인버튼 클릭 이벤트  -->
		<script>		
			$(document).on('click', '#btnMain', function(e) {		
				e.preventDefault();
				location.href = "${pageContext.request.contextPath}/main";		
			});
			
			$(document).on('click', '#btnLeft', function(e) {		
				e.preventDefault();
				location.href = "${pageContext.request.contextPath}/left";		
			});
		</script>    
	</head>
  	<body>		
  		<div class="container col-xl-10 col-xxl-8 px-4 py-5">
    		<div class="row align-items-center g-lg-5 py-4">
      			<div class="col-lg-7 text-center text-lg-start">
        			<h1 class="display-4 fw-bold lh-1 mb-3">Built1 MVC Project</h1>
        			<p class="col-lg-10 fs-4">
        				빌트원 MVC 프로젝트로 다양한 최신 버전의 Application을 적용하며, 
        				프로젝트는 2022-02-20부터 시작하였으며 2022년 말까지 진행할 예정입니다.
        			</p>
      			</div>
      
      			<div class="col-md-10 mx-auto col-lg-5">
        			<form class="p-4 p-md-5 border rounded-3 bg-light">
          				<div class="form-floating mb-3">
            				<input type="text" class="form-control" id="user_id" placeholder="User ID">
            				<label for="user_id">User ID</label>
          				</div>
          				
          				<div class="form-floating mb-3">
            				<input type="password" class="form-control" id="password" placeholder="Password">
            				<label for="password">Password</label>
          				</div>
          				
          				<button id="btnMain" class="w-100 btn btn-lg btn-primary" type="submit">Sign up</button>
          				<button id="btnLeft" class="w-100 btn btn-lg btn-primary" type="submit">left page</button>
          				<hr class="my-4">
          				<small class="text-muted">사용자가 로그인 하시면, 개인정보 동의를 자동 동의하는 것입니다.</small>
					</form>
				</div>
			</div>
		</div>  
	</body>
</html>


