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
   				 name="body" class="form-control" id="e2" rows="4"><c:out value="${board.body }" /></textarea>
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
		
	<script>
		$(document).ready(function(){
			
			$but = $('#'+'but1');
			$tax = $('#'+'tax1');
			$for = $('#'+'for1');
			
			$but.click(function(e) {
				e.preventDefault();
				if($tax.val().trim() != ''){
					// ok
					$for.submit();						
				}else{
					// else						
					alert('빈칸은 입력 할 수 없습니다!')
				}
			});
		});
	</script> <!-- 여기 공사 시급 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	
	<c:if test="${not empty sessionScope.userLogined }">
		<div class="container mt-5">
			<form id="for1" action="${pageContext.request.contextPath }/sample2/comment/add" method="post">
				<div class="input-group">
					<div class="input-group-prepend">
   					<span class="input-group-text border border-info">댓글</span>
  					</div>
  					<textarea id="tax1" name="comment" class="form-control border border-info" aria-label="With textarea"></textarea>
 				</div>
 				<div class="d-flex mt-1 form-group">
					<input name="memberId" value="${sessionScope.userLogined.id }" readonly class="form-control col-2">
					<input name="boardId" value="${board.boardId }" readonly class="form-control col-2">
					<div class="col-6"></div>
					<button id="but1" class="col-2 btn btn-success">댓글 작성</button>
 				</div>
			</form>
		</div>
	</c:if>
	
	<hr>
	
	<div class="container mt-5">
		<c:forEach items="${comments }" var="comment">
		
		<script>
			$(document).ready(function(){
				var $form = $('#'+'comment${comment.id }Form');
				var $modifyButton = $('#'+'comment${comment.id }Button1');
				var $deleteButton = $('#'+'comment${comment.id }Button2');
				var $submitButton = $('#'+'comment${comment.id }Button3');
				
				$modifyButton.click(function(e){
					e.preventDefault();
					$form.find("textarea").removeAttr("readonly");
					$(this).attr("hidden", "hidden");
					$submitButton.removeAttr("hidden");
				});
				
				$submitButton.click(function(e) {
					e.preventDefault();
					$textarea = $('#comment${comment.id }Textarea');
					if($textarea.val().trim() != ''){
						// ok
						$form.submit();						
					}else{
						// else						
						alert('빈칸은 입력 할 수 없습니다!')
					}
				});
				
				$deleteButton.click(function(e){
					e.preventDefault();
					
					if(confirm("삭제 하시겠습니까?")){
						$form.attr("action", "${pageContext.request.contextPath }/sample2/comment/remove")
						$form.submit();						
					}
				});
				
				$("#wow1").click(function(e) {
					e.preventDefault();
					$("#wow").removeAttr("hidden");
				});
				
			});
		</script>
			
			<form id="comment${comment.id }Form" 
			      action="${pageContext.request.contextPath }/sample2/comment/modify" 
			      method="post">
				<div class="d-flex row">
					<input name="commentId" value="${comment.id }" hidden/>
					<input name="boardId" value="${board.boardId }" hidden/>
					<textarea id="comment${comment.id }Textarea"
					readonly 
					name="comment" class="form-control col-10" rows="3"><c:out value="${comment.comment }" /></textarea>
					<div class="col-2 pr-0 pl-0">
						<div class="form-control col-12 border border-info">${comment.memberName }</div>
						<div class="form-control col-12 border border-info">${comment.timeAgo }</div>
					
					<c:if test="${sessionScope.userLogined.id == comment.memberId }">
						<div class="col-12 d-flex pr-0 pl-0 justify-content-center">
							<button id="comment${comment.id }Button1" class="btn btn-success">수정</button>
							<button id="comment${comment.id }Button3" hidden class="btn btn-success">전송</button>
							<button id="comment${comment.id }Button2" class="btn btn-danger">삭제</button>
						</div>
					</c:if>
					</div>
				</div>
				
					<button id="wow1"></button>
				<div hidden id="wow" >
					<c:if test="${not empty sessionScope.userLogined }">
						<div  class="container mt-5">
							<form id="for1" action="${pageContext.request.contextPath }/sample2/comment/add" method="post">
								<div class="input-group">
									<div class="input-group-prepend">
				   					<span class="input-group-text border border-info">댓글</span>
				  					</div>
				  					<textarea name="comment" class="form-control border border-info" aria-label="With textarea"></textarea>
				 				</div>
				 				<div class="d-flex mt-1 form-group">
									<input name="memberId" value="${sessionScope.userLogined.id }" readonly class="form-control col-2">
									<input name="boardId" value="${board.boardId }" readonly class="form-control col-2">
									<div class="col-6"></div>
									<button id="but1" class="col-2 btn btn-success">댓글 작성</button>
				 				</div>
							</form>
						</div>
					</c:if>
				</div>
					
			</form>
			<hr style="border: dotted 0.5px #E2E2E2">
		</c:forEach>
	</div>
	
	</div>
	
</div>


</body>
</html>