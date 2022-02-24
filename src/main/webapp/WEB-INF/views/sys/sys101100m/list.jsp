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
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" 
		      integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" 
		      crossorigin="anonymous" >

		<title>회사등록</title>
		
		<!-- 상단 마진 -->
		<style>
			body {			
				padding-top: 70px;			
				padding-bottom: 30px;			
			}		
		</style>
		
		<!-- 메인버튼 클릭 이벤트  -->
		<script>		
			$(document).on('click', '#btnLogin', function(e) {		
				e.preventDefault();
				location.href = "${pageContext.request.contextPath}/login";		
			});
		</script>
		
		<!-- 신규버튼 클릭 이벤트 -->
		<script>	
			$(document).on('click', '#btnAddRow', function(e) {		
				e.preventDefault();
				location.href = "${pageContext.request.contextPath}/sys101100m/save";		
			});
		</script>
	</head>
	<body>
		<form action="list">
			<article>
				<div class="container">
					<div class="table-responsive">
						<h3>회사등록</h3>		
						<table class="table table-striped table-sm">							
							<thead>
								<tr>
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
												<td align="center">${n.company_name_kr}</td>
												<td align="center">${n.company_name_en}</td>
												<td align="center">${n.begin_date}</td>
												
												<!-- 종료일자가 null일 경우 처리 -->
												<c:choose>
													<c:when test="${n.end_date eq null || n.end_date eq ''}">
														<td align="center"></td>
													</c:when>
													<c:otherwise>
														<td align="center"><fmt:formatDate value="${n.end_date}" pattern="yyyy-MM-dd"/></td>
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
														<td align="center"></td>
													</c:when>
													<c:otherwise>
														<td align="center">${n.email_address}</td>
													</c:otherwise>									
												</c:choose>
												
												<c:choose>
													<c:when test="${n.telephone_number eq null || n.telephone_number eq ''}">
														<td align="center"></td>
													</c:when>
													<c:otherwise>
														<td align="center">${n.telephone_number}</td>
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
					
					<div >
						<button type="button" class="btn btn-sm btn-primary" id="btnLogin">메인화면</button>
						<button type="button" class="btn btn-sm btn-primary" id="btnAddRow">신규</button>
					</div>
				</div>				
			</article>
		</form>	
	</body>
</html>