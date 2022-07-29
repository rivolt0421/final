<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="tags.jsp" %>
<nav class="navbar navbar-expand-sm" style="background-color:#f7323f;">
	<div class="container">
		<ul class="navbar-nav">
			<li class="nav-logo"><a href="/"><img src="/resources/images/redlogo.jpg" width=91px; height=21px;></a></li>
		</ul>
		<ul class="navbar-nav">
			<c:if test="${not empty LOGIN_USER }">
				<li class="nav-item"><a class="nav-link ${menu eq 'cart' ? 'active' : '' }" href="/cart">수강바구니s</a></li>
				<li class="nav-item"><a class="nav-link ${menu eq 'cart' ? 'active' : '' }" href="/cart">수강바구니</a></li>
				<li class="nav-item"><a class="nav-link ${menu eq 'cart' ? 'active' : '' }" href="/cart">수강바구니</a></li>
				<li class="nav-item"><a class="nav-link ${menu eq 'dashboard' ? 'active' : '' }" href="/user/dashboard">대시보드</a></li>
				<li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
			</c:if>
			<c:if test="${empty LOGIN_USER }">
				<li class="nav-item"><a class="nav-link ${menu eq 'login' ? 'active' : '' }" href="/login">로그인</a></li>
				<li class="nav-item"><a class="nav-link ${menu eq 'login' ? 'active' : '' }" href="/login">내주변</a></li>
				<li class="nav-item"><a class="nav-link ${menu eq 'login' ? 'active' : '' }" href="/login">예약내역</a></li>
				<li class="nav-item"><a class="nav-link ${menu eq 'login' ? 'active' : '' }" href="/login">더보기</a></li>
				<li class="nav-item"><a class="nav-link ${menu eq 'login' ? 'active' : '' }" href="/login">로그인</a></li>
			</c:if>
		</ul>
	</div>
</nav>
</script>