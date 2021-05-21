<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<% request.setCharacterEncoding("utf-8"); %>

<c:set var="attr1" value="value1" />
<!-- 이거랑 아래거랑 같당 -->
<%
pageContext.setAttribute("attr1", "value1");
%>

<c:set var="attr1" value="value2" scope="request"/> <!-- or session or application -->
<c:set var="attr1" value="value3" scope="session"/>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		${attr1 } <br>
		${pageScope.attr1 } <br>
		${requestScope.attr1 } <br>
		${sessionScope.attr1 } <br>
	</div>
</body>
</html>