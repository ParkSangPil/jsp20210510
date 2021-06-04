<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
<script type="text/javascript">
var url = "${pageContext.request.contextPath}"+"/sample2/member/checkdup";

	$(document).ready(function(){
		$("#button1").click(function(){
			var id = $("#input1").val();
			
			$.post(url, {id: id}, function(data) {
				if (data == 'ok') {
					// 가입 가능 메세지
					// console.log("ok");
					document.getElementById('span1').style.color = "green";
					$("#span1").text("사용 가능");
				} else {
					// 가입 불가능 메세지
					// console.log("not ok");
					document.getElementById('span1').style.color = "red";
					$("#span1").text("사용 불가능");
				}
			});
		});
	});
</script>


</head>
<body>
<div class="container mt-5">
<s2:navbar />
	<div class="row justify-content-center">
		<div class="col-5">
			<div class="conainer mt-5">
			<h1>회원 가입</h1>
			</div>
			<form action="${pageContext.request.contextPath }/sample2/member/signup" method="post">
				<div class="form-group">
					<label for="input1">id</label>
					<input type="text" name="id" id="input1" class="form-control"> 
					<!-- <button class="btn btn-primary" id="button1" type="button">중복 확인</button>
					<span id="span1"></span> -->
				</div>
				<div class="form-group">
					<label for="input2">pw</label>
					<input type="password" name="password" id="input2" class="form-control">
				</div>
				<div class="form-group">
					<label for="input3">name</label>
					<input type="text" name="name" id="input3" class="form-control">
				</div>
				<div class="form-group">
					<label for="input4">birth day</label>
					<input type="date" name="birth" id="input4" class="form-control">
				</div>
			
			<c:if test="${not empty message }">
				<div>
					${message }
				</div>
			</c:if>
		</div>
		<div class="col-5 conainer mt-5">
			<div class="conainer mt-5">
				<h1> </h1>
			</div>
			<div class="form-group">
				<label> </label>
			</div>
			
			<button class="btn btn-primary" id="button1" type="button">중복 확인</button>
			<span id="span1"></span>
			
			
			<pre >
			
			
			
			
			
			
			
			
			
			</pre>
			<div class="container mt-1">
				<input type="submit" value="가입" class="btn btn-primary" >
			</div>
			
			
			</form>
				
		</div>
	</div>
</div>
</body>
</html>