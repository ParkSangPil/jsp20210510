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
<div class="container mt-3">
	<form action="<%= request.getContextPath() %>/JDBC11Servlet" method="get">
		<div class="form-group col-6">
    		<label for="serch">employee id :</label>
    		<input type="text" name="eid" class="form-control" id="serch">
  		</div>
		<br>
		<input type="submit" value="검색" class="btn btn-primary">
	</form>
</div>
</body>
</html>