<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="ch07.User"%>




<%
User member = (User) request.getAttribute("user");
String name = member.getName();
int age = member.getAge();
String address = member.getAddress();
%>


<div>
이름 : <%= name %> <br>
나이 : <%= age %> <br>
주소 : <%= address %> <br>

</div>