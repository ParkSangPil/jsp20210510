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
		<% 
		Calendar cal = Calendar.getInstance();
		request.setAttribute("time", cal);
		%>
		<jsp:forward page="viewTime.jsp"></jsp:forward>
	</div>
</body>
</html>