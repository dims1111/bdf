<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<!-- meta jQuery / Bootstrap CSS -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="/js/jquery-3.3.1.slim.min.js"></script>
		<link href="/css/bootstrap.min.css" rel="stylesheet">
	
		<title>회사등록</title>
	
		<script>	
			$(document).on('click', '#btnSave', function(e){	
				e.preventDefault();
				$("#form").submit();
	
			});	
	
			$(document).on('click', '#btnList', function(e){	
				e.preventDefault();
				location.href="${pageContext.request.contextPath}/sys/sys101100m/list";	
			});	
		</script>
	
		<style>	
			body {			
			  padding-top: 70px;			
			  padding-bottom: 30px;		
			}
		</style>	
	</head>

	<body>
		<article>
			<div class="container" role="main">
				<h2>board Form</h2>
					<form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/sys/sys101100m/save">
						<div class="mb-3">
							<label for="title">제목</label>
								<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">
						</div>

				

				<div class="mb-3">

					<label for="reg_id">작성자</label>

					<input type="text" class="form-control" name="reg_id" id="reg_id" placeholder="이름을 입력해 주세요">

				</div>

				

				<div class="mb-3">

					<label for="content">내용</label>

					<textarea class="form-control" rows="5" name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea>

				</div>

				

				<div class="mb-3">

					<label for="tag">TAG</label>

					<input type="text" class="form-control" name="tag" id="tag" placeholder="태그를 입력해 주세요">

				</div>

			

			</form>

			<div >

				<button type="button" class="btn btn-sm btn-primary" id="btnSave">저장</button>

				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>

			</div>

		</div>

	</article>

</body>

</html>
