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
	            <li><a class="" href="/more/event" style="text-decoration: none;">이벤트</a></li>
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
				<c:forEach var="inquiry" items="${inquiries }"> 
				<ul class="show_list open_list" id="inquiry_list">
					<li onclick="">
						<a href="" class="list_que open"><!-- 답변완료/ NEW 버튼 2벌임 -->
							<p>
							<b>${inquiry.type }<!-- 1:1 문의유형 --></b>
							${inquiry.content }<!-- 내용 -->
							<b class="reply_chk">문의 등록</b>
							</p>
							<span>
                             작성일 
                             <fmt:formatDate value="${inquiry.createdDate }" pattern="yyyy.MM.dd"/>	 </span>
						</a>
					</li>
				</ul>
				</c:forEach>
			</div>
	
	
			<!-- 작성 -->
			<div class="tab_each" style="display: none;">
				<form name="inq-form" method="post" action="inquiry">
					<div class="alert_top">
						<p>여기어때 이용 중 불편하신 점을 문의주시면 <em>최대한 빠른 시일내에 답변 드리겠습니다.</em></p>
					</div>

					<section class="info_wrap">
						<b>카테고리유형</b>
						<select name="category" id="category" class="select_type_2">
							<option value="">카테고리유형을 선택하세요</option>
								<option value="모텔" name="category">모텔</option>
								<option value="호텔·리조트" name="category">호텔·리조트</option>
								<option value="펜션" name="category">펜션</option>
								<option value="게스트하우스" name="category">게스트하우스</option>
						</select>

						<b>문의유형</b>
						<select name="type" id="type" class="select_type_2">
							<option value="">문의유형을 선택하세요</option>
								<option value="이벤트" name="type">이벤트</option>
								<option value="예약/결제" name="type">예약/결제</option>
								<option value="혜택받기" name="type">혜택받기</option>
								<option value="리뷰" name="type">리뷰</option>
								<option value="기타" name="type">기타</option>
						</select>

						<div class="phone-block">
							<b>휴대폰 번호</b>
							<p class="inp_wrap">
							<input class="js-phone-number" data-type="phoneNumber" type="tel" maxlength="11" name="tel" value="" placeholder="선택사항입니다.">
							<button type="button" class="reset_val">초기화</button></p>
						</div>

						<div class="email-block">
							<b>이메일</b>
							<p class="inp_wrap">
							<input data-email-validate="" class="js-email-string" type="email" value="" name="email" placeholder="선택사항입니다.">
							<button type="button" class="reset_val">초기화</button></p>
						</div>
					</section>

					<section class="text_wrap">
						<b>문의내용</b>
						<textarea rows="10" cols="30" id="content" name="content"></textarea>
					</section>

					<section class="btn_wrap ">
						<!-- <button class="btn_red_fill" type="button" onclick="">작성 완료</button> -->
						<button type="submit" class="btn btn-light">작성완료</button>
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
})

$(function getItem(){
	$("#category option:selected").text();
	
})
</script>
</body>
</html>