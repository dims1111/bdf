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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" 
    	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
    	crossorigin="anonymous">
    	
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
    	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
    	crossorigin="anonymous">
    </script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" 
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" 
		crossorigin="anonymous">
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" 
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" 
		crossorigin="anonymous">
	</script>
	
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
        <h2>회사등록</h2>
        
        <form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/sys/sys101100m/save">

		<div class="controls">
		  <input class="span5" type="text" class="form-control" placeholder=".span5">
		</div>
		<div class="controls controls-row">
		  <input class="span4" type="text" class="form-control" placeholder=".span4">
		  <input class="span1" type="text" class="form-control" placeholder=".span1">
		</div>

          <div class="controls controls-row" >
            <label for="company_cd">회사코드</label>
            <div class="col-sm-9">
            	<input type="text" class="form-control input-sm" name="company_cd" id="company_cd" style="width:200px;">
            </div>
          </div>
          <div class="check">
          	<label><input type="checkbox" name="user_yn" id="user_yn">사용여부</label>
          </div>
		  <br>	
          <div class="controls controls-row">
            <label for="company_name_kr">회사명(한글)</label>
            <div class="col-sm-9">
            	<input type="text" class="control" name="company_name_kr" id="company_name_kr" style="width:500px;">
            </div>
            <label for="company_name_en">회사명(영문)</label>
            <div class="col-sm-9">
            	<input type="text" class="form-control" name="company_name_en" id="company_name_en" style="width:500px;">
            </div>	
          </div>
          
          <div class="form-group2">
            <label for="company_name_en">회사명(영문)</label><input type="text" name="company_name_en" id="company_name_en" style="width:500px;">
          </div>

          <div class="mb-3">
            <label for="begin_date">시작일자</label><input type="text" name="begin_date" id="begin_date" style="width:200px;">
            <label for="end_date">종료일자</label>  <input type="text" name="end_date" id="end_date" style="width:200px;">
          </div>

          <div class="mb-3">
            <label for="address_line1">주소</label>    <input type="text" name="address_line1" id="address_line1" style="width:500px;">
          </div>
          <div class="mb-3">  
            <label for="address_line2">상세주소</label><input type="text" name="address_line2" id="end_date" style="width:300px;">
            <label for="zip_code">우편번호</label>     <input type="text" name="zip_code" id="end_date" style="width:100px;" disabled>
          </div>
          
          <div class="form-group">
            <label for="email_address">이메일주소</label>     <input type="email" class="form-control" name="email_address" id="end_date" style="width:200px;">
            <label for="telephone_number">대표전화번호</label><input type="text" name="telephone_number" id="end_date" style="width:200px;">
          </div>

          <div class="mb-3">
            <label for=""description"">비고</label>
            <textarea class="form-control" rows="5" name=""description"" id="description" placeholder="상세내역을 입력합니다." ></textarea>
          </div>

          <div >
            <button type="button" class="btn btn-primary btn-lg" id="btnSave">저장</button>
            <button type="button" class="btn btn-primary btn-lg" id="btnList">목록</button>
          </div>
        </form>
      </div>
    </article>
  </body>

</html>