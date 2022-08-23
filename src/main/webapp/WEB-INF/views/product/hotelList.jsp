<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="/css/product.css" rel="stylesheet" />
<link href="/css/list2.css" rel="stylesheet" />
<link rel="stylesheet" href="/css/daterangepicker.min.css">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/4f71b1e252.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
<script type="text/javascript" src="/script/jquery.daterangepicker.min.js"></script>
<script src="/script/common.js"></script>
<script src="/script/productList.js"></script>
<!-- <script type="text/javascript" src="https://www.goodchoice.kr/js/service/product.search.js?rand=1660711669" ></script> -->

</head>
<body>

<!-- Wrap -->
<div class="wrap show">

    <!-- Header -->
    <%@include file="../common/nav.jsp" %>

    <!-- Bg Dimm -->
    <div class="bg_dimm" onclick="close_layer();">&nbsp;</div>
    <div class="bg_dimm_prevent">&nbsp;</div>

      <form id="product_filter_form" method="get"
        action="https://www.goodchoice.kr/product/search/2/2012" data-sel_date="2022-08-24" data-sel_date2="2022-08-25">
      <input type="hidden" name="sort" id="sort" value="DISTANCE">
      <input type="hidden" name="sel_date" id="sel_date" value="2022-08-24">
      <input type="hidden" name="sel_date2" id="sel_date2" value="2022-08-25">
	  
	  <div class="listpage">

            <!-- Sub Top -->
			<div class="sub_top_wrap"> <!-- 페이백일때 클래스 추가 early_top -->
				<div class="sub_top bg_kong_1">
					<h2>호텔·리조트</h2>
					<div class="area">
						<div class="btn_area"><span>서울</span>강남/역삼/삼성/신사/청담</div>
						<div class="btn_date"><span class="date_view"><b></b><em>&nbsp;·&nbsp;1박</em></span></div>
					</div>
					<span class="keyword"></span>
				</div>
			</div>
			<!-- //Sub Top -->

			<!-- Datepicker -->
			<input type="text" class="product_date" hidden />

			<!-- Content  -->
			<div id="content" class="sub_wrap">
				<!-- Area -->
                <div class="area_pop">
                    <div class="fix_title">
                        지역 선택<button type="button"onclick="area_close();">닫기</button>
                    </div>

                    <!-- 지역필터 (리조트/캠핑/한옥 클래스추가 area_etc)-->
                    <div class="area_wrap ">
                        <div class="iscroll_01 depth_01">
                            <div class="scroller">
                                            <ul class="city"><!-- 지역 고정 클래스 fix / 오버시 on -->
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2012" class="fix on">
                            서울                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2041" >
                            부산                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2051" >
                            제주                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2081" >
                            강원                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2061" >
                            경기                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2071" >
                            인천                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2101" >
                            경상                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2112" >
                            전라                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2093" >
                            충청                        </a>
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

				<!-- Filter -->
					<div class="filter_wrap">
						<div class="fix_title">
							상세조건
							<button type="button" onclick="filter_close();">닫기</button>
						</div>

						<section class="date_wrap">
							<h3>날짜</h3>
							<div class="btn_date">
								<span id="datepicker" class="date_view">8.23 ~ 8.26</span><em
									id="date_days">&nbsp;·&nbsp;7박</em>
							</div>
						</section>

						<h3>상세조건</h3>
						<div class="btn_wrap">
							<button type="button"
								onclick="window.location.href='https://www.goodchoice.kr/product/search/2/2012?sel_date=2022-08-24&sel_date2=2022-08-25'">초기화</button>
							<button type="submit">적용</button>
						</div>
						<section>
							<strong>숙소 유형</strong>
							<ul>
								<li><input type="checkbox" id="grade_0" name="grade[]"
									class="inp_chk" value="STAR5" /><label for="grade_0"
									class="label_chk">호텔·리조트</label></li>
								<li><input type="checkbox" id="grade_0" name="grade[]"
									class="inp_chk" value="STAR5" /><label for="grade_0"
									class="label_chk">펜션</label></li>
								<li><input type="checkbox" id="grade_0" name="grade[]"
									class="inp_chk" value="STAR5" /><label for="grade_0"
									class="label_chk">게스트하우스</label></li>
							</ul>
						</section>
						<section>
							<input type="hidden" id="persons" name="persons" value="0"><strong>인원</strong>
							<div class="cnt_people" data-min="2" data-max="10" data-def="2">
								<button type="button" class="disable dn">-</button>
								<span>2</span>
								<button type="button" class=" up">+</button>
							</div>
						</section>
						<section>
							<strong>베드 타입</strong>
							<div class="room_type">
								<p>
									<input type="checkbox" class="inp_room_01" name="bed_type[0]"
										id="bed_type_S" value="S" /><label for="bed_type_S"
										class="label_room_01">싱글</label>
								</p>
								<p>
									<input type="checkbox" class="inp_room_02" name="bed_type[1]"
										id="bed_type_D" value="D" /><label for="bed_type_D"
										class="label_room_02">더블</label>
								</p>
								<p>
									<input type="checkbox" class="inp_room_03" name="bed_type[2]"
										id="bed_type_T" value="T" /><label for="bed_type_T"
										class="label_room_03">트윈</label>
								</p>
								<p>
									<input type="checkbox" class="inp_room_04" name="bed_type[3]"
										id="bed_type_O" value="O" /><label for="bed_type_O"
										class="label_room_04">온돌</label>
								</p>
							</div>
						</section>
						<section>
							<strong>공용시설
								<button type="button">모두 보기</button>
							</strong>
							<ul class="hide_type half">
								<li><input type="checkbox" id="tmino_0" name="tmino[]"
									class="inp_chk" value="41" /><label for="tmino_0"
									class="label_chk">주방/식당</label></li>
								<li><input type="checkbox" id="tmino_1" name="tmino[]"
									class="inp_chk" value="42" /><label for="tmino_1"
									class="label_chk">세탁기</label></li>
								<li><input type="checkbox" id="tmino_2" name="tmino[]"
									class="inp_chk" value="44" /><label for="tmino_2"
									class="label_chk">건조기</label></li>
							</ul>
						</section>
					</div>
					<!-- //Filter -->

				<!-- List -->
				<div class="list_wrap">
					<div class="top_sort">
                        <!-- PC-->
                        <div class="pc">
                            <div class="btn_wrap width_4">
                                <button type="button" data-sort="HIT" class=""><span>추천 순</span></button>
                                <button type="button" data-sort="DISTANCE" class="on"><span>거리 순</span></button>
                                <button type="button" data-sort="LOWPRICE" class=""><span>낮은 가격 순</span></button>
                                <button type="button" data-sort="HIGHPRICE" class=""><span>높은 가격 순</span></button>
                             </div>
	                         <button type="button" class="btn_map" onclick="pop_map_pc();">지도</button>
                        </div>
					</div>

	<div id="poduct_list_area">

         <li class="list_2 adcno2">
        <a href="https://www.goodchoice.kr/product/detail?ano=6639&adcno=2&sel_date=2022-08-24&sel_date2=2022-08-25"
            data-ano="6639" data-adcno="2" data-alat="37.521988986261" data-alng="127.01954762009" data-distance="8.199" data-affiliate="1">
            <p class="pic">
                <img class="lazy align"
                     data-original="//image.goodchoice.kr/resize_1000X500x0/affiliate/2016/05/24/5743dc3ba2a91.jpg"
                     src="/images/houseImgs/houseImg-1001.jpg" alt="라까사호텔 서울"
                     style="margin-top: -159px; display: block;"/>
            </p>
            <div class="stage gra_black_vertical">
                                <div class="name">
                    <div class="badge"><span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(106,120,141,1);">3성급</span></div>                    <strong>라까사호텔 서울</strong>
                    <p class="score">
                        <em>9.1</em>&nbsp;<span>추천해요</span>&nbsp;(163)                    </p>
                    <p>
                        강남구 | 가로수길 도보10분                    </p>
                </div>
                <div class="price">
                    <p><b>110,000원</b></p>                </div>
            </div>
        </a>
    </li>
    <li class="list_2 adcno2">
        <a href="https://www.goodchoice.kr/product/detail?ano=61931&adcno=2&sel_date=2022-08-24&sel_date2=2022-08-25"
            data-ano="61931" data-adcno="2" data-alat="37.525418092797" data-alng="127.02887026009" data-distance="8.787" data-affiliate="1">
            <p class="pic">
                <img class="lazy align"
                     data-original="//image.goodchoice.kr/resize_1000X500x0/affiliate/2020/09/01/5f4ddc6f1a7d8.jpg"
                     src="//image.goodchoice.kr/images/web_v3/bg_trans.png" alt="안다즈 서울 강남" />
            </p>
            <div class="stage gra_black_vertical">
                <div class="evt_info"><span>#얼리버드특가 #미니바무료 #피트니스 #수영장</span></div>                <div class="name">
                    <div class="badge"><span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(97,95,184,1);">5성급</span></div>                    <strong>안다즈 서울 강남</strong>
                    <p class="score">
                        <em>9.6</em>&nbsp;<span>최고에요</span>&nbsp;(214)                    </p>
                    <p>
                        강남구 | 압구정역 3번출구 앞                    </p>
                </div>
                <div class="price">
                    <div class="map_html">
                        <p><b>308,550원</b></p>                    </div>
                    <p><b>308,550원</b></p>                </div>
            </div>
        </a>
    </li>
    <li class="list_2 adcno2">
        <a href="https://www.goodchoice.kr/product/detail?ano=65455&adcno=2&sel_date=2022-08-24&sel_date2=2022-08-25"
            data-ano="65455" data-adcno="2" data-alat="37.518851159648" data-alng="127.02521910677" data-distance="8.804" data-affiliate="1">
            <p class="pic">
                <img class="lazy align"
                     data-original="//image.goodchoice.kr/resize_1000X500x0/affiliate/2021/03/16/60506b208a827.jpg"
                     src="//image.goodchoice.kr/images/web_v3/bg_trans.png" alt="호텔 안테룸 서울" />
            </p>
            <div class="stage gra_black_vertical">
                                <div class="name">
                    <div class="badge"><span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(106,120,141,1);">3성급</span></div>                    <strong>호텔 안테룸 서울</strong>
                    <p class="score">
                        <em>9.0</em>&nbsp;<span>추천해요</span>&nbsp;(198)                    </p>
                    <p>
                        강남구 | 신사역 도보 6분                    </p>
                </div>
                <div class="price">
                    <div class="map_html">
                        <p><b>130,000원</b></p>                    </div>
                    <p><b>130,000원</b></p>                </div>
            </div>
        </a>
    </li>
    
   </div>

				</div>
				<!-- //List -->

			</div>

        </div>
        <!-- //Content  -->
    </form>

    <!-- #1 내 위치 재설정-->
    <div class="layer pop_relocation">
        <div class="title">내 위치 재설정<button type="button" onclick="close_layer()">닫기</button></div>
        <div class="vertical_align">
            <div>
                <b>현재 위치 재검색 또는<span>지도로 위치설정이 가능합니다.</span></b>
                <p onclick="geoFindMe(true,true,false); return false;"><span class="bg_01">현재 위치 재검색</span></p><br/>
                <p onclick="select_map(); return false;"><span class="bg_02">지도로 위치 설정</span></p>
            </div>
        </div>
    </div>

    <!-- #2 지도 -->
    <div class="layer pop_map">
		<button class="pc_btn_close" type="button" onclick="close_layer()">닫기</button>
        <div class="title"><span>위치설정</span><button type="button" onclick="close_layer()">닫기</button></div>
        <div class="address">서울특별시 중구 세종대로</div>
        <div class="inner_map">지도</div>
        <div class="btn_set">
            <button class="gra_left_right_red">설정 완료</button>
        </div>
    </div>

    <!-- #3 거리순/추천순 팝업 -->
    <div class="layer pop_sort box_shadow">
        <ul>
            <li><button type="button" data-sort="HIT" class="">추천 순</button></li><li><button type="button" data-sort="DISTANCE" class="active">거리 순</button></li><li><button type="button" data-sort="LOWPRICE" class="">낮은 가격 순</button></li><li><button type="button" data-sort="HIGHPRICE" class="">높은 가격 순</button></li>        </ul>
        <button type="button" onclick="close_layer();">취소</button>
    </div>

	<!-- #4 지도 - 모바일 숙소 소개 -->
	<div class="layer pop_m_room">
		<ul class="owl-carousel"></ul>
	</div>

</div>

    <!-- Footer -->
<%@include file="../common/footer.jsp" %>

</div>

<!-- 상단으로 -->
<button class="btn_go_top" onclick="moveTop();">상단으로</button>

<!-- //Wrap -->


<!-- Page Script -->

<!-- <script type="text/javascript" src="https://www.goodchoice.kr/js/service/product.js?rand=1660711669" ></script> -->
<!-- <script type="text/javascript" src="https://www.goodchoice.kr/js/service/product.list.js?rand=1660711669" ></script> -->


</div>
</body>
</html>