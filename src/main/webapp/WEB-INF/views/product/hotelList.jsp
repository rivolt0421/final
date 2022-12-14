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
			<div class="sub_top_wrap"> <!-- ??????????????? ????????? ?????? early_top -->
				<div class="sub_top bg_kong_1">
					<h2>?????????????????</h2>
					<div class="area">
						<div class="btn_area"><span>??????</span>??????/??????/??????/??????/??????</div>
						<div class="btn_date"><span class="date_view"><b></b><em>&nbsp;??&nbsp;1???</em></span></div>
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
                        ?????? ??????<button type="button"onclick="area_close();">??????</button>
                    </div>

                    <!-- ???????????? (?????????/??????/?????? ??????????????? area_etc)-->
                    <div class="area_wrap ">
                        <div class="iscroll_01 depth_01">
                            <div class="scroller">
                                            <ul class="city"><!-- ?????? ?????? ????????? fix / ????????? on -->
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2012" class="fix on">
                            ??????                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2041" >
                            ??????                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2051" >
                            ??????                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2081" >
                            ??????                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2061" >
                            ??????                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2071" >
                            ??????                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2101" >
                            ??????                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2112" >
                            ??????                        </a>
                    </li>
                                    <li>
                        <a href="https://www.goodchoice.kr/product/search/2/2093" >
                            ??????                        </a>
                    </li>
                            </ul>
                                        </div>
                        </div>
                        <div class="iscroll_02">
                            <div class="scroller">
                            <ul class="city_child">
                              <li><a href="https://www.goodchoice.kr/product/home/1" class="on">?????? ????????????<span>HOT</span></a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7052" >??????/??????/??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7053" >??????/??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7040" >??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7041" >????????????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/122" >?????????/?????????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/20" >??????/??????/??????/?????????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/45" >??????/??????/????????????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/17" >??????/??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/19" >?????????/??????/??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/14" >??????/?????????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/120" >??????/??????/??????/?????????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7026" >????????????/??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7027" >??????/??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/95" >??????/??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/96" >?????????/??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/135" >??????/??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/97" >?????????/??????/?????????/?????????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/125" >??????/??????/??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/123" >??????/??????/?????????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/46" >??????/?????????/??????</a></li>
                            </ul>
                            <ul class="city_child">
                              <li><a href="https://www.goodchoice.kr/product/home/2" >?????? ????????????<span>HOT</span></a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/89" >??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/160" >????????????/??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/88" >?????????/??????/?????????/??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/161" >?????????/?????????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/100" >??????/??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/99" >??????/??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7042" >??????/??????/?????????/????????????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/7043" >??????/??????/??????/?????????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/21" >??????/??????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/22" >?????????</a></li>
                              <li><a href="https://www.goodchoice.kr/product/search/1/53" >??????</a></li>
                            </ul>                            
                            </div>
                        </div>
                    </div>

                </div>
				<!-- //Area -->

				<!-- Filter -->
					<div class="filter_wrap">
						<div class="fix_title">
							????????????
							<button type="button" onclick="filter_close();">??????</button>
						</div>

						<section class="date_wrap">
							<h3>??????</h3>
							<div class="btn_date">
								<span id="datepicker" class="date_view">8.23 ~ 8.26</span><em
									id="date_days">&nbsp;??&nbsp;7???</em>
							</div>
						</section>

						<h3>????????????</h3>
						<div class="btn_wrap">
							<button type="button"
								onclick="window.location.href='https://www.goodchoice.kr/product/search/2/2012?sel_date=2022-08-24&sel_date2=2022-08-25'">?????????</button>
							<button type="submit">??????</button>
						</div>
						<section>
							<strong>?????? ??????</strong>
							<ul>
								<li><input type="checkbox" id="grade_0" name="grade[]"
									class="inp_chk" value="STAR5" /><label for="grade_0"
									class="label_chk">?????????????????</label></li>
								<li><input type="checkbox" id="grade_0" name="grade[]"
									class="inp_chk" value="STAR5" /><label for="grade_0"
									class="label_chk">??????</label></li>
								<li><input type="checkbox" id="grade_0" name="grade[]"
									class="inp_chk" value="STAR5" /><label for="grade_0"
									class="label_chk">??????????????????</label></li>
							</ul>
						</section>
						<section>
							<input type="hidden" id="persons" name="persons" value="0"><strong>??????</strong>
							<div class="cnt_people" data-min="2" data-max="10" data-def="2">
								<button type="button" class="disable dn">-</button>
								<span>2</span>
								<button type="button" class=" up">+</button>
							</div>
						</section>
						<section>
							<strong>?????? ??????</strong>
							<div class="room_type">
								<p>
									<input type="checkbox" class="inp_room_01" name="bed_type[0]"
										id="bed_type_S" value="S" /><label for="bed_type_S"
										class="label_room_01">??????</label>
								</p>
								<p>
									<input type="checkbox" class="inp_room_02" name="bed_type[1]"
										id="bed_type_D" value="D" /><label for="bed_type_D"
										class="label_room_02">??????</label>
								</p>
								<p>
									<input type="checkbox" class="inp_room_03" name="bed_type[2]"
										id="bed_type_T" value="T" /><label for="bed_type_T"
										class="label_room_03">??????</label>
								</p>
								<p>
									<input type="checkbox" class="inp_room_04" name="bed_type[3]"
										id="bed_type_O" value="O" /><label for="bed_type_O"
										class="label_room_04">??????</label>
								</p>
							</div>
						</section>
						<section>
							<strong>????????????
								<button type="button">?????? ??????</button>
							</strong>
							<ul class="hide_type half">
								<li><input type="checkbox" id="tmino_0" name="tmino[]"
									class="inp_chk" value="41" /><label for="tmino_0"
									class="label_chk">??????/??????</label></li>
								<li><input type="checkbox" id="tmino_1" name="tmino[]"
									class="inp_chk" value="42" /><label for="tmino_1"
									class="label_chk">?????????</label></li>
								<li><input type="checkbox" id="tmino_2" name="tmino[]"
									class="inp_chk" value="44" /><label for="tmino_2"
									class="label_chk">?????????</label></li>
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
                                <button type="button" data-sort="HIT" class=""><span>?????? ???</span></button>
                                <button type="button" data-sort="DISTANCE" class="on"><span>?????? ???</span></button>
                                <button type="button" data-sort="LOWPRICE" class=""><span>?????? ?????? ???</span></button>
                                <button type="button" data-sort="HIGHPRICE" class=""><span>?????? ?????? ???</span></button>
                             </div>
	                         <button type="button" class="btn_map" onclick="pop_map_pc();">??????</button>
                        </div>
					</div>

	<div id="poduct_list_area">

         <li class="list_2 adcno2">
        <a href="https://www.goodchoice.kr/product/detail?ano=6639&adcno=2&sel_date=2022-08-24&sel_date2=2022-08-25"
            data-ano="6639" data-adcno="2" data-alat="37.521988986261" data-alng="127.01954762009" data-distance="8.199" data-affiliate="1">
            <p class="pic">
                <img class="lazy align"
                     data-original="//image.goodchoice.kr/resize_1000X500x0/affiliate/2016/05/24/5743dc3ba2a91.jpg"
                     src="/images/houseImgs/houseImg-1001.jpg" alt="??????????????? ??????"
                     style="margin-top: -159px; display: block;"/>
            </p>
            <div class="stage gra_black_vertical">
                                <div class="name">
                    <div class="badge"><span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(106,120,141,1);">3??????</span></div>                    <strong>??????????????? ??????</strong>
                    <p class="score">
                        <em>9.1</em>&nbsp;<span>????????????</span>&nbsp;(163)                    </p>
                    <p>
                        ????????? | ???????????? ??????10???                    </p>
                </div>
                <div class="price">
                    <p><b>110,000???</b></p>                </div>
            </div>
        </a>
    </li>
    <li class="list_2 adcno2">
        <a href="https://www.goodchoice.kr/product/detail?ano=61931&adcno=2&sel_date=2022-08-24&sel_date2=2022-08-25"
            data-ano="61931" data-adcno="2" data-alat="37.525418092797" data-alng="127.02887026009" data-distance="8.787" data-affiliate="1">
            <p class="pic">
                <img class="lazy align"
                     data-original="//image.goodchoice.kr/resize_1000X500x0/affiliate/2020/09/01/5f4ddc6f1a7d8.jpg"
                     src="//image.goodchoice.kr/images/web_v3/bg_trans.png" alt="????????? ?????? ??????" />
            </p>
            <div class="stage gra_black_vertical">
                <div class="evt_info"><span>#?????????????????? #??????????????? #???????????? #?????????</span></div>                <div class="name">
                    <div class="badge"><span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(97,95,184,1);">5??????</span></div>                    <strong>????????? ?????? ??????</strong>
                    <p class="score">
                        <em>9.6</em>&nbsp;<span>????????????</span>&nbsp;(214)                    </p>
                    <p>
                        ????????? | ???????????? 3????????? ???                    </p>
                </div>
                <div class="price">
                    <div class="map_html">
                        <p><b>308,550???</b></p>                    </div>
                    <p><b>308,550???</b></p>                </div>
            </div>
        </a>
    </li>
    <li class="list_2 adcno2">
        <a href="https://www.goodchoice.kr/product/detail?ano=65455&adcno=2&sel_date=2022-08-24&sel_date2=2022-08-25"
            data-ano="65455" data-adcno="2" data-alat="37.518851159648" data-alng="127.02521910677" data-distance="8.804" data-affiliate="1">
            <p class="pic">
                <img class="lazy align"
                     data-original="//image.goodchoice.kr/resize_1000X500x0/affiliate/2021/03/16/60506b208a827.jpg"
                     src="//image.goodchoice.kr/images/web_v3/bg_trans.png" alt="?????? ????????? ??????" />
            </p>
            <div class="stage gra_black_vertical">
                                <div class="name">
                    <div class="badge"><span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(106,120,141,1);">3??????</span></div>                    <strong>?????? ????????? ??????</strong>
                    <p class="score">
                        <em>9.0</em>&nbsp;<span>????????????</span>&nbsp;(198)                    </p>
                    <p>
                        ????????? | ????????? ?????? 6???                    </p>
                </div>
                <div class="price">
                    <div class="map_html">
                        <p><b>130,000???</b></p>                    </div>
                    <p><b>130,000???</b></p>                </div>
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

    <!-- #1 ??? ?????? ?????????-->
    <div class="layer pop_relocation">
        <div class="title">??? ?????? ?????????<button type="button" onclick="close_layer()">??????</button></div>
        <div class="vertical_align">
            <div>
                <b>?????? ?????? ????????? ??????<span>????????? ??????????????? ???????????????.</span></b>
                <p onclick="geoFindMe(true,true,false); return false;"><span class="bg_01">?????? ?????? ?????????</span></p><br/>
                <p onclick="select_map(); return false;"><span class="bg_02">????????? ?????? ??????</span></p>
            </div>
        </div>
    </div>

    <!-- #2 ?????? -->
    <div class="layer pop_map">
		<button class="pc_btn_close" type="button" onclick="close_layer()">??????</button>
        <div class="title"><span>????????????</span><button type="button" onclick="close_layer()">??????</button></div>
        <div class="address">??????????????? ?????? ????????????</div>
        <div class="inner_map">??????</div>
        <div class="btn_set">
            <button class="gra_left_right_red">?????? ??????</button>
        </div>
    </div>

    <!-- #3 ?????????/????????? ?????? -->
    <div class="layer pop_sort box_shadow">
        <ul>
            <li><button type="button" data-sort="HIT" class="">?????? ???</button></li><li><button type="button" data-sort="DISTANCE" class="active">?????? ???</button></li><li><button type="button" data-sort="LOWPRICE" class="">?????? ?????? ???</button></li><li><button type="button" data-sort="HIGHPRICE" class="">?????? ?????? ???</button></li>        </ul>
        <button type="button" onclick="close_layer();">??????</button>
    </div>

	<!-- #4 ?????? - ????????? ?????? ?????? -->
	<div class="layer pop_m_room">
		<ul class="owl-carousel"></ul>
	</div>

</div>

    <!-- Footer -->
<%@include file="../common/footer.jsp" %>

</div>

<!-- ???????????? -->
<button class="btn_go_top" onclick="moveTop();">????????????</button>

<!-- //Wrap -->


<!-- Page Script -->

<!-- <script type="text/javascript" src="https://www.goodchoice.kr/js/service/product.js?rand=1660711669" ></script> -->
<!-- <script type="text/javascript" src="https://www.goodchoice.kr/js/service/product.list.js?rand=1660711669" ></script> -->


</div>
</body>
</html>