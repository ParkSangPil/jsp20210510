<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
Cookie cookie = new Cookie("oneh", "Itime");
cookie.setMaxAge(60*60); // 30분
response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		유효시간이 1시간인 oneh 쿠키 생성.
	</div>
</body>
</html>