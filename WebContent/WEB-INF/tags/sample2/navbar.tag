<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

  <a class="navbar-brand" href="<%= request.getContextPath() %>/sample2/main">메인<i class="fab fa-js-square"></i>
  </a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <c:if test="${empty sessionScope.userLogined }">
      	<li class="nav-item active">
        	<a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/signup">회원가입 <span class="sr-only">(current)</span></a>
      	</li>
      	<li class="nav-item active">
        	<a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/login">로그인 <span class="sr-only">(current)</span></a>
      	</li>
      </c:if>
      <c:if test="${!empty sessionScope.userLogined }">
      	<li class="nav-item active">
        	<a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/info">정보보기 <span class="sr-only">(current)</span></a>
      	</li>
      	<li class="nav-item active">
        	<a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/logout">로그아웃 <span class="sr-only">(current)</span></a>
      	</li>
      	<li class="nav-item active">
        	<a class="nav-link" href="<%= request.getContextPath() %>/sample2/board/write">글쓰기 <span class="sr-only">(current)</span></a>
      	</li>
      </c:if>
      	<li class="nav-item active">
        	<a class="nav-link" href="<%= request.getContextPath() %>/sample2/board/list">글 목록<span class="sr-only">(current)</span></a>
      	</li>
      	<c:if test="${!empty sessionScope.userLogined }">
      	<li class="nav-item active">
	        <a class="nav-link" href="<%= request.getContextPath() %>/sample2/member/list">회원 목록<span class="sr-only">(current)</span></a>
	    </li>
	    </c:if>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">박상필's</a>
      </li>
    </ul>
  </div>
</nav>