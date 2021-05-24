<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="startPage" %>
<%@ attribute name="endPage" %>

<div>
	startPage : ${startPage }
	<br>
	endPage : ${endPage }
</div>

<div class="container">
<nav aria-label="Page navigation example">
  <ul class="pagination">
    <c:forEach var="i" begin="${startPage }" end="${endPage }" varStatus="status">
			<c:if test="${status.first && i != 1 }">
    			<li class="page-item"><a class="page-link" href="#">Previous</a></li>
			</c:if>
    <li class="page-item"><a class="page-link" href="#">${i }</a></li>
    </c:forEach>
    
    
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>
</div>