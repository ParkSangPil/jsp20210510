<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container mt-5">
<s2:navbar />
	<div>
		<div class="col-3">
			<div class="conainer mt-5">
			<h1>로그인</h1>
			</div>
		<form action="${pageContext.request.contextPath }/sample2/member/login" method="post">
			<div class="form-group">
				<label for="input1">id</label>
				<input type="text" name="id" id="input1" class="form-control">
			</div>
			<div class="form-group">
				<label for="input2">pw</label>
				<input type="password" name="password" id="input2" class="form-control">
			</div>
			<input type="submit" value="로그인" class="btn btn-primary" >
		</form>
	</div>
</div>	
	
<c:if test="${not empty message }">
	<div class="col-4">
		<input type="text" name="password" class="form-control" value="${message }">
	</div>
</c:if>

</body>
</html>