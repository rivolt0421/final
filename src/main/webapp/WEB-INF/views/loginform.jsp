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
<title>로그인 | 굿초이스</title> 	
<!-- css -->
<link rel="stylesheet" href="/css/common.css" />
<!-- fontawesome -->
<script src="https://kit.fontawesome.com/4f71b1e252.js" crossorigin="anonymous"></script>
<!-- favicon 적용이 안됨. 수정 -->
<link href="/favicon.ico" rel="icon" type="image/x-icon">
</head>
<body>
	<div class="layer_fix layer_unfix pop_login pop_mem_reserve">
        <section>
            <form id="loginform" action="login" autocomplete="off" method="post" novalidate="novalidate">
                <!-- <input type="hidden" name="yeogi_token" value="7ba93dd2dd16200552a9e9af321c4b01"> -->
                <div class="fix_title">
                    <strong class="logo"><a href="/">굿초이스</a></strong>
                </div>
                <button type="button" id="kakao-login-btn" class="btn_start btn_kakao" data-device-type="W">
                    <span><i class="fa-solid fa-comment"></i>카카오톡으로 로그인</span>
                </button>
                <button type="button" id="facebook-login-btn" class="btn_start btn_fb">
                    <span><i class="fa-brands fa-facebook"></i>Facebook으로 로그인</span>
                </button>
                <a href="#" id="naver_id_login" class="btn_start btn_naver">
                    <span><i class="fa-solid fa-n"></i>네이버로 로그인</span>
                </a>
                <p class="space_or"><span>또는</span></p>
                <div class="inp_type_1 ico_email form-errors"><!-- focus / err -->
                    <input type="email" name="email" placeholder="이메일 주소" id="email-field" required="" class="required" value="" data-msg-required="이메일 주소를 입력해 주세요.">
                <button type="button" class="reset_val">초기화</button></div>
                <div class="inp_type_1 ico_pw form-errors">
                    <input type="password" name="password" placeholder="비밀번호" id="password-field" required="" class="required" data-msg-required="비밀번호를 입력해 주세요.">
                <button type="button" class="reset_val">초기화</button></div>
                <button class="btn_link gra_left_right_red" type="submit"><span>로그인</span></button>
                <div class="link_half">
                    <div><a href="#"><span>비밀번호 재설정</span></a></div>
                    <div><a href="/register"><span>회원가입</span></a></div>
                </div>
            </form>
        </section>
    </div>
<script type="text/javascript">
$(function() {
	$("#loginform").submit(function() {
		let emailValue = $("#email-field").val();	// let emailValue = document.querySelector("#email-field").value;
		if (emailValue === "") {
			alert("이메일은 필수입력값입니다.");
			return false;
		}
		
		let passwordValue = $("#password-field").val();
		if (passwordValue === "") {
			alert("비밀번호는 필수입력값입니다.");
			return false;
		}
		
		return true;
	});
});
</script>
</body>
</html>
