<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Bootstrap core CSS/JS, jQuery -->
		<link href="/css/bootstrap.min.css" rel="stylesheet">
		<script src="/js/bootstrap.bundle.min.js"></script>
		<script src="/js/jquery-3.6.0.min.js"></script>
		
		<title>HTML : a Tag</title>
		
		
		<style type="text/css">
			body {		        
		        padding-top: 60px;
		        padding-left: 20px;
		        padding-right: 20px;
		        padding-bottom: 30px;
		      }
		      
			.skip-link {
				  position: absolute;
				  top: 690px;
				  font-weight: bold;
				}
				.skip-link:focus {
				  top: 590px;
				}
		</style>
	</head>
	
	<body>					
		<form name="atagForm" method="post">			
			<div style="background-color: ivory	"> <h1>a 태크</h1><hr>
				<div>
					<a target="_blank" href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a" id="html_a_tag">
						모질라 사이트 : a 태크
					</a>			
				</div>	
				
				<div>
					<p>
				  		문장내 링크를 직접 입력합니다. (target attribute: _blank, _self, _parent, _top, 프레임 이름) 
				  		<a target="_blank" href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a">
				  		모질라 홈페이지 a 태그</a>를 클릭하면 다른 화면(탭)으로 오픈합니다.
					</p>
				</div>
				
				<div>
					<p>
				  		문장내 링크를 직접 입력합니다. (target attribute: _blank, _self, _parent, _top, 프레임 이름) 
				  		<a target="_self" href="https://butil1.com">
				  		모질라 홈페이지 a 태그</a>를 클릭하면 본 화면에 오픈합니다.
					</p>
				</div>
				
				<div>
					<a href="tel:+49.157.0156">+49 157 0156</a>
					<a href="tel:+1(555)5309">(555) 5309</a>
				</div>	
				
				<div>
					<a href="#content" class="skip-link">클릭하면 위로 100px 이동</a>
				</div>
			</div>
		</form>
	</body>
</html>