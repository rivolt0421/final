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
<title>회원가입 | 굿초이스</title>
<link href="/favicon.ico" rel="icon" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/variable/pretendardvariable.css" />
<style>
	* {
		outline: 0;
	}

	.container {
		margin-top: 2.5%;
		width: 20%;
	}
	
	.fix_title h1.page_head {
    text-align: center;
    margin: 0;
    padding: 0;
    border: 0;
    box-sizing: border-box;
	}
	.fix_title h1.page_head a {
    display: inline-block;
    width: 112px;
    height: 44px;
    background: url(/images/whitelogo.jpg) 50% 50% no-repeat;
    background-size: 112px 30px;
    text-indent: -9999px;
	}
	
	.sub_title {
    display: block;
    margin: 30px 0 10px 0;
    font-size: 18px;
    text-align: center;
    padding: 0;
    border: 0;
    box-sizing: border-box;
    font-family : 'Pretendard Variable', -apple-system, BlinkMacSystemFont, system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
	}
	
	b {
		display: block;
	    margin-bottom: 9px;
	    font-size: 16px;
	    font-weight: bold;
	    color: rgba(0,0,0,0.56);
	 	font-family : 'Pretendard Variable', -apple-system, BlinkMacSystemFont, system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
	 	margin: 0;
	    padding: 0;
	    border: 0;
	    box-sizing: border-box;
	}
		
	.mb-3 {
	font-family : 'Pretendard Variable', -apple-system, BlinkMacSystemFont, system-ui, Roboto, 'Helvetica Neue', 'Segoe UI', 'Apple SD Gothic Neo', 'Noto Sans KR', 'Malgun Gothic', sans-serif;
	
	}
		
	a {
		text-decoration: none;
		-webkit-tap-highlight-color: rgba(0,0,0,0);
	}
</style>
</head>
<body>
<c:set var="menu" value="register" />
<div class="container">
			<div class="fix_title">
				<h1 class="page_head"><a href="/" title="굿초이스">굿초이스</a></h1>
			</div>
			<div class="join">
				<strong class="sub_title">회원가입</strong>
			</div>
            <form:form class="joinform" method="post" modelAttribute="userRegisterForm" action="register">
                <div class="mb-3">
                	<label for="name-field" class="form-label"><b>이름</b></label>
                	<form:input class="form-control" path="name" id="name-field" placeholder="이름을 입력해주세요."/>
                	<form:errors path="name" class="text-danger small fst-italic"></form:errors>
                </div>	
                <div class="mb-3">
                	<label for="email-field" class="form-label"><b>이메일</b></label>
                	<form:input class="form-control" path="email" id="email-field" placeholder="이메일 주소를 입력해주세요."/>
                	<form:errors path="email" class="text-danger small fst-italic"></form:errors>
                </div>
                <div class="mb-3">
                	<label for="password-field" class="form-label"><b>비밀번호</b></label>
                	<form:password class="form-control" path="password" id="password-field" placeholder="비밀번호를 입력해주세요."/>
                	<form:errors path="password" class="text-danger small fst-italic"></form:errors>
                </div>
                <div class="mb-3">
                	<label for="password-field" class="form-label"><b>비밀번호 확인</b></label>
                	<form:password class="form-control" path="password" id="password2-field" placeholder="비밀번호를 입력해주세요."/>
                </div>
                <div class="mb-3">
                	<label for="tel-field" class="form-label"><b>전화번호</b></label>
                	<form:input class="form-control" path="tel" id="tel-field" placeholder="전화번호를 입력해주세요."/>
                	<form:errors path="tel" class="text-danger small fst-italic"></form:errors>
                </div>
                <div class="mb-3">
                	<label for="nickname-field" class="form-label"><b>닉네임</b></label>
                	<form:input class="form-control" path="nickname" id="nickname-field" placeholder="닉네임을 입력해주세요."/>
                	<form:errors path="nickname" class="text-danger small fst-italic"></form:errors>
                </div>
                <div class="text-end">
                	<a href="/" class="btn btn-secondary">취소</a>
                	<button type="/" class="btn btn-light">가입하기</button>
                </div>
            </form:form>
</div>
 
<script type="text/javascript">
$(funciton(){
	
})
</script>
</body>
</html>