<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>비밀번호 재설정 | 굿초이스</title> 	
<!-- css -->
<link rel="stylesheet" href="/css/common.css" />
<!-- favicon -->
<link href="/favicon.ico" rel="icon" type="image/x-icon">
</head>
<body>
<div class="layer_fix layer_unfix pop_login pop_mem_reserve new-style-form">
    <section>
        <form id="loginForm" action="" autocomplete="off" method="post" novalidate="novalidate">
            <input type="hidden" name="returnUrl" value="">
            <input type="hidden" name="yeogi_token" value="43bfb3326fe1dcdf06d0647b025a3d76">

            <strong class="sub_title">비밀번호 재설정</strong>
            <p class="txt_top">회원가입 시 등록한 이메일 주소를 입력해 주세요.</p>
            <div class="inp_type_1 ico_email form-errors"><!-- focus / err -->
                <input id="userEmail" type="email" name="email" placeholder="이메일 주소" />
            <button type="button" class="reset_val">초기화</button></div>

            <button id="checkEmail" type="button" data-js-validate-email="" class="btn_link gra_left_right_red"><span>확인</span></button>
        </form>
    </section>
</div>
<script type="text/javascript">

</script>
</body>
</html>
