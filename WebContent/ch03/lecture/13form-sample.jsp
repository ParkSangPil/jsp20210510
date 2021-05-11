<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form>
			<input type="checkbox" name="fruit" value="100"> 사과 : 100원 <br>
			<input type="checkbox" name="fruit" value="150"> 바나나 : 150원<br>
			<input type="checkbox" name="fruit" value="200"> 딸기 : 200원<br>
			<input type="checkbox" name="fruit" value="300"> 키위 : 300원<br>
			<input type="checkbox" name="fruit" value="500"> 망고 : 500원<br>
			<input type="checkbox" name="fruit" value="700"> 수박 : 700원<br>

			<%
				int sum = 0;

			String[] fruits = request.getParameterValues("fruit");
			int[] num = null;
			if (fruits != null && fruits.length > 0) {
				num = new int[fruits.length];
				for (int i = 0; i < fruits.length; i++) {
					num[i] = Integer.parseInt(fruits[i]);
					/* 
					for(String value : fruits){
						sum += Integer.valueOf(value); 도 된다 
					}
					*/
					sum += num[i];
				}
			}

			/* 			if (fruits != null && fruits.length > 0) {
					for (int i = 0; i < fruits.length; i++) {
						sum += num[i];
					}
				}
			 */
			%>

			<input type="submit" value="합계">

		</form>
	</div>

	<hr>

	<div class="container">
		합계 :
		<%=sum%>
		<!-- 이 위치에 출력되도록 -->
	</div>
</body>
</html>