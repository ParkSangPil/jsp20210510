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


<div class="container mt-5 justify-content-center">
<s2:navbar/>
	<div class="col-8 container mt-5 justify-content-center">
		<h1>${board.id }번 글 보기</h1>
		<form id="form1" action="" method="post">
			<div class="form-group">
   				<label for="exampleFormControlInput1">TITLE</label>
   				<input readonly value="${board.title }" 
   				 type="text" name="title" class="form-control" id="exampleFormControlInput1">
 				</div>
			<div class="form-group">
   				<label for="exampleFormControlTextarea1">BODY</label>
   				<textarea readonly
   				 name="body" class="form-control" id="exampleFormControlTextarea1" rows="10"><c:out value="${board.body }" /></textarea>
 				</div>				
 				<div class="form-group">
   				<label for="exampleFormControlInput2">MEMBER ID</label>
   				<input readonly value="${board.memberIdHidden }" 
   				type="text" name="memberId" class="form-control" id="exampleFormControlInput2">
 				</div>
 				<div class="form-group">
   				<label for="e1">작성 시간</label>
   				<input readonly value="${board.timeAgo }" 
   				type="text" name="inserted" class="form-control" id="e1">
 				</div>
		</form>
	</div>
</div>


</body>
</html>