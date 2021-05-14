<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<%
	Cookie[] cookies = request.getCookies();

for (Cookie c : cookies) {
	c.setMaxAge(0);
	//System.out.println(c.getPath());
	//c.setPath("/jsp-web");
	response.addCookie(c);
}
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
	<div class="container"></div>
</body>
</html>