<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture" %>
<%@ taglib prefix="s1" tagdir="/WEB-INF/tags/sample1" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>

<s1:navbar/>

<div class="container mt-3">
	<div >
		<div class="col-8">
			<form action="" method="post">
				<div class="form-group">
    				<label for="exampleFormControlInput1">제목</label>
    				<input type="text" name="title" class="form-control" id="exampleFormControlInput1">
  				</div>
				<div class="form-group">
    				<label for="exampleFormControlTextarea1">본문</label>
    				<textarea name="body" class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
  				</div>
  				<div class="form-group">
  					<label for="input2">작성자</label>
  					<input id="input2" class="form-control" type="text" name="writer">
  				</div>
  				
  				<div class="form-group">
					<label for="password1">비밀번호</label>
					<input type="text" name="password" class="form-control" id="password1">
				</div>
				
				<br>
				<input type="submit" value="작성" class="btn btn-primary">
			</form>
		</div>
	</div>
</div>

<!-- <div class="container">
	<form action="" method="post">
		제목 
		<br>
		<input type="text" name="title" />
		<br>
		본문
		<br>
		<textarea name="body" ></textarea>
		<br>
		<input type="submit" />
	</form>
</div> -->

</body>
</html>