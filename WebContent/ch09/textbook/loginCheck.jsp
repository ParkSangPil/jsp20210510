<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="util.Cookies" %>

<%
	Cookies cookies = new Cookies(request);
%>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<% 
	if(cookies.exists("AUTH")){
	%>
	아이디 "<%= cookies.getValue("AUTH") %>"
	<%
	}else{
	%>
	로그인 하지 않은 상태
	<%
	}
	%>
</div>
</body>
</html>