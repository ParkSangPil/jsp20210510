<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="util.Cookies" %>

<%
String id = request.getParameter("id");
String password =request.getParameter("password");

if(id.equals(password)){
	response.addCookie(Cookies.createCookie("AUTH", id , "/" , -1));

%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	로그인에 성공했습니다.
</div>
</body>
</html>
<% 
}else{
%>
<script>
	alert("로그인에 실패하였습니다.");
	history.go(-1);
</script>
<% 
}
%>