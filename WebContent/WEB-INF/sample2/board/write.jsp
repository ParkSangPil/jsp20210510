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
<%-- <div class="container">
	<h1>글 작성</h1>
	<form action="${pageContext.request.contextPath }/sample2/board/write" method="post">
		제목 : <br>
		<input type="text" name="title" id="input1"> <br>
		본문 : <br>
		<textarea name="body" id="textarea1" rows="" cols=""></textarea> <br>
		<input type="submit" value="작성">
	</form>
</div> --%>


<div class="container mt-3">
<s2:navbar></s2:navbar>
	<div >
		<div class="container mt-5 col-8 justify-content-center">
			<form action="${pageContext.request.contextPath }/sample2/board/write" method="post">
				<div class="form-group">
    				<label for="e3">제목</label>
    				<input type="text" name="title" class="form-control" id="e3">
  				</div>
				<div class="form-group">
    				<label for="e4">본문</label>
    				<textarea name="body" class="form-control" id="e4" rows="10"></textarea>
  				</div>
				<br>
				<input type="submit" value="작성" class="btn btn-primary">
			</form>
		</div>
	</div>
</div>


</body>
</html>