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

<%-- <div class="container">
	<h1>Add Emplyee</h1>
	
	<form action="${pageContext.request.contextPath }/JDBC15InsertServlet" method="post">
		Emplyee LastName : <input type="text" name="lastName"> <br>
		Emplyee FirstName : <input type="text" name="firstName"> <br>
		BirthDate : <input placeholder="1995-05-28" type="text" name="birthDate"> <br>
		Photo : <input type="text" name="photo"> <br>
		Notes : <input type="text" name="notes"> <br>
		<input type="submit">
	</form>
</div> --%>

<div class="container mt-5">
	<div class="row justify-content-center">
		<div class="col-6">
			<div>
			<h1>Add Emplyee</h1>
			</div>
			<form action="${pageContext.request.contextPath }/JDBC15InsertServlet" method="post">
				<div class="form-group">
					<label for="input1">Emplyee LastName</label>
					<input type="text" name="lastName" id="input1" class="form-control">
				</div>
				<div class="form-group">
					<label for="input2">Emplyee FirstName</label>
					<input type="text" name="firstName" class="form-control" id="input2">
				</div>
				<div class="form-group">
					<label for="input3">BirthDate</label>
					<input placeholder="1995-05-28" type="date" name="birthDate" class="form-control" id="input3">
				</div>
				<div class="form-group">
					<label for="input4">Photo</label>
					<input type="text" name="photo" class="form-control" id="input4">
				</div>
				<div class="form-group">
	   				<label for="Textarea1">Notes</label>
	   				<textarea name="notes" class="form-control" id="Textarea1" rows="10"></textarea>
	  			</div>
				<input type="submit" value="입력" class="btn btn-primary">
			</form>
		</div>
	</div>
</div>

</body>
</html>