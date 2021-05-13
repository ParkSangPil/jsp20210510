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
		<form action="<%-- <%= request.getContextPath() %> --%>view.jsp">
		
		보고싶은 페이지 선택:
		<select name="code">
		<option value="A">A 페이지 </option>
		<option value="B">B 페이지 </option>
		<option value="C">C 페이지 </option>
		</select>
		
		<input type="submit" value="이동">
		
		</form>
	</div>
</body>
</html>