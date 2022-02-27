<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
  	<head>
	    <meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Bootstrap core CSS/JS, jQuery -->
		<link href="/css/bootstrap.min.css" rel="stylesheet">
		<script src="/js/bootstrap.bundle.min.js"></script>
		<script src="/js/jquery-3.6.0.min.js"></script>
		
	    <title>회사등록(신규)</title>

	    <!-- 목록버튼 클릭 --> 
	    <script type="text/javascript">
	    	$(function() {
	    		$("#btnList").click(function() {
	    			location.href="${pageContext.request.contextPath}/sys/sys101100m/list";
	    		});
	      	});
	    </script>
	    
	    <!-- 저장버튼 클릭  -->
	    <script type="text/javascript">
	    	$(document).on("'click", "#btnSave", function(){	        	
	        	$("#newForm").submit();
	    	});
	    </script>
	     
	     <!-- <script>  	
	      
	    	/* 초기화 */
	    	$(document).on('click', '#btnClear', function(e){
	        	e.preventDefault();
	        	$("#company_code").val(''); //.att('value', '');
	        	$("#user_yn").prop("checked", false);
	        	$("#begin_date").val(''); //.att('value', '');
	        	$("#end_date").val(''); //.att('value', '');
	      	});
	      
	    	/* 저장 */
	      	$(document).on('click', '#btnSave', function(e){
		        e.preventDefault();
		        $("#new").submit();
		    });
	    	
	    	/* $(function() {
	    		$('label').css({'width':'120px', 'text-align':'right', 'font-weight':'bold'});	
	    	});	  */   	
	    	
	    </script> -->

	    <style>
	      body {
	        padding-top: 60px;
	        padding-bottom: 30px;
	      }
    	</style>
  	</head>

 	<body>
 		<form id="newFrom" name="newForm" method="post"	action="/sys/sys101100m/save" >        	
			<article>		
      			<div class="container">
	        		<!-- 화면 제목 -->
	        		<div class="shadow p-1 mb-2 bg-primary rounded text-light ">        
	      				<div style="margin-left:20px;" >
	      					<h5 style="font-weight:bold; margin-top:10px">회사등록</h5>	      				
					  	</div>        			        			
	        		</div>        		
	        		
	        		<!-- <p class="mb-1">회사에 대한 상세내역을 입력 후 저장버튼을 클릭합니다.</p> -->
	        		<hr>		
          			
          			<div class="row mb-1">
          				<label for="company_code" class="col-sm-1 col-form-label-sm col-form-label" >회사코드</label>
		          		<div class="col-md-5">		            				            		            
		            		<input type="text" class="form-control form-control-sm" style="background-color:#FFFFCC"  
		            			id="company_code" name="company_code" value="BT99" >		            		
						</div>	
						
						<label for="user_yn" class="col-sm-1 col-form-label-sm col-form-label" >사용여부</label>
						<div class="col-sm-5">	
							<div class="form-check">		  
							  	<input class="form-check-input" type="checkbox"  
							  		id="user_yn" name="user_yn" value="" checked value="Y">							  
							</div>
						</div>	
		          	</div>
		          				        
			        <div class="row mb-1">				
					    <label for="begin_date" class="col-sm-1 col-form-label-sm col-form-label" >시작일자</label>
					    <div class="col-sm-5">
					    	<input type="date" class="form-control form-control-sm" style="background-color:#FFFFCC"   
					    		id="begin_date" name="begin_date" value="1987-07-17">					    	
					    </div>				
					
						<label for="end_date" class="col-sm-1 col-form-label-sm col-form-label" >종료일자</label>
					    <div class="col-sm-5">
					    	<input type="date" class="form-control form-control-sm" 
					    		name="end_date" id="end_date" value="" >
					    </div>
					</div>
			        
			        <div class="row mb-1">				
					    <label for="company_name_kr" class="col-sm-1 col-form-label-sm col-form-label" >회사(KO)</label>					    
					    <div class="col-sm-5">
					    	<input type="text" class="form-control form-control-sm"  style="background-color:#FFFFCC" 
					    		id="company_name_kr" name="company_name_kr" value="빌트원99" >
					    </div>
					
						<label for="company_name_en" class="col-sm-1 col-form-label-sm col-form-label" >회사(EN)</label>
					    <div class="col-sm-5">
					    	<input type="text" class="form-control form-control-sm"  style="background-color:#FFFFCC"
					    		name="company_name_en" id="company_name_en" value="Built199" >
					    </div>
					</div>
			          			        
			        <div class="row mb-1">				
					    <label for="address_line1" class="col-sm-1 col-form-label-sm col-form-label" >주소</label>					    
					    <div class="col-sm-5">
					    	<input type="text" class="form-control form-control-sm"  
					    		id="address_line1" name="address_line1" value="서울특별시 역삼동" >
					    </div>
					
						<label for="address_line2" class="col-sm-1 col-form-label-sm col-form-label" >상세주소</label>
					    <div class="col-sm-5">
					    	<input type="text" class="form-control form-control-sm" 
					    		name="address_line2" id="address_line2" value="미진빌딩 99층" >
					    </div>
					</div>
					
					<div class="row mb-1">
					    <label for="zip_code" class="col-sm-1 col-form-label-sm col-form-label" >우편번호</label>
					    <div class="col-sm-1">
					    	<input type="text" class="form-control form-control-sm"
					    		name="zip_code" id="zip_code" value="12345" disabled>
					    </div>
					</div>
			        
			        <div class="row mb-1">				
					    <label for="email_address" class="col-sm-1 col-form-label-sm col-form-label" >이메일주소</label>					    
					    <div class="col-sm-5">
					    	<input type="email" class="form-control form-control-sm"  
					    		id="email_address" name="email_address" value="admin@super.com" required>
					    </div>
					
						<label for="telephone_number" class="col-sm-1 col-form-label-sm col-form-label" >전화번호</label>
					    <div class="col-sm-5">
					    	<input type="text" class="form-control form-control-sm" 
					    		name="telephone_number" id="telephone_number" required>
					    </div>
					</div> 
					
					<div class="row mb-1">
						<label for="email_address" class="col-sm-1 col-form-label-sm col-form-label" >비고</label>
		            	<div class="col-sm-11">		            
		            		<textarea class="form-control form-control-sm" placeholder="상세내역을 입력합니다."
		            			name="description" id="description"   ></textarea>
		            	</div>
					</div>
					
					<hr>
					<div class="d-grid gap-2 d-md-flex justify-content-md-end" style="width:100%">
						<button id="btnList" class="btn btn-primary btn-sm me-md-0" type="button">목록</button>
						<button id="btnClear" class="btn btn-primary btn-sm me-md-0" type="button">초기화</button>
											  	
					</div>
					<button id="btnSave" type="button">저장</button>													
        		</div>
    		</article>
    	</form>
  	</body>
</html>