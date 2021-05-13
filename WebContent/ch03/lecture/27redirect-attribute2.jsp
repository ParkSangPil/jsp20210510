<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>

<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>27redirect-attribute2.jsp 입니당.</h1>
		<%
		Calendar c = (Calendar) request.getAttribute("date");
		%>
		
		<%= c.get(Calendar.HOUR) %>시
	</div>
</body>
</html>