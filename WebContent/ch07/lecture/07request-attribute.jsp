<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch07.Page" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
<%
Page p = new Page(3,10);
request.setAttribute("page", p); // 약간 저장

Object o = request.getAttribute("page"); // 불러오기 느낌 ?
// System.out.println(o==p); // 같아용

Page p2 = (Page) o;

int s = p2.getStart();
int e = p2.getEnd();

System.out.println(s);
System.out.println(e);
%>



	<div class="container">
		<jsp:include page="07request-attribute-sub.jsp"></jsp:include>
	</div>
</body>
</html>