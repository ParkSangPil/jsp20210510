<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<% session.invalidate(); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>로그아웃 하셨습니다.</h1>
	</div>
</body>
</html>