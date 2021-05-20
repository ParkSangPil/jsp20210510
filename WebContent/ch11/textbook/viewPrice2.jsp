<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="ch11.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
request.setAttribute("price", 12345L);
%>


<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	가격은 <b>${FormatUtil.number(price, '#,##0') }</b>
</div>
</body>
</html>