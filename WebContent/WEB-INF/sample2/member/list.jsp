<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container mt-5">
	<s2:navbar />
	<table class="table table-striped table-dark">
		<thead>
			<tr>
				<th># </th>
				<th>ID </th>
				<th>PW </th>
				<th>이름 </th>
				<th>생일 </th>
				<th>가입 시간 </th>
			</tr>
		</thead>
		<tbody>
			<c:set var="len" value="${fn:length(members)}"/>	<!-- 추가한 부분 -->		
			<c:forEach items="${members }" var="member" varStatus="status">	
				<tr>			
					<td>${len-status.index } </td> <!-- 추가한 부분 -->					
					<td>${member.id } </td>
					<td>${member.password } </td>
					<td>${member.name } </td>
					<td>${member.birth } </td>
					<td>${member.inserted } </td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>