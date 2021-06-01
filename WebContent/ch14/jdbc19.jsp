<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<form action="" method="post">
		id : <input name="employeeID" type="text" value="${employee.employeeID }" readonly> <br>
		Last Name : <input name="lastName" type="text" value="${employee.lastName }"> <br>
		First Name : <input name="firstName" type="text" value="${employee.firstName }"> <br>
		Note : <br>
		<textarea name="notes" rows="5"><c:out value="${employee.notes }"/></textarea>
		<br>
		<input type="submit" value="삭제">
	</form>
</div>
</body>
</html>