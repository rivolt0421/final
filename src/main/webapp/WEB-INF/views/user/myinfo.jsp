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
<link href="/css/userinfo.css" rel="stylesheet">
<link href="/favicon.ico" rel="icon" type="image/x-icon">
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
	    <nav>
	        <ul>
	            <li><a class="" href="/user/point">포인트</a></li>
	            <li><a class="" href="/user/couponbox">쿠폰함</a></li>
	            <li><a class="" href="/user/reservation">예약 내역</a></li>
	            <li><a class="active" href="/user/mypage">내 정보 관리</a></li>
	        </ul>
   	  </nav>
	<div class="align_rt">
		<div class="mypage">
			<form name="form1" action="https://www.goodchoice.kr/my/mypageInfoUpdate" autocomplete="off" method="post" novalidate="novalidate" data-form="unick">
				<section class="top_area">
					<strong>내 정보 수정</strong>
					<div class="login_info">
						<div><img src="https://image.goodchoice.kr/profile/ico/ico_24.png" alt=""></div>
						<p>ksn908@naver.com</p>
					</div>

					<div class="pw_input">
						<div class="pw_input__title">
							<b>닉네임</b>
							<span class="title__uinfo">asdafdsa</span>
						</div>
						<section class="modifying-section" style="display: block;">
							<p class="inp_wrap remove form-errors">
								<input type="text" value="asdafdsa" placeholder="체크인시 필요한 정보입니다." data-input="unick" data-msg-required="닉네임을 입력하세요." data-rule-minlength="2" data-rule-maxlength="14" data-rule-spacechar="true" data-rule-specialchar="true">
							</p>
							<button type="button" class="btn_etc btn_confirm active" onclick="changeNickname();">딴거할래요</button> <!-- 활성화 클래스 'active' -->
						</section>
						<div class="pw_input__btns-wrap modifying">
							<button class="btns-wrap__edit-btn" type="button">수정</button>
							<button class="btns-wrap__submit-btn" type="submit">수정완료</button>
							<button class="btns-wrap__cancel-btn" type="button">수정취소</button>
						</div>
					</div>
				</section>
			</form>
			<form name="form2" action="https://www.goodchoice.kr/my/mypageInfoUpdate" autocomplete="off" method="post" novalidate="novalidate" data-form="uname">
				<!-- 폼전송시 전달되는 data target element -->
				<div class="mypageForm__form-inputs-wrap" aria-hidden="true">
					<input type="text" name="unick" aria-hidden="true" value="asdafdsa">
					<input type="text" name="uname" aria-hidden="true" value="">
					<input type="tel" name="uphone" aria-hidden="true" value="010****9251">
				</div>
				<input type="hidden" name="yeogi_token" value="6284995c9a01d7f0c232d5f3b3816cd6">
				<input type="hidden" name="utype" value="1">

				<section class="top_area">
					<div class="pw_input">
						<div class="pw_input__title">
							<b>예약자 이름</b>
							<span class="title__uinfo"></span>
						</div>
						<section class="modifying-section" style="display: none;">
							<p class="inp_wrap remove form-errors">
								<input type="text" id="uname" value="" placeholder="체크인시 필요한 정보입니다." data-input="uname" data-rule-spacechar="true" data-rule-specialchar="true">
							</p>
						</section>
						<div class="pw_input__btns-wrap">
							<button class="btns-wrap__edit-btn" type="button" style="?android:attr/borderlessButtonStyle">수정</button>
							<button class="btns-wrap__submit-btn" type="submit">수정완료</button>
							<button class="btns-wrap__cancel-btn" type="button" style="?android:attr/borderlessButtonStyle">수정취소</button>
						</div>
					</div>
				</section>
			</form>

			<form name="form3" action="https://www.goodchoice.kr/my/mypageInfoUpdate" autocomplete="off" method="post" novalidate="novalidate" data-form="uphone">
				<section>
					<!-- 폼전송시 전달되는 data target element -->
					<div class="mypageForm__form-inputs-wrap" aria-hidden="true">
						<input type="text" name="unick" aria-hidden="true" value="asdafdsa">
						<input type="text" name="uname" aria-hidden="true" value="">
						<input type="tel" name="uphone" aria-hidden="true" value="010****9251">
					</div>
					<input type="hidden" name="yeogi_token" value="6284995c9a01d7f0c232d5f3b3816cd6">
					<input type="hidden" name="utype" value="1">
					<div class="pw_input phone_confirm">
						<div class="pw_input__title">
							<b>휴대폰 번호</b>
							<span class="title__uinfo">010****9251</span>
							<div class="safety_txt">개인 정보 보호를 위해 내 정보는 모두 안전하게 암호화됩니다.</div>
						</div>
						<div class="modifying-section" style="display: none;">
							<div id="sendCode">
								<section>
									<div class="inp_wrap remove form-errors">
										<input type="tel" id="phone_number" value="" placeholder="체크인시 필요한 정보입니다." maxlength="13" data-input="uphone" data-msg-required="휴대폰 번호를 인증받으세요." data-rule-phonenumber="true">
										<button type="button" class="btn_checked">확인</button>
									</div>
									<button type="button" class="btn_send btn_confirm">인증번호 전송</button> <!-- 활성화 클래스 'active' -->
								</section>
							</div>
							<div id="verificationCode" style="display: none;">
								<b>인증 번호</b>
								<section>
									<div class="inp_wrap remove">
										<input type="tel" id="digit" minlength="4" maxlength="4">
										<span class="timer">&nbsp;</span>
									</div>
									<button type="button" class="btn_ok btn_confirm" data-verification-type="call" data-verification-next="mypageVerify">확인</button>
								</section>
							</div>
							<input type="hidden" id="phone_certification_point" value="MYPAGE" style="display: none;">
						</div>
						<div class="pw_input__btns-wrap">
							<button class="btns-wrap__edit-btn " type="button">수정</button>
							<button class="btns-wrap__submit-btn" type="submit">수정완료</button>
							<button class="btns-wrap__cancel-btn" type="button">수정취소</button>
						</div>
					</div>
				</section>
			</form>
			<!-- <button class="btn_submit disabled btn_one" type="submit">저장</button>-->

							<p class="bot_link"><a href="https://www.goodchoice.kr/my/mypagePwChange">비밀번호 변경</a> &gt;</p>
					</div>

		<div class="bot_btn">
			<p>여기어때를 이용하고 싶지 않으신가요?</p>
			<button type="button" onclick="pop_twobtn('ell','로그아웃 하시겠습니까?','취소','로그아웃','close_layer()','logoutPro()');">로그아웃</button>
							<button type="button"><a href="https://www.goodchoice.kr/my/withdraw">회원탈퇴</a></button>
					</div>
	</div>
</div>
</div>
</body>
</html>