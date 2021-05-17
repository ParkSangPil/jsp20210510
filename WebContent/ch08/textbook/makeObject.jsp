<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="member" scope="request" class="ch08.MemberInfo"></jsp:useBean>
<%
member.setId("madvirus");
member.setName("최범균");
%>
<!-- 이건 이렇게도 바꿔 쓸 수 있다.
<jsp:setProperty name="member" property="id" value="madvirus"/>
<jsp:setProperty name="member" property="name" value="최범균"/>
 -->

<jsp:forward page="useObject.jsp" />