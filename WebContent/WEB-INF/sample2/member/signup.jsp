<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s2" tagdir="/WEB-INF/tags/sample2"%>

<%@ page import="java.util.*" %>  <!-- 랜덤 함수 얻기 -->

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
<script type="text/javascript">
var url = "${pageContext.request.contextPath}"+"/sample2/member/checkdup";
var authurl = "${pageContext.request.contextPath}"+"/sample2/member/authNumber";

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
		
		
		
		
		$("#but2").click(function() {
			var idA = $("#input5").val();
			
			$.post(authurl, {idA: idA,idB: idB}, function(data) {

			});
		});
		
		
		
		
		$("#but2").click(function(){
			$("#inz, #button11").removeAttr("hidden");
			/* $("#inz").text("${authRandomNumber}"); */
				$.post(authurl, {}, function(data) {
					if (data == 'ok1') {
						//$("#signup").removeAttr("hidden");
					} else {
					
					}	
				});
			
			
			$("#button11").click(function(){
				var id1 = $("#inz").val();
				$.post(authurl, {id1: id1}, function(data) {
					if (data == 'ok2') {
						$("#signup").removeAttr("hidden");
					} else {
					
					}
				});
			});
		});
	});
</script>


</head>
<body>
<div class="container mt-5">
<s2:navbar />
	<div class="row justify-content-center">
		<div class="col-7">
			<div class="conainer mt-5">
				<h1>회원 가입</h1>
			</div>
			<form action="${pageContext.request.contextPath }/sample2/member/signup" method="post">
				<div class="form-group">
					<label for="input1">id</label> <!-- 이 아래줄 부터 맘에 안들면 삭제 ㄱㄱ -->
					<div class="input-group mb-3">
					<input id="input1" class="form-control" name="id" type="text">
					<div class="input-group-append">
						<button class="btn btn-outline-secondary" type="button"
								id="button1">중복확인</button>
					</div>
						<span id="span1"></span>
					</div>
					
					
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
				<div class="form-group">
					<label for="input2">E-mail</label>
					<input type="text" name="idA" id="input5" class="form-control">
				</div>
			
			<s2:message></s2:message>
			
		</div>
		<div class="col-5 conainer mt-5">
			<div class="conainer mt-5">
				<h1> </h1>
			</div>
			<div class="form-group">
				<label> </label>
			</div>
			
			<div>
				<button class="btn btn-primary" id="button1" type="button">중복 확인</button>
				<span id="span1"></span>
			</div>
	
			<div class="container mt-5 pl-0">
				<button class="btn btn-primary" id="but2" type="button">인증번호 전송</button>
				<input class="col-3" hidden name="inz" id="inz"/> <!-- 꾸미기 시급!!!!!!!!!!!!!!!!!!!!!!!!!! -->
				<button hidden class="btn btn-primary" id="button11" type="button">인증</button>
			</div>
		</div>
			
		<pre >
		
		
		
		</pre>
		<div class="container mt-5">
			<input hidden id="signup" type="submit" value="가입" class="btn btn-primary" >
		</div>
				
		</div>
	</div>
</div>
</body>
</html>