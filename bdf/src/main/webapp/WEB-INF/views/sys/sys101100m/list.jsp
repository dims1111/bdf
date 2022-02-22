<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회사등록</title>
	</head>
	<body>
		<form action="list">
			<table border="1">
				<thead>
					<tr>
						<td>No</td>
						<td>회사ID</td>
						<td>회사코드</td>
						<td>회사명(한글)</td>
						<td>회사명(영문)</td>
						<td>시작일자</td>
						<td>종료일자</td>
						<td>사용여부</td>
						<td>주소라인1</td>
						<td>주소라인2</td>
						<td>우펴번호</td>
						<td>이메일</td>
						<td>전화번호</td>
						<td>설명</td>
					</tr>	
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty selectCompanyList}" >
							<tr><td colspan="14" align="center">데이터가 없습니다.</td></tr>
						</c:when>						
						<c:otherwise>
							<C:forEach var="n" items="${selectCompanyList}" varStatus="s">
								<tr>
									<td align="center">${s.count}</td>
									<td align="center">${n.company_id}</td>
								<tr>
							</C:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
			
			<br>
			<a href="/login" target="_self">메인</a>
		</form>	
	</body>
</html>