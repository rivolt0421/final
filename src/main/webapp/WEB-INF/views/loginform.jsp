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
<!-- 카카오 로그인지원 자바스크립트 라이브러리를 포함시킨다. -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<title>로그인 | 굿초이스</title> 	
<!-- css -->
<link rel="stylesheet" href="/css/common.css" />
<!-- fontawesome -->
<script src="https://kit.fontawesome.com/4f71b1e252.js" crossorigin="anonymous"></script>
<!-- favicon -->
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
            
            <div class="col-5">
	    		<%-- 
	    			카카오 로그인 처리중 중 오류가 발생하면 아래 경고창에 표시된다.
	    			카카오 로그인 오류는 스크립트에서 아래 경고창에 표시합니다.
	    		 --%>
    			<div class="alert alert-danger d-none" id="alert-kakao-login">오류 메세지</div>
    		</div>
            <%--
	    		카카오 로그인 서비스가 제공하는 사용자 정보를 서버로 제출할 때 사용하는 폼과 폼 입력요소다.
	    		카카오 로그인 인증이 완료되면 사용자정보를 전달받아서 아래 폼 입력필드에 설정하고, 폼을 서버로 제출한다.
    	 	--%>
	    	<form id="form-kakao-login" method="post" action="kakao-login">
	    		<input type="hidden" name="name" />
	    		<input type="hidden" name="email" />
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

$(function() {
	// 카카오 로그인 버튼을 클릭할 때 실행할 이벤트 핸들러 함수를 등록한다.
	Kakao.init('ad0574ee329a6b978588b0ec4ba00635');

	$('#kakao-login-btn').click(function(event){
		// a태그는 클릭이벤트가 발생하면 페이지를 이동하는 기본동작이 수행되는데, 그 기본동작이 실행되지 않게 한다.
		//event.preventDefault();
		// 카카오 로그인 실행시 오류메세지를 표시하는 경고창을 화면에 보이지 않게 한다.
		$("#alert-kakao-login").addClass("d-none");
		// 사용자키를 전달해서 카카오 로그인 서비스를 초기화한다.
		// 카카오 로그인 서비스 실행하기 및 사용자 정보 가져오기
		Kakao.Auth.login({
			success: function(auth) {
				Kakao.API.request({
					url: '/v2/user/me',
					success: function(response) {
						// 사용자 정보를 가져와서 폼에 추가한다.
						var account = response.kakao_account;
						
						$('#form-kakao-login input[name=name]').val(account.profile.nickname);
						$('#form-kakao-login input[name=email]').val(account.email);
						/* $('#form-kakao-login input[name=age]').val(account.age_range);
						$('#form-kakao-login input[name=gender]').val(account.gender); */
						
						// 사용자 정보가 포함된 폼을 서버로 제출한다.
						document.querySelector("#form-kakao-login").submit()
					},
					fail: function(error) {
						// 경고창에 에러 메세지를 표시한다.
						$("#alert-kakao-login").removeClass("d-none").text("카카오 로그인 처리 중 오류가 발생하였습니다.");
					}
				});
			},
			fail: function(error) {
				// 경고창에 에러 메세지를 표시한다.
				$("#alert-kakao-login").removeClass("d-none").text("카카오 로그인 처리 중 오류가 발생하였습니다.");
			}
		});		
	})
})
</script>
</body>
</html>
