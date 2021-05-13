<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<h1>세션 정보 꺼내라</h1>
		<%
		Object o = session.getAttribute("MEMBERID");
		String s = (String) o;
		%>
		
		<p>MEMBERID : <%= s %> </p>
		<p>NAME : <%= session.getAttribute("name") %> </p>
	</div>
</body>
</html>