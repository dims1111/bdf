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
		<link rel="stylesheet" type="text/css" href="./images/shCoreDefault.css">
		
		<title>HTML : a Tag</title>
		
		
		<style type="text/css">
			body {		        
		        padding-top: 60px;
		        padding-left: 20px;
		        padding-right: 20px;
		        padding-bottom: 30px;
		      }
		      
		    .second_title {		        
		        padding-top: 20px;
		        padding-left: 40px;
		        padding-right: 20px;
		        padding-bottom: 20px;
		        background-color: #e3f2fd;
		        border-left:6px solid #2196f3;
		      } 
		      
			.skip-link {
				  position: absolute;
				  top: 690px;
				  font-weight: bold;
				}
				.skip-link:focus {
				  top: 590px;
			}
				
			summary, pre { 
				font-weight: bold;
				font-size: 1.5em;
				color: blue;
			}
		</style>
	</head>
	
	<body>					
		<form name="atagForm" method="post">			
			<div> 
				<h1>a Tag</h1><hr>
					
					<div class="second_title">
						<details>
							<summary>링크를 만드는 태그</summary>
							<ul>
								<li>링크(link)는 태그로 만듭니다.</li> 
								<li>링크의 대상은 웹페이지, 파일, 이메일 등이 될 수 있습니다.</li>
							</ul>
						</details>
					</div>
					
					<br>
					<div class="second_title">
						<h4>외부 페이지(탭) 연결</h4>
						<ul>
							<li>target attribute: _blank, _self, _parent, _top, 프레임 이름</li> 
							<li><a target="_blank" href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a" id="html_a_tag">
								모질라 사이트 연결(a Tag)</a>
							</li>
						</ul>
					</div>
					
					<br>
					<div class="second_title">
						<h4>전화번호 표기 및 전화걸기</h4>
						<ul>
							<li>								
								<pre>&lt;a href="tel:+49.157.0156">+49 157 0156&lt;a&gt;</pre>
							</li>
							<li><a href="tel:+49.157.0156">+49 157 0156</a></li> 
							<li><a href="tel:+1(555)5309">(555) 5309</a></li>
						</ul>
					</div>
				
				<div>
					<a href="#content" class="skip-link">클릭하면 위로 100px 이동</a>
				</div>
			</div>
		</form>
	</body>
</html>