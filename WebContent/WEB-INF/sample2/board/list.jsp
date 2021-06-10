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
	<h1>글 목록 <small class="text-muted">${totalNum }개의 글이 있습니다.</small></h1>
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
			<%-- <c:set var="len" value="${fn:length(boards)}"/> 추가한 부분 --%>		
			<c:forEach items="${boards }" var="board" varStatus="status">
				<tr>
					<%-- <td>${len-status.index } </td> 추가한 부분 --%>
					<td>${board.boardId }</td>
					<td>
						<a style="color: white; text-decoration: none;" href="<%= request.getContextPath() %>/sample2/board/detail?id=${board.boardId}">
							${board.title } 
						</a>
						<c:if test="${board.numberOfComment ne 0 && board.numberOfComment > 5 }">
							<span style="color: yellow;">[${board.numberOfComment }]</span>
						</c:if>
						<c:if test="${board.numberOfComment ne 0 && board.numberOfComment <= 5 }">
							<span>[${board.numberOfComment }]</span>
						</c:if>
					</td>
					<td>${board.memberName } </td>
					<td>${board.timeAgo } </td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
		<div class="d-flex justify-content-center mt-3">
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<c:forEach begin="1" end="10" var="i">
						<li class="page-item"><a class="page-link"
							href="${pageContext.request.contextPath }/sample2/board/list?page=${i}">${i }</a></li>
					</c:forEach>
				</ul>
			</nav>
		</div>
		
</div>
<div class="container mt-5">
	<s2:message></s2:message>
</div>
</body>
</html>