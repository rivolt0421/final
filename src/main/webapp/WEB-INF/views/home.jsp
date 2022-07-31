<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<title>여행할때 굿초이스</title>
<link href="/favicon.ico" rel="icon" type="image/x-icon">

<!-- 프로젝트 내 css파일, js파일 임포트 -->
<link href="/css/home.css" rel="stylesheet">
<script src="/script/home.js" type="text/javascript"></script>

</head>
<body>
<header class="">

        <section>
                        <h1><a class="" href="https://www.goodchoice.kr/" title="여기어때">여기어때</a></h1>
            <button type="button" class="btn_menu nav_open ">메뉴</button>
            <button type="button" class="btn_srch srch_open " style="right: 396px;">검색</button>
            <ul class="gnb_pc">
                                    <li><a href="https://www.goodchoice.kr/product/srp">내주변</a></li>
                    <li><a href="https://www.goodchoice.kr/user/login?returnUrl=my%2FreserveList">예약내역</a></li>
                    <li class="over">
                        <button type="button"><span>더보기</span></button>
                        <ul class="list_03" style="display: none; opacity: 1;">
                            <li><a href="https://www.goodchoice.kr/more/notice">공지사항</a></li>
                            <li><a href="https://www.goodchoice.kr/more/event">이벤트</a></li>
                            <!-- <li><a href="https://www.goodchoice.kr/more/project">혁신 프로젝트</a></li> -->
                            <li><a href="https://www.goodchoice.kr/more/faq">자주 묻는 질문</a></li>
                            <li><a href="https://www.goodchoice.kr/more/inquiry">1:1 문의</a></li>
                            <li><a href="https://www.goodchoice.kr/more/terms">약관 및 정책</a></li>
                        </ul>
                    </li>
                    <li><a href="https://www.goodchoice.kr/user/login"><span>로그인</span></a></li>
                            </ul>

            <!-- Search -->
            <div class="srch_bar">
                <div class="wrap_inp">
                    <input type="text" id="keyword" placeholder="지역, 숙소명" autocomplete="off">
                    <button type="button" class="btn_srch" style="right: 396px;">검색</button>
                </div>
                <button class="btn_cancel" onclick="srch_close()">취소</button>
            </div>
            <!-- //Search -->

        </section>
    </header>
<div class="container">
	
</div>
</body>
</html>