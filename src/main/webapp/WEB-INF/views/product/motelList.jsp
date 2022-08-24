<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
<!-- css -->
<link href="/css/product.css" rel="stylesheet" />
<link href="/css/list1.css" rel="stylesheet" />

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/script/common.js"></script>
<script src="/script/productList.js"></script>
<script src="https://kit.fontawesome.com/4f71b1e252.js" crossorigin="anonymous"></script>
</head>
<body>

<%@include file="../common/nav.jsp" %>
<!-- Wrap -->
<div class="wrap show">
        <!-- Sub Top -->
        <div class="sub_top_wrap">
            <div class="sub_top bg_kong_1">
                <h2>서울지역편</h2>
                <div class="area">
                    <div class="btn_area"><span>서울</span>서울 인기숙소</div>
                </div>
                <span class="keyword"></span>
            </div>
        </div>
        <!-- //Sub Top -->

        <!-- Content  -->
        <div id="content" class="sub_wrap">
            <!-- Area -->
            <div class="area_pop">
                <div class="fix_title">
                    지역 선택<button type="button" onclick="area_close();">닫기</button>
                </div>

                <!-- 지역필터 (리조트/캠핑/한옥 클래스추가 area_etc)-->
                <div class="area_wrap">
                    <div class="iscroll_01 depth_01">
                        <div class="scroller">
                                        <ul class="city"><!-- 지역 고정 클래스 fix / 오버시 on -->
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/1" class="fix on">
                            서울                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/2" >
                            경기                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/3" >
                            인천                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/4" >
                            강원                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/51" >
                            제주                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/12" >
                            부산                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/10" >
                            경남                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/9" >
                            대구                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/8" >
                            경북                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/11" >
                            울산                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/7" >
                            대전                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/6" >
                            충남                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/5" >
                            충북                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/47" >
                            광주                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/48" >
                            전남                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/home/49" >
                            전북                        </a>
                    </li>
                            </ul>
                                    </div>
                    </div>
                    <div class="iscroll_02">
                        <div class="scroller">
                            <ul class="city_child">
                              <li><a href="https://www.goodchoice.kr/product/home/1" class="on">서울 인기숙소<span>HOT</span></a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7052" >강남/역삼/삼성/논현</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7053" >서초/신사/방배</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7040" >잠실/방이</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7041" >잠실새내/신천</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/122" >영등포/여의도</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/20" >구로/금천/오류/신도림</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/45" >강서/화곡/까치산역/목동</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/17" >천호/길동/둔촌</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/19" >서울대/신림/사당/동작</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/14" >종로/대학로</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/120" >용산/중구/명동/이태원</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7026" >성신여대/성북/월곡</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7027" >노원/도봉/창동</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/95" >강북/수유/미아</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/96" >왕십리/성수/금호</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/135" >건대/광진/구의</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/97" >동대문/장안/청량리/답십리</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/125" >중랑/상봉/면목/태릉</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/123" >신촌/홍대/서대문/마포</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/46" >은평/연신내/불광</a></li>
                            </ul>
                            <ul class="city_child">
                              <li><a href="https://www.goodchoice.kr/product/home/2" >경기 인기숙소<span>HOT</span></a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/89" >수원/인계</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/160" >수원시청/권선/영통</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/88" >수원역/세류/팔달문/구운/장안</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/161" >대부도/제부도</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/100" >안성/평택/송탄</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/99" >오산/화성/동탄</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7042" >파주/금촌/헤이리/통일동산</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7043" >김포/장기/구래/대명항</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/21" >고양/일산</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/22" >의정부</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/53" >부천</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
            <!-- //Area -->

 <!-- List -->
 <div class="list_wrap">
  <div id="poduct_list_area">

    <ul>
      <li class="list_2 adcno1">
        <a href="https://www.goodchoice.kr/product/detail?ano=1697&adcno=1&sel_date=2022-08-15&sel_date2=2022-08-16"
            data-ano="1697" data-adcno="1" data-alat="37.55638875" data-alng="126.9376814" data-distance="0.129" data-affiliate="1">
            <p class="pic">
                <img class="lazy align" loading="lazy"
                     data-original="//image.goodchoice.kr/resize_1000X500x0/adimg_new/1697/1028/ca0c9f3e8bdcdf61ab2e1e3fe030e3f7.jpg"
                     src="/images/houseImgs/houseImg-1000.jpg" alt="신촌 호텔 루씨르"
                     style="margin-top: -159px; display: block;"/>
            </p>
            <div class="stage gra_black_vertical">
                <div class="evt_info"><span>숙박 이용 시 양말, 렌즈통세척액서비스 제공</span></div>                <div class="name">
                                        <strong>신촌 호텔 루씨르</strong>
                    <p class="score">
                        <em>9.2</em>&nbsp;<span>추천해요</span>&nbsp;(2572)                    </p>
                    <p>
                        서대문구 창천동                    </p>
                </div>
                <div class="price">
                    <div class="map_html">
                        <p>대실&nbsp;<span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(248,113,111,1);">예약</span>&nbsp;<b>30,000원</b></p><p>숙박&nbsp;<span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(248,113,111,1);">예약</span>&nbsp;<b>65,000원</b></p>                    </div>
                    <p>대실&nbsp;<span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(248,113,111,1);">예약</span>&nbsp;<b>30,000원</b></p><p>숙박&nbsp;<span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(248,113,111,1);">예약</span>&nbsp;<b>65,000원</b></p>                </div>
            </div>
        </a>
      </li>
      <li class="list_2 adcno1">
        <a href="https://www.goodchoice.kr"
            data-ano="1697" data-adcno="1" data-alat="37.55638875" data-alng="126.9376814" data-distance="0.129" data-affiliate="1">
            <p class="pic">
                <img class="lazy align"
                     data-original="//image.goodchoice.kr/resize_1000X500x0/adimg_new/1697/1028/ca0c9f3e8bdcdf61ab2e1e3fe030e3f7.jpg"
                     src="/images/houseImgs/houseImg-1002.jpg" alt="신촌 호텔 루씨르"
                     style="margin-top: -159px; display: block;"/>
            </p>
            <div class="stage gra_black_vertical">
                <div class="evt_info"><span>숙박 이용 시 양말, 렌즈통세척액서비스 제공</span></div>                <div class="name">
                                        <strong>신촌 호텔 루씨르</strong>
                    <p class="score">
                        <em>9.2</em>&nbsp;<span>추천해요</span>&nbsp;(2572)                    </p>
                    <p>
                        서대문구 창천동                    </p>
                </div>
                <div class="price">
                    <div class="map_html">
                        <p>대실&nbsp;<span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(248,113,111,1);">예약</span>&nbsp;<b>30,000원</b></p><p>숙박&nbsp;<span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(248,113,111,1);">예약</span>&nbsp;<b>65,000원</b></p>                    </div>
                    <p>대실&nbsp;<span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(248,113,111,1);">예약</span>&nbsp;<b>30,000원</b></p><p>숙박&nbsp;<span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(248,113,111,1);">예약</span>&nbsp;<b>65,000원</b></p>                </div>
            </div>        </a>
      </li>
    </ul>
  </div>
 </div>
 <!-- //List -->

        </div>

    </div>
    <!-- //Content  -->


<%@ include file="../common/footer.jsp" %>


<!-- 상단으로 -->
<button class="btn_go_top" onclick="moveTop();">상단으로</button>

</body>
</html>