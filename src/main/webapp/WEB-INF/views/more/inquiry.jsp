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
<link href="/favicon.ico" rel="icon" type="image/x-icon">

<link href="/css/home.css" rel="stylesheet">
<script src="/script/common.js"></script>
<script src="https://kit.fontawesome.com/4f71b1e252.js" crossorigin="anonymous"></script>

<style>

</style>
</head>
<body>
<%@ include file="../common/nav.jsp" %>
<link href="/css/mypage.css" rel="stylesheet">
<link href="/css/more.css" rel="stylesheet">

<div class="wrap show">
	<div class="sub_top_wrap">
		<div class="sub_top bg_kong_2">
			<h2>더보기</h2>
		</div>
	</div>
	
<div id="content" class="sub_wrap my_wrap">
	    <div class="side">
	        <ul style="padding-left: 0rem;">
	            <li><a class="" href="/more/notice" style="text-decoration: none;">공지사항</a></li>
	            <li><a class="" href="/more/faq" style="text-decoration: none;">자주묻는질문</a></li>
	            <li><a class="active" href="/more/inquiry" style="text-decoration: none;">1:1 문의</a></li>
	        </ul>
   	 	 </div>
	<div class="right">
        <div class="inquiry">
        	<div class="tab">
        		<span class="tab_btn active">
        			나의 문의 내역
        		</span>
        		<span class="tab_btn">새 문의 작성</span>
        	</div>
        	<!-- 리스트 -->
			<div class="tab_each" style="display: block;">
				<ul class="show_list open_list" id="inquiry_list">
					<li onclick="">
						<a href="" class="list_que open"><!-- 답변완료/ NEW 버튼 2벌임 -->
							<p>
							<b>문의 유형<!-- 1:1 문의유형 --></b>
							내용<!-- 내용 -->
							<b class="reply_chk">문의 등록</b>
							</p>
							<span>
                             <!-- 작성날짜 --> 작성날짜	 </span>
						</a>
					</li>
				</ul>
			</div>
	
	
			<!-- 작성 -->
			<div class="tab_each" style="display: none;">
				<form name="inq-form" method="post" action="/more/inquiry_submit">
					<div class="alert_top">
						<p>여기어때 이용 중 불편하신 점을 문의주시면 <em>최대한 빠른 시일내에 답변 드리겠습니다.</em></p>
					</div>

					<section class="info_wrap">
						<b>카테고리유형</b>
						<select name="room_type" id="" class="select_type_2">
							<option value="">카테고리유형을 선택하세요</option>
															<option value="1">모텔</option>
															<option value="2">호텔·리조트</option>
															<option value="3">펜션</option>
															<option value="6">게스트하우스</option>
															<option value="5">캠핑/글램핑</option>
															<option value="7">한옥</option>
															<option value="10">액티비티</option>
															<option value="11">현금성(유상)포인트</option>
													</select>

						<b>문의유형</b>
						<select name="inq_type" id="inq_type" class="select_type_2">
							<option value="">문의유형을 선택하세요</option>
															<option value="8">이벤트</option>
															<option value="7">예약/결제</option>
															<option value="9">취소/환불</option>
															<option value="2">혜택받기</option>
															<option value="1">이용문의</option>
															<option value="4">회원정보</option>
															<option value="3">리뷰</option>
															<option value="10">환불신청</option>
															<option value="99">기타</option>
													</select>

						<div class="phone-block">
							<b>휴대폰 번호</b>
							<p class="inp_wrap"><input class="js-phone-number" data-type="phoneNumber" type="tel" maxlength="11" name="uphone" value="" placeholder="선택사항입니다."><button type="button" class="reset_val">초기화</button></p>
						</div>

						<div class="email-block">
							<b>이메일</b>
							<p class="inp_wrap"><input data-email-validate="" class="js-email-string" type="email" value="" name="uemail" placeholder="선택사항입니다."><button type="button" class="reset_val">초기화</button></p>
						</div>

						<!-- 환불받을 계좌정보 등록 -->
						<div class="account-block" data-account-select="">
							<b>환불받을 계좌정보 등록</b>
							<select name="accountBank" data-account-bank="" class="select_type_2">
								<option value="none">은행선택</option>
																	<option value="우리은행">우리은행</option>
																	<option value="국민은행">국민은행</option>
																	<option value="기업은행">기업은행</option>
																	<option value="농협은행">농협은행</option>
																	<option value="신한은행">신한은행</option>
																	<option value="하나은행">하나은행</option>
																	<option value="한국씨티은행">한국씨티은행</option>
																	<option value="SC제일은행">SC제일은행</option>
																	<option value="경남은행">경남은행</option>
																	<option value="광주은행">광주은행</option>
																	<option value="대구은행">대구은행</option>
																	<option value="도이치은행">도이치은행</option>
																	<option value="부산은행">부산은행</option>
																	<option value="비엔피파리바은행">비엔피파리바은행</option>
																	<option value="산림조합">산림조합</option>
																	<option value="산업은행">산업은행</option>
																	<option value="새마을금고">새마을금고</option>
																	<option value="수출입은행">수출입은행</option>
																	<option value="수협은행">수협은행</option>
																	<option value="신협">신협</option>
																	<option value="우체국">우체국</option>
																	<option value="저축은행">저축은행</option>
																	<option value="전북은행">전북은행</option>
																	<option value="제주은행">제주은행</option>
																	<option value="중국건설은행">중국건설은행</option>
																	<option value="중국공상은행">중국공상은행</option>
																	<option value="카카오뱅크">카카오뱅크</option>
																	<option value="케이뱅크">케이뱅크</option>
																	<option value="BOA(뱅크오브아프리카)">BOA(뱅크오브아프리카)</option>
																	<option value="HSBC은행">HSBC은행</option>
																	<option value="JP모간체이스은행">JP모간체이스은행</option>
															</select>
							<p class="inp_wrap">
								<input name="accountNumber" data-account-number="" type="number" placeholder="계좌번호를 입력하세요.">
							<button type="button" class="reset_val">초기화</button></p>
							<p class="inp_wrap">
								<input name="accountName" data-account-name="" type="text" placeholder="예금주를 입력하세요." maxlength="10">
							<button type="button" class="reset_val">초기화</button></p>
						</div>
						<!-- //환불받을 계좌정보 등록 -->
					</section>

					<section class="text_wrap">
						<b>문의내용</b>
						<div>
							<textarea name="content" id="questionTextarea"></textarea>
							<ul class="placeholder_txt">
								<li>문의하실 내용을 10자 이상 입력해 주세요.</li>
								<li>문의하시는 제휴점 이름과 예약정보를 남겨주시면 보다 빠른 상담이 가능합니다.</li>
								<li>문의 내용 작성 시 개인정보가 입력되지 않도록 주의 부탁드립니다.</li>
							</ul>
						</div>
					</section>

					<section class="agree_wrap">
						<div>
							<input type="checkbox" id="info_agree" name="checkOne" class="inp_chk_04" disabled="">
							<label for="info_agree">개인정보수집. 이용동의</label>
							<btn class="view_contents">[내용보기]</btn>
						</div>
					</section>

					<section class="btn_wrap ">
						<button class="btn_red_fill" type="button" onclick="$.inqSubmit();">작성 완료</button>
					</section>
				</form>
			</div>
        </div>
	</div>
</div>
<%@ include file="../common/footer.jsp" %>
</div>

<script type="text/javascript">
$(function(){
	
	/* 리스트 펼침 */
	var show_target = '.open_list li .list_que';
	$(document).on('click',show_target,function(e){
		e.preventDefault();
		if ($(this).hasClass('open')){
			$(this).next().hide();
			$(this).removeClass('open');
		}else{
			$(show_target).removeClass('open');
			$('.open_list .list_ans').hide();
			$(this).next().show();
			$(this).addClass('open');
		}
	});

	$('.tab .tab_btn').each(function(e){
		$(this).click(function(i){
			i.preventDefault();
			$('.tab .tab_btn').removeClass('active');
			$('.tab .tab_btn').eq(e).addClass('active');
			$('.tab_each').hide();
			$('.tab_each').eq(e).show();
            window.location.hash = '#1';
		});
	});
	
    $('.placeholder_txt').on('click',function(){ // textarea 클릭시
        $(this).hide();
        $('.text_wrap textarea').focus();
    });

    $('#questionTextarea').blur(function(){ // textarea 포커스 아웃시
        var textareaValue = $('#questionTextarea').val();
        if(textareaValue == ''){
            $('.placeholder_txt').show();
        }else{
            return null;
        }
    });
})
</script>
</body>
</html>