<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String[] attr1 = { "java", "spring", "mariadb", "sql", "html" };
	request.setAttribute("attr1", attr1);
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<ul>
		<c:forEach var="item" items="${attr1 }">
			<li> ${item } </li>
		</c:forEach>
	</ul>
	</div>
</body>
</html>