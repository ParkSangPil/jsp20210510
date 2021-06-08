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
		<h1>${board.boardId }번 글 보기</h1>
		<form id="form1" action="${pageContext.request.contextPath }/sample2/board/modify" method="post">
			<div class="form-group">
   				<label for="e1">제목</label>
   				<input readonly value="${board.title }" 
   				 type="text" name="title" class="form-control" id="e1">
 				</div>
			<div class="form-group">
   				<label for="e2">본문</label>
   				<textarea readonly
   				 name="body" class="form-control" id="e2" rows="10"><c:out value="${board.body }" /></textarea>
 				</div>				
 				<div class="form-group">
   				<label for="exampleFormControlInput2">작성자</label>
   				<input readonly value="${board.memberName }" 
   				type="text" name="memberId" class="form-control" id="exampleFormControlInput2">
 				</div>
 				<div class="form-group">
   				<label for="e3">작성 시간</label>
   				<input readonly value="${board.timeAgo }" 
   				type="text" name="inserted" class="form-control" id="e3">
 				</div>
 				
 				<c:if test="${sessionScope.userLogined.id == board.memberId  }" >
 					<script type="text/javascript">
 						$(document).ready(function () {
							$("#button1").click(function() {
								$("#submit1, #submit2").removeAttr("hidden");
								$("#e1, #e2").removeAttr("readonly");
							});
							
							$("#submit2").click(function(e){
									e.preventDefault(); // 눌렀을 때 아무일도 안일어 나는 기능
								
								if (confirm("삭제 하시겠습니까?")){
									var path = '${pageContext.request.contextPath }/sample2/board/remove';
									$("#form1").attr("action", path);
									$("#form1").submit();
								}
							});
						});
 					</script>
 				
 					<input type="number" value="${board.boardId }" name="boardId" hidden>
 					<button id="button1" type="button" class="btn btn-info">수정</button>
					<input hidden id="submit1" type="submit" value="전송" class="btn btn-success">
					<input hidden id="submit2" type="submit" value="삭제" class="btn btn-danger">
				</c:if>	
				
		</form>
		
		<s2:message></s2:message>
		
	</div>
</div>


</body>
</html>