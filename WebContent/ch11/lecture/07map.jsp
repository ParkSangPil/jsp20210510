<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>
<%
Map<String, String> map = new HashMap<>();
map.put("java","spring");
map.put("css","bootstrap");
map.put("js","jquery");
map.put("python","django");
map.put("h-t-m-l", "html");
map.put("hello world!", "hi");

pageContext.setAttribute("map", map);
pageContext.setAttribute("python", "js");
/* pageContext.setAttribute("python", "python"); */
%>



<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		java : ${map.java } <br>
		css : ${map.css } <br>
		js : ${map.["js"] } <br>
		pyton : ${map[python] } <br>
		
		<hr>
		h-t-m-l : ${map.h-t-m-l } <br>  <!-- 이런건 안되용 -->
		h-t-m-l : ${map.["h-t-m-l"] } <br> <!-- 이렇게 하세용 -->
		<%-- hello world!: ${map.hello world! } <br> --%>
		hello world! : ${map["hello world!"] } <br>
		
	</div>
</body>
</html>









