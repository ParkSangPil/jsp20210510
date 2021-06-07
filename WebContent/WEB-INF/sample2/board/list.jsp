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
				<th>Id</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성 시간</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${boards }" var="board" varStatus="status">
				<tr>
					<td>${board.boardId } </td>
					<td>
						<a href="<%= request.getContextPath() %>/sample2/board/detail?id=${board.boardId}">
							${board.title } 
						</a>
					</td>
					<td>${board.memberName } </td>
					<td>${board.timeAgo } </td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>