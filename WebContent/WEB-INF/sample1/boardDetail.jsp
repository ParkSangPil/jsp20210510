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
<script type="text/javascript">
	var detailPath = '${pageContext.request.contextPath }/sample1/detail?index=${param.index}';
	var modifyPath = '${pageContext.request.contextPath }/sample1/modify?index=${param.index}';
	$(document).ready(function() {
		$("#button1").click(function(e) {
			e.preventDefault();
			//$("#form1").find("input, textarea").removeAttr("readonly");
			//$("#submit1").removeAttr("hidden");
			$("#form1").attr("action", detailPath);
			$("#form1").submit();
		});
		$("#submit1").click(function(e) {
			e.preventDefault();
			$("#form1").attr("action", modifyPath);
			$("#form1").submit();
		});
	});
	
</script>
</head>
<body>

<s1:navbar/>

<div class="container mt-3">
	<div >
		<div class="col-8">
			<form id="form1" action="" method="post">
				<div class="form-group">
    				<label for="exampleFormControlInput1">제목</label>
    				<input value="${board.title }" 
    				<c:if test="${not ifModify}"> 
    				readonly
    				</c:if>
    				 type="text" name="title" class="form-control" id="exampleFormControlInput1">
  				</div>
  				<div class="form-group">
    				<label for="exampleFormControlInput2">작성자</label>
    				<input value="${board.writer }" 
    				<c:if test="${not ifModify}"> 
    				readonly
    				</c:if> 
    				type="text" name="writer" class="form-control" id="exampleFormControlInput2">
  				</div>
				<div class="form-group">
    				<label for="exampleFormControlTextarea1">본문</label>
    				<textarea
    				<c:if test="${not ifModify}"> 
    				readonly
    				</c:if>
    				 name="body" class="form-control" id="exampleFormControlTextarea1" rows="10"><c:out value="${board.body }" /></textarea>
  				</div>
  				
  				<div class="form-group">
					<label for="password1">비밀번호</label>
					<input type="text" name="password" class="form-control" id="password1">
				</div>
				
				<br>
				<input hidden type="text" value="${param.index }" name="index">
				<button type="submit" id="button1" class="btn btn-secondary">수정</button>
				<c:if test="${ifModify}">
					<input type="submit" id="submit1" class="btn btn-primary" value="저장"/>
				</c:if>
			</form>
			<form id="form2" action="${pageContext.request.contextPath }/sample1/remove" method="post">
				<button class="float-right btn btn-danger" type="remove" id="remove1">삭제</button>			
			</form>
		</div>
	</div>
</div>


</body>
</html>