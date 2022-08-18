<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>여행할때 굿초이스</title>
<link href="/css/font.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">
<link href="/css/mypage.css" rel="stylesheet">
<link href="/favicon.ico" rel="icon" type="image/x-icon">

<!-- <link href="/css/home.css" rel="stylesheet"> -->
<script src="/script/common.js"></script>
<script src="https://kit.fontawesome.com/4f71b1e252.js" crossorigin="anonymous"></script>

<style>

</style>
</head>
<body>
<%@ include file="../common/nav.jsp" %>
<div class="wrap show">
	<div class="sub_top_wrap">
		<div class="sub_top bg_kong_2">
			<h2>내정보</h2>
		</div>
	</div>
	
	<div id="content" class="sub_wrap my_wrap">
	    <div class="side">
	        <ul style="padding-left: 0rem;">
	            <li><a class="" href="/user/point" style="text-decoration: none;">포인트</a></li>
	            <li><a class="" href="/user/couponbox" style="text-decoration: none;">쿠폰함</a></li>
	            <li><a class="" href="/user/reservation" style="text-decoration: none;">예약 내역</a></li>
	            <li><a class="active" href="/user/myinfo" style="text-decoration: none;">내 정보 관리</a></li>
	        </ul>
   	 	</div>
	<div class="right">
		<div class="mypage">
			<form id="nick-form" name="nick-form" action="changeNickName" autocomplete="off" method="post" novalidate="novalidate" data-form="unick">
				<!-- 폼전송시 전달되는 data target element -->
<!-- 				<div class="mypageForm__form-inputs-wrap" aria-hidden="true">
					<input type="text" name="unick" id="test1" aria-hidden="true" value="사르방">
					<input type="text" name="uname" aria-hidden="true" value="김*찬">
					<input type="tel" name="uphone" aria-hidden="true" value="010****9251">
				</div> -->

				<!--// 폼전송시 전달되는 data target element -->
				<section class="top_area">
					<strong>내 정보 수정</strong>
					<div class="login_info">
						<div><img src="/images/ico_1.png" alt=""></div>
						<p>${user.email }</p>
					</div>

					<div class="pw_input">
						<div class="pw_input__title">
							<b>닉네임</b>
							<span class="title__uinfo">${user.nickname }</span>
						</div>
						<section class="modifying-section" style="display: none;">
							<p class="inp_wrap remove form-errors">
								<input type="text" value="${user.nickname }" placeholder="체크인시 필요한 정보입니다." data-input="unick" data-msg-required="닉네임을 입력하세요." data-rule-minlength="2" data-rule-maxlength="14" data-rule-spacechar="true" data-rule-specialchar="true">
							</p>
						</section>
						<div class="pw_input__btns-wrap">
							<div id="nickname_change_btn">							
								<button class="btns-wrap__edit-btn" type="button" id="nickname_edit_btn">수정</button>
							</div>
							<div id="nickname_change" style="display:none;">
								<p class="inp_wrap remove form-errors">
								<input type="text" name="nickName" value="${user.nickname }" placeholder="체크인시 필요한 정보입니다." data-input="unick" data-msg-required="닉네임을 입력하세요." data-rule-minlength="2" data-rule-maxlength="14" data-rule-spacechar="true" data-rule-specialchar="true" required="true" class="required">
								</p>
								<button class="btns-wrap__submit-btn" type="submit" id="nickname_submit_btn">수정완료</button>
								<button class="btns-wrap__cancel-btn" type="button" id="nickname_cancle_btn">수정취소</button>
							</div>
						</div>
					</div>
				</section>
			</form>
			<form id="name-form" name="name-form" action="changeName" autocomplete="off" method="post" novalidate="novalidate" data-form="uname">
				<!-- 폼전송시 전달되는 data target element -->
<!-- 				<div class="mypageForm__form-inputs-wrap" aria-hidden="true">
					<input type="text" name="unick" aria-hidden="true" value="사르방">
					<input type="text" name="uname" aria-hidden="true" value="김*찬">
					<input type="tel" name="uphone" aria-hidden="true" value="010****9251">
				</div> -->
				<input type="hidden" name="yeogi_token" value="7c17b2f3213e143bf6eb89a9f52eda28">
				<input type="hidden" name="utype" value="3">

				<section class="top_area" style="margin-top:50px;">
					<div class="pw_input">
						<div class="pw_input__title">
							<b>예약자 이름</b>
							<span class="title__uinfo">${user.name }</span>
						</div>
						<div class="pw_input__btns-wrap">
							<div id="name_change_btn">
								<button class="btns-wrap__edit-btn" type="button" id="name_edit_btn">수정</button>
							</div>
							<div id="name_change" style="display:none;">
								<p class="inp_wrap remove form-errors">
									<input type="text" name="name" id="uname" value="" placeholder="체크인시 필요한 정보입니다." data-input="uname" data-rule-spacechar="true" data-rule-specialchar="true">
								</p>
								<button class="btns-wrap__submit-btn" type="submit" id="name_submit_btn">수정완료</button>
								<button class="btns-wrap__cancel-btn" type="button" id="name_cancle_btn">수정취소</button>
							</div>
						</div>
					</div>
				</section>
			</form>

			<form name="form3" action="https://www.goodchoice.kr/my/mypageInfoUpdate" autocomplete="off" method="post" novalidate="novalidate" data-form="uphone">
				<section>
					<!-- 폼전송시 전달되는 data target element -->
<!-- 					<div class="mypageForm__form-inputs-wrap" aria-hidden="true">
						<input type="text" name="unick" aria-hidden="true" value="사르방">
						<input type="text" name="uname" aria-hidden="true" value="김*찬">
						<input type="tel" name="uphone" aria-hidden="true" value="010****9251">
					</div> -->
					<input type="hidden" name="yeogi_token" value="7c17b2f3213e143bf6eb89a9f52eda28">
					<input type="hidden" name="utype" value="3">
					<div class="pw_input phone_confirm" style="margin-bottom:50px;">
						<div class="pw_input__title">
							<b>휴대폰 번호</b>
							<span class="title__uinfo">${user.tel }</span>
							<div class="safety_txt">개인 정보 보호를 위해 내 정보는 모두 안전하게 암호화됩니다.</div>
						</div>
					</div>
			</form>
			<!-- <button class="btn_submit disabled btn_one" type="submit">저장</button>-->

		</div>

		<div class="bot_btn">
			<p>여기어때를 이용하고 싶지 않으신가요?</p>
			<button type="button" onclick="pop_twobtn('ell','로그아웃 하시겠습니까?','취소','로그아웃','close_layer()','logoutPro()');">로그아웃</button>
							<button type="button"><a href="https://www.goodchoice.kr/my/withdraw">회원탈퇴</a></button>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp" %>
</div>

<script type="text/javascript">
$(function() {
	$("#nickname_edit_btn").click(function() {
		$("#nickname_change_btn").hide();
		$("#nickname_change").show();
	});
	$("#nickname_cancle_btn").click(function() {
		$("#nickname_change_btn").show();
		$("#nickname_change").hide();
	});
	
	
	$("#name_edit_btn").click(function() {
		$("#name_change_btn").hide();
		$("#name_change").show();
	});
	$("#name_cancle_btn").click(function() {
		$("#name_change_btn").show();
		$("#name_change").hide();
	});
})
</script>
</body>
</html>