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
		${pageScope.attr1 } <br>
		${requestScope.attr1 } <br>
		${sesseionScope.attr1 } <br>
		${applicationScope.attr1 } <br> <!-- 있는지 확인  -->
	<%
	application.removeAttribute("attr1");
	pageContext.setAttribute("pageAttr1", "");
	pageContext.setAttribute("pageAttr2", new int[]{});
	pageContext.setAttribute("pageAttr3", new ArrayList());
	pageContext.setAttribute("pageAttr4", new HashMap());
	%>
	
		<h1>empty 연산자</h1>           <!-- 비어있거나 길이가 0이라면 true -->
		\${empty attr1 } null일 때 : ${empty attr1 } <br>
		\${empty pageAttr1 } 빈 스트링 일 때 : ${empty pageAttr1 } <br>
		\${empty pageAttr2 } 길이가 0인 배열 (x??) : ${empty pageAttr2 } <br>
		\${empty pageAttr3 } 길이가 0인 리스트 : ${empty pageAttr3 } <br>
		\${empty pageAttr4 } 크기가 0인 리스트 : ${empty pageAttr4 } <br>
		
		<h1>not empty 연산자</h1>
		\${not empty attr1 } null일 때 : ${not empty attr1 } <br>
		\${not empty pageAttr1 } 빈 스트링 일 때 : ${not empty pageAttr1 } <br>
		\${not empty pageAttr2 } 길이가 0인 배열 (x??) : ${not empty pageAttr2 } <br>
		\${! empty pageAttr3 } 길이가 0인 리스트 : ${! empty pageAttr3 } <br>
		\${! empty pageAttr4 } 크기가 0인 리스트 : ${! empty pageAttr4 } <br>
		
		
		<hr>
		
	</div>
</body>
</html>