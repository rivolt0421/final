<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>스프링 온라인</title>
</head>
<body>
<c:set var="menu" value="register" />
<%@ include file="common/nav.jsp" %>
<div class="container my-3">
	<div class="row my-3">
		<div class="col">
			<h1 class="fs-5 border p-2">회원가입</h1>
		</div>
	</div>
    <div class="row mb-3">
        <div class="col">
            <p>이메일, 비밀번호, 이름, 전화번호를 입력하세요.</p>
            <form:form class="border bg-light p-3" method="post" modelAttribute="userRegisterForm" action="register">
                <div class="mb-3">
                	<label for="name-field" class="form-label">이름</label>
                	<form:input class="form-control" path="name" id="name-field" placeholder="이름을 입력해주세요."/>
                	<form:errors path="name" class="text-danger small fst-italic"></form:errors>
                </div>
                <div class="mb-3">
                	<label for="email-field" class="form-label">이메일</label>
                	<form:input class="form-control" path="email" id="email-field" placeholder="이메일 주소를 입력해주세요."/>
                	<form:errors path="email" class="text-danger small fst-italic"></form:errors>
                </div>
                <div class="mb-3">
                	<label for="password-field" class="form-label">비밀번호</label>
                	<form:password class="form-control" path="password" id="password-field" placeholder="비밀번호를 입력해주세요."/>
                	<form:errors path="password" class="text-danger small fst-italic"></form:errors>
                </div>
                <div class="mb-3">
                	<label for="tel-field" class="form-label">전화번호</label>
                	<form:input class="form-control" path="tel" id="tel-field" placeholder="전화번호를 입력해주세요."/>
                	<form:errors path="tel" class="text-danger small fst-italic"></form:errors>
                </div>
                <div class="mb-3">
                	<label for="nickname-field" class="form-label">닉네임</label>
                	<form:input class="form-control" path="nickname" id="nickname-field" placeholder="닉네임을 입력해주세요."/>
                	<form:errors path="nickname" class="text-danger small fst-italic"></form:errors>
                </div>
                <div class="text-end">
                	<a href="/" class="btn btn-secondary">취소</a>
                	<button type="submit" class="btn btn-primary">가입하기</button>
                </div>
            </form:form>
        </div>
    </div>
</div>
<script type="text/javascript">
$(function() {
	$("form").validate({
		
	})
})
</script>
</body>
</html>