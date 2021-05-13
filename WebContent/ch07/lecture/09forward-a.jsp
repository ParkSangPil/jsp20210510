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
		<h1>a.jsp</h1>
		
		<!-- 포워드 이전의 코드는 무시되고 그 다음 코드도 실행되지 않음 -->
		<jsp:forward page="09forward-b.jsp"></jsp:forward>
	</div>
</body>
</html>