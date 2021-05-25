<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>

<div class="container mt-5">
	<div class="row justify-content-center">
		<div class="col-4">
			<form action="<%= request.getContextPath() %>/Servlet06Post" method="post">
				<div class="form-group">
					<label for="input1">
						아이디 
					</label>
					<input type="text" name="name" id="input1" class="form-control">
				</div>
				<div class="form-group">
					<label for="input2">
						주소 
					</label>
					<input type="text" name="address" class="form-control" id="input2">
				</div>
				<input type="submit" value="로그인" class="btn btn-primary">
			</form>
		</div>
	</div>
</div>

<%-- <div class="container">
	<form action="<%= request.getContextPath() %>/Servlet06Post" method="post">
		아이디 : <input type="text" name="name"/>
		<br>
		주소 : <input type="text" name="address"/>
		<br>
		<input type="submit"/>
	</form>
</div> --%>

</body>
</html>