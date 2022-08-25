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
	            <li><a class="active" href="/more/event" style="text-decoration: none;">이벤트</a></li>
	            <li><a class="" href="/more/faq" style="text-decoration: none;">자주묻는질문</a></li>
	            <li><a class="" href="/more/inquiry" style="text-decoration: none;">1:1 문의</a></li>
	        </ul>
   	 	 </div>
	<div class="right">
        <div class="event">

				<div class="mobile_top">이벤트</div>

                <ul id="event" class="event_list"><li><!----> <b>설문조사 이벤트 - 추석 여행 계획 캠페인</b> <span>기간: 2022.08.18 ~ 2022.08.26</span> <a href="/more/eventView/2522?page=0"><img src="//image.goodchoice.kr" alt=""></a></li><li><!----> <b>한국관광 품질인증숙소 할인 기획전</b> <span>기간: 2022.06.02 ~ 끝날 때까지!</span> <a href="/more/eventView/2306?page=0"><img src="//image.goodchoice.kr/event/mainbanner/c3aad057ecd6f14c59780ac6f08f10d1.png" alt=""></a></li><li><!----> <b>현대카드 M 포인트 </b> <span>기간: 2021.12.20 ~ 2022.08.31</span> <a href="/more/eventView/1918?page=0"><img src="//image.goodchoice.kr/event/mainbanner/e30ccc122128af2332529e4450f00eab.jpg" alt=""></a></li><li><!----> <b>강원 여행 한방에 끝내기</b> <span>기간: 2021.08.11 ~ 끝날 때 까지!</span> <a href="/more/eventView/1725?page=0"><img src="//image.goodchoice.kr/event/mainbanner/c60f97f5653b1beccc9878113e5e92b0.jpg" alt=""></a></li><li><!----> <b>함께해요 여기어때 리서치</b> <span>기간: 2021.07.19 ~ 끝날 때까지!</span> <a href="/more/eventView/1623?page=0"><img src="//image.goodchoice.kr/event/mainbanner/fd6bc71051fa6fe54e7dd7f272aa9c86.png" alt=""></a></li><li><!----> <b>안심 예약 숙소</b> <span>기간: 2020.11.27 ~ 끝날 때까지!</span> <a href="/more/eventView/1299?page=0"><img src="//image.goodchoice.kr/event/mainbanner/7b1ef4506bae9c98b0b8f10697162480.jpg" alt=""></a></li><li class="end"><!----> <b>올여름 혜택받고 모임어때</b> <span>기간: 2022.06.20 ~ 2022.07.10</span> <img src="//image.goodchoice.kr/event/mainbanner/46b1942290df2b29b77ab1efd0ef96f7.jpg" alt=""></li><li class="end"><!----> <b>설문조사 이벤트 - '여름 휴가 계획' 캠페인</b> <span>기간: 2022.06.10 ~ 2022.06.14</span> <img src="//image.goodchoice.kr/event/mainbanner/a68f67d832077d9246659c34a4fe23fa.jpg" alt=""></li><li class="end"><!----> <b>6월 우리 즉시할인 - 신용카드</b> <span>기간: 2022.06.01 ~ 2022.06.30</span> <img src="//image.goodchoice.kr/event/mainbanner/3161b3bba86a225cccdf41b097090c1f.jpg" alt=""></li><li class="end"><!----> <b>6월 토스 즉시할인 - 간편결제</b> <span>기간: 2022.06.01 ~ 2022.06.30</span> <img src="//image.goodchoice.kr/event/mainbanner/60c6ecc90df14b418d480d2cf3af57cd.jpg" alt=""></li></ul>

                <div id="pagination"><div class="paging"><!----><button class="on">1</button><button>2</button><!----></div></div>

			</div>
	</div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>