<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function(){
		$("#button1").click(function(){
			$("#input2, #input3, #input4").removeAttr("readonly");
			$("#submit1").removeAttr("hidden");
		});
		
		$("#submit2").click(function(e){
			
			e.preventDefault();
			
			if(confirm("탈퇴 하시겠습니까??")){
				$("#form2").submit();
			}
		});
	});
</script>

</head>
<body>
<div class="container mt-5">
	<s2:navbar />
		<div class="col-3">
		<div class="conainer mt-5">
			<h1>회원 정보</h1>
			</div>
	<form id="form1" action="${pageContext.request.contextPath }/sample2/member/modify" method="post">
				<div class="form-group">
					<label for="input1">id</label>
					<input readonly type="text" name="id" id="input1" class="form-control" value="${member.id }">
				</div>
				<div class="form-group">
					<label for="input2">pw</label>
					<input readonly type="password" name="password" id="input2" class="form-control" value="${member.password }">
				</div>
				<div class="form-group">
					<label for="input3">name</label>
					<input readonly type="text" name="name" id="input3" class="form-control" value="${member.name }">
				</div>
				<div class="form-group">
					<label for="input4">birth day</label>
					<input readonly type="date" name="birth" id="input4" class="form-control" value="${member.birth }">
				</div>
		<button type="button" id="button1" class="btn btn-primary">수정</button> 
		<input hidden type="submit" id="submit1" value="전송" class="btn btn-primary">
	</form>

	<s2:message></s2:message>
	
	</div>

	<div class="container mt-3">
		<form id="form2" action="${pageContext.request.contextPath }/sample2/member/remove" method="post">
			<input id="submit2" type="submit" value="탈퇴" class="btn btn-danger">
		</form>
	</div>


<div class="container">
	작성한 게시물 : <span>${member.numberOfBoard }</span>개
	<br>
	작성한 게시물 : <span>${member.numberOfComment }</span>개
</div>

</div>
</body>
</html>