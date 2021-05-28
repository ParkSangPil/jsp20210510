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
	<div class="form-group col-6">
    	<label for="exampleFormControlTextarea1">정보</label>
    	<textarea style="font-size: 30px" name="body" class="form-control" id="exampleFormControlTextarea1" rows="1"><c:out value="${emp.id } 번 직원은 ${emp.lastName }, ${emp.firstName } 입니다." /></textarea>
  	</div>
</div>
</body>
</html>