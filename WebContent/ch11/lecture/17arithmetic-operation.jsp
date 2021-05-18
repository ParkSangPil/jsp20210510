<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>

<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>산술 연산</h1>
		\${3 + 5 } = ${3 + 5 } <br> 
		\${3 - 5 } = ${3 - 5 } <br> 
		\${3 * 5 } = ${3 * 5 } <br> 
		\${3 / 5 } = ${3 / 5 } <br> <!-- java에선 integer라서 0으로 나오지만 el은 0.6 으로 나온다 -->
		\${3 % 5 } = ${3 % 5 } <br>
		\${3 mod 5 } = ${3 mod 5 } <br>
	</div>
</body>
</html>