<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Bootstrap core CSS/JS, jQuery -->
		<link href="/css/bootstrap.min.css" rel="stylesheet">
		<script src="/js/bootstrap.bundle.min.js"></script>
		<script src="/js/jquery-3.6.0.min.js"></script>
					
		<title>회사등록</title>
		
		<!-- 상단 마진 -->
		<style>
			body {			
				padding-top: 60px;			
				padding-bottom: 30px;			
			}		
		</style>
		
		<!-- 메인버튼 클릭 이벤트  -->
		<script>		
			/* 
			$(document).on('click', '#btnLogin', function(e) {		
				e.preventDefault();
				location.href = "${pageContext.request.contextPath}/main";		
			}); 
			*/
			var compnayCode = parent.document.all["company_code"].value;
			alert("compnayCode => " + compnayCode);
		</script>
		
		<!-- 신규버튼 클릭 이벤트 -->
		<script>	
			$(document).on('click', '#btnNew', function(e) {		
				e.preventDefault();
				location.href = "${pageContext.request.contextPath}/sys/sys101100m/new";		
			});
		</script>
	</head>
	<body>
		<form action="list">
			<article>
				<div class="container">
					<div class="table-responsive">
						
						<!-- 화면 제목 -->
		        		<div class="shadow p-1 mb-2 bg-primary rounded text-light ">        
		      				<div style="margin-left:20px;" >
		      					<h5 style="font-weight:bold; margin-top:10px">회사목록</h5>
						  	</div>        			        			
		        		</div>
		        		<br>
														
						<table class="table table-hover table-sm">							
							<thead>
								<tr class="table-info table-sm">
									<td>No</td>
<!-- 
									<td>회사ID</td> 
-->
									<td align="center">회사코드</td>
									<td align="center">회사명(한글)</td>
									<td align="center">회사명(영문)</td>
									<td align="center">시작일자</td>
									<td align="center">종료일자</td>
									<td align="center">사용여부</td>
<!-- 
									<td align="center">주소라인1</td>
									<td align="center">주소라인2</td>
									<td align="center">우편번호</td> 
-->
									<td align="center">이메일</td>
									<td align="center">전화번호</td>
<!-- 
									<td align="center">설명</td>
									
									<td align="center">생성자</td>
									<td align="center">생성일시</td>
									<td align="center">수정자</td>
									<td align="center">수정일시</td> 
-->
								</tr>	
							</thead>
							<tbody>
								<!-- jstl c tag -->
								<c:choose>
									<c:when test="${empty selectCompanyList}">
										<tr><td colspan="14" align="center">데이터가 존재하지 않습니다.</td></tr>
									</c:when> 
					
									<c:when test="${!empty selectCompanyList}">
										<c:forEach var="n" items="${selectCompanyList}" varStatus="s">
											<tr>
												<td align="center">${s.count}</td>
<%-- 
												<td align="center">${n.company_id}</td> 
--%>
												<td align="center">${n.company_code}</td>
												<td align="left">${n.company_name_kr}</td>
												<td align="left">${n.company_name_en}</td>
												<td align="center">${n.begin_date}</td>
												
												<!-- 종료일자가 null일 경우 처리 -->
												<c:choose>
													<c:when test="${n.end_date eq null || n.end_date eq ''}">
														<td align="center"></td>
													</c:when>
													<c:otherwise>
														<td align="center">${n.end_date}</td>
														<%-- <td align="center"><fmt:formatDate value="${n.end_date}" pattern="yyyy-MM-dd"/></td> --%>
													</c:otherwise>									
												</c:choose>
												
												<c:choose>
													<c:when test="${n.user_yn eq null || n.user_yn eq ''}">
														<td align="center"></td>
													</c:when>
													<c:otherwise>
														<td align="center">${n.user_yn}</td>
													</c:otherwise>									
												</c:choose>
												
<%-- 
												<c:choose>
													<c:when test="${n.address_line1 eq null || n.address_line1 eq ''}">
														<td align="center"></td>
													</c:when>
													<c:otherwise>
														<td align="center">${n.address_line1}</td>
													</c:otherwise>									
												</c:choose>
												
												<c:choose>
													<c:when test="${n.address_line2 eq null || n.address_line2 eq ''}">
														<td align="center"></td>
													</c:when>
													<c:otherwise>
														<td align="center">${n.address_line2}</td>
													</c:otherwise>									
												</c:choose>
												
												<c:choose>
													<c:when test="${n.zip_code eq null || n.zip_code eq ''}">
														<td align="center"></td>
													</c:when>
													<c:otherwise>
														<td align="center">${n.zip_code}</td>
													</c:otherwise>									
												</c:choose> 
--%>
												
												<c:choose>
													<c:when test="${n.email_address eq null || n.email_address eq ''}">
														<td align="left"></td>
													</c:when>
													<c:otherwise>
														<td align="left">${n.email_address}</td>
													</c:otherwise>									
												</c:choose>
												
												<c:choose>
													<c:when test="${n.telephone_number eq null || n.telephone_number eq ''}">
														<td align="left"></td>
													</c:when>
													<c:otherwise>
														<td align="left">${n.telephone_number}</td>
													</c:otherwise>									
												</c:choose>
												
<%-- 
												<c:choose>
													<c:when test="${n.description eq null || n.description eq ''}">
														<td align="center"></td>
													</c:when>
													<c:otherwise>
														<td align="center">${n.description}</td>
													</c:otherwise>									
												</c:choose>
			
												<td align="center">${n.create_by}</td>									
												<td align="center">${n.create_date}</td>
												<td align="center">${n.update_by}</td>
												<td align="center">${n.update_date}</td> 
--%>
											</tr>
										</c:forEach>
									</c:when>
								</c:choose>				
							</tbody>
						</table>
					</div>
					
					<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					  <button id="btnNew" class="btn btn-primary btn-sm" type="button">신규등록</button>
					  <button id="btnLogin" class="btn btn-primary btn-sm me-md-0" type="button">메인화면</button>
					</div>
				</div>				
			</article>
		</form>	
	</body>
</html>