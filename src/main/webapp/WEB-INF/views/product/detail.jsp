<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="/css/daterangepicker.min.css">
<link href="/css/product.css" rel="stylesheet" />
<link href="/css/swiper.css" rel="stylesheet" />


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/4f71b1e252.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
<script type="text/javascript" src="/script/jquery.daterangepicker.min.js"></script>
<script src="/script/common.js"></script>
<script src="/script/product.js"></script>
<script src="/script/iscroll.js"></script>
<script src="/script/swiper.js"></script>
</head>

<body>
    <!-- Wrap -->
    <div class="wrap show">

        <!-- Header -->
        <%@include file="../common/nav.jsp" %>

            <!-- Bg Dimm -->
            <div class="bg_dimm" onclick="close_layer();">&nbsp;</div>
            <div class="bg_dimm_prevent">&nbsp;</div>

            <!-- Content  -->
            <div id="content" class="detail ">
                <!-- 비제휴점 inert_room 클래스 추가 -->

                <!-- Top -->
                <div class="top">

                    <!-- Left -->
                    <div class="left">

                        <!-- Gallery (PC) -->
                        <div class="gallery_pc">
                            <!-- Image Size : 490 x 348 -->

                            <!-- Swiper -->
                            <div class="swiper-container gallery-top">
                                <ul class="swiper-wrapper">
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef8232c3e.jpg"
                                            alt="호텔 인 나인 강남 | 전경" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/08/25/5f44c7eb31023.jpg"
                                            alt="호텔 인 나인 강남 | 루프탑" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef6ac910a.jpg"
                                            alt="호텔 인 나인 강남 | 객실" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef6be2eb8.jpg"
                                            alt="호텔 인 나인 강남 | 객실" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef6d2d736.jpg"
                                            alt="호텔 인 나인 강남 | 객실" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef6e8bdf3.jpg"
                                            alt="호텔 인 나인 강남 | 객실" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef6b55c36.jpg"
                                            alt="호텔 인 나인 강남 | 객실" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef83571b8.jpg"
                                            alt="호텔 인 나인 강남 | 레스토랑" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef7f882ad.jpg"
                                            alt="호텔 인 나인 강남 | 레스토랑" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef81b2715.jpg"
                                            alt="호텔 인 나인 강남 | 레스토랑" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef82dabcc.jpg"
                                            alt="호텔 인 나인 강남 | 레스토랑" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef844e471.jpg"
                                            alt="호텔 인 나인 강남 | 레스토랑" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef6c78696.jpg"
                                            alt="호텔 인 나인 강남 | 외관" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef8103d49.jpg"
                                            alt="호텔 인 나인 강남 | 내부" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef80140ef.jpg"
                                            alt="호텔 인 나인 강남 | 내부" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/08/26/5f45fb14eb80e.jpg"
                                            alt="호텔 인 나인 강남 | 피트니스" class="swiper-lazy" /></li>
                                </ul>
                            </div>
                            <div class="swiper-container gallery-thumbs">
                                <ul class="swiper-wrapper">
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef8232c3e.jpg"
                                            alt="호텔 인 나인 강남 | 전경" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/08/25/5f44c7eb31023.jpg"
                                            alt="호텔 인 나인 강남 | 루프탑" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef6ac910a.jpg"
                                            alt="호텔 인 나인 강남 | 객실" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef6be2eb8.jpg"
                                            alt="호텔 인 나인 강남 | 객실" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef6d2d736.jpg"
                                            alt="호텔 인 나인 강남 | 객실" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef6e8bdf3.jpg"
                                            alt="호텔 인 나인 강남 | 객실" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef6b55c36.jpg"
                                            alt="호텔 인 나인 강남 | 객실" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef83571b8.jpg"
                                            alt="호텔 인 나인 강남 | 레스토랑" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef7f882ad.jpg"
                                            alt="호텔 인 나인 강남 | 레스토랑" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef81b2715.jpg"
                                            alt="호텔 인 나인 강남 | 레스토랑" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef82dabcc.jpg"
                                            alt="호텔 인 나인 강남 | 레스토랑" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef844e471.jpg"
                                            alt="호텔 인 나인 강남 | 레스토랑" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef6c78696.jpg"
                                            alt="호텔 인 나인 강남 | 외관" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef8103d49.jpg"
                                            alt="호텔 인 나인 강남 | 내부" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/07/28/5f1fef80140ef.jpg"
                                            alt="호텔 인 나인 강남 | 내부" class="swiper-lazy" /></li>
                                    <li class="swiper-slide"><img
                                            src="//image.goodchoice.kr/resize_490x348/affiliate/2020/08/26/5f45fb14eb80e.jpg"
                                            alt="호텔 인 나인 강남 | 피트니스" class="swiper-lazy" /></li>
                                </ul>
                            </div>
                            <!-- Add Arrows -->
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>

                        </div>

                        <!-- 비제휴점 사진 -->
                        <div class="inert_pic">
                            <img src="//image.goodchoice.kr/resize_490x348/adimg_new/detail_none.png" alt="" />
                        </div>

                    </div>
                    <!-- //Left -->

                    <!-- Datepicker -->
                    <input type="text" class="product_date" hidden/>

                    <!-- Right -->
                    <div class="right">

                        <!-- Info -->
                        <div class="info">
                            <p class="badge">
                            </p>

                            <span class="build_badge"
                                style="color: rgba(255,255,255,1); background-color: rgba(103,101,201,1);">4성급</span>
                            <h2>호텔 인 나인 강남</h2>
                            <div class="score_cnt">
                                <span>9.2</span>
                                추천해요
                            </div>
                            <p class="address">서울 강남구 삼성동 91-28</p>
                            <div class="benefit_wrap">
                            </div>
                        </div>

                        <div id="promotion-banner">
                        </div>

                        <!-- 업체 이벤트 -->

                        <div class="event_link">
                            <section class="gra_mint_2">
                                <!-- on클래스 추가시 오픈 -->
                                <ul>
                                    <li onclick="pop_evt();">시간 가는 줄 모르고 보게되는~[넷플릭스 시청]</li>
                                    <li onclick="pop_evt();">19시에 함께하는 특가! [19시 체크인]</li>
                                    <li onclick="pop_evt();">[반나절 호캉스-숙박불가] 당일 4시간 이용권</li>
                                    <li onclick="pop_evt();">[반나절 호캉스-숙박불가] 당일 8시간 이용권</li>
                                    <li onclick="pop_evt();">간편하게 즐겨요! #샌드위치 조식</li>
                                </ul>
                            </section>

                        </div>

                        <!-- 사장님 한마디 & 추천이유 -->
                        <div class="comment">
                            <strong>사장님 한마디</strong>
                            <button>더보기</button>
                            <div>Hotel in 9은 지하철 봉은사 역 3번 출구에서 도보로 1분 거리에 위치한 비지니스 호텔입니다<br />
                                주변 관광지로는 코엑스몰, 서울 코엑스 컨벤션 센터 및 코엑스 아쿠아리움, 압구정 로데오 등이 있습니다<br />
                                삼성역 7번 출구에서도 도보로 약 10분 거리에 위치하고 있기 때문에 서울의 다른 지역에도 손쉽게 이동할 수 있는 접근성을 가지고 있습니다</div>
                        </div>
                    </div>
                    <!-- //Right -->

                </div>
                <!-- //Top -->

                <!-- Tab Menu -->
                <div class="tab">
                    <button class="on"><span>객실안내/예약</span></button>
                    <button onclick="init_map('37.515691700231', '127.05995592587');"><span>숙소정보</span></button>
                    <button class="tab_review"><span>리뷰</span></button>
                </div>

                <form id="product_filter_form" method="get" action="https://www.goodchoice.kr/product/detail">


                    <input id="sel_date" type="hidden" name="sel_date" value="2022-08-22" />

                    <input id="sel_date2" type="hidden" name="sel_date2" value="2022-08-23" />

                    <input id="ano" type="hidden" name="ano" value="57843" />

                    <input id="adcno" type="hidden" name="adcno" value="2" />

                    <!-- 객실안내/예약 -->
                    <article class="room_info on">

                        <section class="date_wrap">
							<div class="btn_date">
								<span id="datepicker" class="date_view">8.23 ~ 8.26</span><em
									id="date_days">&nbsp;·&nbsp;7박</em>
							</div>
						</section>

                        <!-- php -->
                        <div class="room">
                            <!-- 282 x 169 -->
                            <p class="pic_view "><img class="lazy"
                                    data-original="//image.goodchoice.kr/resize_370x220/affiliate/2019/02/28/5c77a902d26ee.jpg"
                                    src="//image.goodchoice.kr/resize_1000X500x0/adimg_new/list_none.png"
                                    alt="호텔 인 나인 강남 | [반나절 호캉스-숙박불가] 스탠다드 더블 (당일 4시간 이용)" /></p>
                            <div class="cal_bg">
                                <button type="button">닫기</button>
                            </div>

                            <strong class="title">[반나절 호캉스-숙박불가] 스탠다드 더블 (당...</strong>

                            <div class="pic_wrap">
                                <!-- PC -->
                                <div class="gallery_m index_mobile">
                                    <ul class="nav owl-carousel">
                                        <li class="item on"><img class="owl-lazy"
                                                src="//image.goodchoice.kr/resize_490x348/affiliate/2019/02/28/5c77a902d26ee.jpg"
                                                alt="호텔 인 나인 강남 | [반나절 호캉스-숙박불가] 스탠다드 더블 (당일 4시간 이용)" /></li>
                                        <li class="item on"><img class="owl-lazy"
                                                src="//image.goodchoice.kr/resize_490x348/affiliate/2019/02/28/5c77a9008dac3.jpg"
                                                alt="호텔 인 나인 강남 | [반나절 호캉스-숙박불가] 스탠다드 더블 (당일 4시간 이용)" /></li>
                                        <li class="item on"><img class="owl-lazy"
                                                src="//image.goodchoice.kr/resize_490x348/affiliate/2020/08/24/5f436b363824c.jpg"
                                                alt="호텔 인 나인 강남 | [반나절 호캉스-숙박불가] 스탠다드 더블 (당일 4시간 이용)" /></li>
                                    </ul>
                                    <div class="index">
                                        <p><span></span> / <span></span></p>
                                    </div>
                                </div>
                            </div>

                            <div class="info">
                                <div class="hotel">
                                    <div class="price">
                                        <strong>
                                            가격 </strong>
                                        <div>
                                            <p class="through_none"
                                                style="text-decoration: inherit; visibility: hidden;">
                                                0 </p>

                                            <p>
                                                <b style="color: rgba(0,0,0,1)">99,000원</b> <!-- 표시금액 -->
                                            </p>

                                        </div>

                                        <button type="button" onclick="pop_room_detail(365709);">
                                            객실 이용 안내
                                        </button>

                                    </div>

                                    <button type="button"
                                        onclick="location.href='/reservation?adcno=2&ano=57843&armgno=365709&checkin_type=2&checkin_date=2022-08-22&checkout_date=2022-08-23&sale_price=99000';"
                                        class="gra_left_right_red" style=""> 예약</button>
                                </div>
                            </div>
                        </div>

                        <div class="room">
                            <!-- 282 x 169 -->
                            <p class="pic_view "><img class="lazy"
                                    data-original="//image.goodchoice.kr/resize_370x220/affiliate/2019/02/28/5c77a9797c093.jpg"
                                    src="//image.goodchoice.kr/resize_1000X500x0/adimg_new/list_none.png"
                                    alt="호텔 인 나인 강남 | [반나절 호캉스-숙박불가] 스탠다드 트윈 (당일 4시간 이용)" /></p>
                            <div class="cal_bg">
                                <button type="button">닫기</button>
                            </div>

                            <strong class="title">[반나절 호캉스-숙박불가] 스탠다드 트윈 (당...</strong>

                            <div class="pic_wrap">

                                <!-- PC -->
                                <div class="gallery_m index_mobile">
                                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
									  <div class="carousel-indicators" style="bottom: 24px;">
									    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
									    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
									    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
									  </div>
									  <div class="carousel-inner">
									    <div class="carousel-item active">
									      <img class="d-block w-100" src="//image.goodchoice.kr/resize_490x348/affiliate/2019/02/28/5c77a9797c093.jpg" alt="First slide">
									    </div>
									    <div class="carousel-item">
									      <img class="d-block w-100" src="//image.goodchoice.kr/resize_490x348/affiliate/2019/02/28/5c77a9772ee61.jpg" alt="Second slide">
									    </div>
									    <div class="carousel-item">
									      <img class="d-block w-100" src="//image.goodchoice.kr/resize_490x348/affiliate/2020/08/24/5f436b3c14009.jpg" alt="Third slide">
									    </div>
									  </div>
									   <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
									    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
									    <span class="visually-hidden">Previous</span>
									  </button>
									  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
									    <span class="carousel-control-next-icon" aria-hidden="true"></span>
									    <span class="visually-hidden">Next</span>
									  </button>
									</div>
                                    <!-- <ul class="nav owl-carousel">
                                        <li class="item on"><img class="owl-lazy"
                                                src=""
                                                alt="호텔 인 나인 강남 | [반나절 호캉스-숙박불가] 스탠다드 트윈 (당일 4시간 이용)" /></li>
                                        <li class="item on"><img class="owl-lazy"
                                                src="//image.goodchoice.kr/resize_490x348/affiliate/2019/02/28/5c77a9772ee61.jpg"
                                                alt="호텔 인 나인 강남 | [반나절 호캉스-숙박불가] 스탠다드 트윈 (당일 4시간 이용)" /></li>
                                        <li class="item on"><img class="owl-lazy"
                                                src=""
                                                alt="호텔 인 나인 강남 | [반나절 호캉스-숙박불가] 스탠다드 트윈 (당일 4시간 이용)" /></li>
                                    </ul>
                                    <div class="index">
                                        <p><span></span> / <span></span></p>
                                    </div> -->
                                </div>
                            </div>

                            <div class="info">
                                <div class="hotel">
                                    <div class="price">
                                        <strong>
                                            가격 </strong>
                                        <div>
                                            <p class="through_none"
                                                style="text-decoration: inherit; visibility: hidden;">
                                                0 </p>

                                            <p>
                                                <b style="color: rgba(0,0,0,1)">99,000원</b> <!-- 표시금액 -->
                                            </p>

                                        </div>

                                        <button type="button" onclick="pop_room_detail(365710);">
                                            객실 이용 안내
                                        </button>

                                    </div>

                                    <button type="button"
                                        onclick="location.href='/reservation?adcno=2&ano=57843&armgno=365710&checkin_type=2&checkin_date=2022-08-22&checkout_date=2022-08-23&sale_price=99000';"
                                        class="gra_left_right_red" style=""> 예약</button>
                                </div>
                            </div>
                        </div>

                    </article>
                    <!-- //객실안내/예약 -->
                </form>


                <!-- 숙소정보 -->
                <article class="detail_info">
                    <!-- 기본 정보 -->
                    <button type="button" id="default_info_tab" class="category"><span>기본 정보</span></button>
                    <section class="default_info">


                        <h3>주변정보</h3>
                        <ul>
                            <li>봉은사역 3번출구 도보 1분</li>
                            <li>삼성역 7번출구 도보 10분</li>
                            <li>세빛섬 차량 15분</li>
                        </ul>

                        <h3>주차 정보</h3>
                        <ul>
                            <li><b>[주차 안내]</b></li>
                            <li>총 가능 대수 : 24대 (기계식 주차시설)</li>
                            <li>[이용 요금]</li>
                            <li>-주차비 : 숙박 시 1박당 10,000원 / 1객실 당 1대의 차량 주차 가능</li>
                            <li>-식음료 업장 이용시 : 기본 3시간 5,000원, 추가 10분당 2,000원</li>
                            <li>-연회 이용 시 : 기본 4시간 5,000원, 추가 10분당 2,000원</li>
                            <li>-비규격차량은 기계식 주차장에 진입이 불가하므로 옥외주차장에 주차 바랍니다</li>
                            <li>-비규격 차량의 기계식 주차장 진입으로 인한 휠 손상에는 호텔이 책임지지 않습니다</li>
                            <li>-<b>호텔 주차장이 만차일 경우 외부 유료 주차장을(고객 지불) 이용하셔야 하니 이 점 참고 부탁드립니다</b></li>
                        </ul>

                        <h3>공지사항</h3>
                        <ul>
                            <li><b>[Festiva 디너 운영 시간]</b></li>
                            <li>디너: 18:00~21:00 (Last Order 20:30)</li>
                            <li>와인 1병+디너정찬 1인 패키지: 18:00~21:00 (Last Order 19:00)</li>
                            <li><b>[부대시설 운영 안내]</b></li>
                            <li>22층 루프탑 : 호캉스 패키지(감자튀김+생맥주)예약 시 사용가능 / 운영시간: 19:00~21:00</li>
                        </ul>

                        <h3>기본정보</h3>
                        <ul>
                            <li>체크인 : 15:00 | 체크아웃 : 12:00</li>
                            <li>체크인 종료 시점은 자정 (24:00) 입니다 </li>
                            <li>무료 Wi-Fi</li>
                            <li>전 객실 금연</li>
                            <li>Bath Amenity (치약, 칫솔 무료)</li>
                            <li>전 객실 취사 불가</li>
                        </ul>

                        <h3>인원 추가 정보</h3>
                        <ul>
                            <li>기준 인원 외 초과 시, 인원 추가 비 발생 (프론트 문의)</li>
                            <li>최대 인원 초과 시 이용 불가</li>
                            <li>[주니어 스위트 패밀리 트윈] 객실 한정 인원 추가 시, 1인 33,000원</li>
                            <li>7세 이하(소아) 인원 추가 무료 </li>
                            <li>현장결제</li>
                        </ul>

                        <h3>부대시설 정보</h3>
                        <ul>
                            <li>레스토랑 (FESTIVA) / 21층</li>
                            <li>-조식은 코로나사태로 인하여 운영되지 않으니 고객님의 양해 부탁드립니다</li>
                            <li>-런치 11:30~14:30 (라스트오더 14:00)</li>
                            <li>-디너 18:00~21:00 (라스트오더 20:30)</li>
                            <li>연회장 / 지하 1층</li>
                            <li>회의실 / 지하 1층</li>
                            <li>비즈니스 센터 / 1층</li>
                        </ul>

                        <h3>취소 및 환불 규정</h3>
                        <ul>
                            <li>체크인일 기준 3일전 17시까지 : 100% 환불</li>
                            <li>체크인일 기준 3일전 17시이후~당일 및 No-show : 환불불가</li>
                            <li>취소, 환불시 수수료가 발생할 수 있습니다</li>
                        </ul>

                        <h3>확인사항 및 기타</h3>
                        <ul>
                            <li>최대인원 초과시 입실 불가합니다</li>
                            <li>미성년자는 보호자 동반없이 이용이 불가합니다</li>
                            <li>위의 정보는 호텔의 사정에 따라 변경될 수 있습니다</li>
                            <li>해당 이미지는 실제와 상이 할 수 있습니다</li>
                            <li>체크인 시 배정 또는 베드타입 미기재 상품은 특정객실과 베드타입을 보장하지 않습니다</li>
                            <li>해당 객실가는 세금, 봉사료가 포함된 금액입니다</li>
                        </ul>
                        <div class="map" id="google_maps"></div>
                    </section>

                    <!-- 편의시설 및 서비스 -->
                    <button type="button" class="category"><span>편의시설 및 서비스</span></button>
                    <section class="service">
                        <ul class="theme_wrap">
                            <li class="theme_46">레스토랑</li>
                            <li class="theme_47">와이파이</li>
                            <li class="theme_49">욕실용품</li>
                            <li class="theme_112">엘레베이터</li>
                            <li class="theme_134">금연</li>
                            <li class="theme_141">카페</li>
                            <li class="theme_195">주차장</li>
                            <li class="theme_197">TV</li>
                            <li class="theme_198">에어컨</li>
                            <li class="theme_199">냉장고</li>
                            <li class="theme_200">객실샤워실</li>
                            <li class="theme_202">드라이기</li>
                        </ul>
                    </section>

                </article>
                <!-- //숙소정보 -->

                <!-- 리뷰 -->
                <article class="review" id="review">
                    <div class="score_top" v-if="count > 0">
                        <strong>{{rate_textinfo}}</strong>
                        <div class="score_wrap">
                            <!-- star_00 부터 5단위로 star_50 까지 반응형2.0과 같은구조 -->
                            <div :class="'score_star star_'+ score_star"></div>
                            <div class="num">{{rateavg}}</div>
                        </div>
                        <p v-if="ownercommcnt">
                            전체 리뷰 <b>{{count}}</b>
                            <span>|</span>
                            제휴점 답변 <b>{{ownercommcnt}}</b>
                        </p>
                        <p v-else>
                            전체 리뷰 <b>{{count}}</b>
                        </p>
                    </div>

                    <ul>
                        <template v-for="item in items">
                            <li>
                                <div class="guest">
                                    <!-- 유저 사진있으면 노출해주고 없을시 랜덤으로
					ico_01 ~ ico_05 에서 뿌려줌 -->
                                    <p class="pic">
                                        <img :src="'//image.goodchoice.kr'+ item.upath" :alt="item.unick" />
                                    </p>
                                    <span class="best_review" v-if="item.isBest === true">베스트 리뷰</span>
                                    <strong>{{item.epilrate_textinfo}}</strong>
                                    <div class="score_wrap_sm">
                                        <div :class="'score_star star_'+ get_score_star(item.epilrate)"></div>
                                        <div class="num">{{float_zero(item.epilrate)}}</div>
                                    </div>
                                    <div class="name" v-if="item.aerealstate == 'R'">
                                        <b>{{item.armgname}} · </b>{{item.unick}}
                                    </div>
                                    <div class="name" v-else>
                                        {{item.unick}}
                                    </div>
                                    <div class="txt" v-html="item.aepcont.replace(/\n/g, '<br />')"></div>
                                    <div class="gallery_re" v-if="getCount(item.aepimg) > 0">


                                        <div class="swiper-container swiper-type-3">
                                            <ul class="swiper-wrapper">
                                                <template v-for="aepimg in item.aepimg">
                                                    <li class="swiper-slide">
                                                        <img :src="'//image.goodchoice.kr'+ aepimg.aep_imgpath"
                                                            :alt="item.epilrate_textinfo" />
                                                    </li>
                                                </template>
                                            </ul>
                                            <div class="swiper-button-next"></div>
                                            <div class="swiper-button-prev"></div>
                                        </div>

                                        <!--
						<ul class="nav owl-carousel">
							<template v-for="aepimg in item.aepimg">
								<li class="item">
									<img class="owl-lazy" :src="" alt=""/>
								</li>
							</template>
						</ul>
						-->

                                    </div>
                                    <span class="date">{{get_date_diff(item.aepreg, '전')}}</span>
                                </div>
                                <template v-for="o_comm in item.o_comm">
                                    <div class="boss">
                                        <p class="pic">
                                            <img :src="'//image.goodchoice.kr'+ o_comm.upath" :alt="o_comm.unick" />
                                        </p>
                                        <strong>{{o_comm.unick}}</strong>
                                        <div class="txt" v-html="o_comm.aep_cmcont.replace(/\n/g, '<br />')"></div>
                                        <span class="date">{{get_date_diff(o_comm.aep_cmreg, '전')}}</span>
                                    </div>
                                </template>
                            </li>
                        </template>
                    </ul>

                    <div id="pagination">
                        <my-pagination></my-pagination>
                    </div>
                </article>
                <!-- //리뷰 -->

            </div>
            <!-- //Content  -->

            <!-- #2 팝업 - 이벤트(호텔) pop_evt();  -->
            <div class="layer pop_full pop_evt">
                <div class="fix_title">
                    진행중인 이벤트
                    <button onclick="close_layer();">닫기</button>
                </div>
                <div class="iscroll_cp">
                    <div class="scroller">

                        <div class="benefit bg_mint">
                            <strong>시간 가는 줄 모르고 보게되는~[넷플릭스 시청]</strong>
                            <div><u><b>[넷플릭스] 객실 혜택</b></u><br />
                                ㆍ넷플릭스 시청 가능<br />
                                (단, 본인 계정으로만 넷플릭스 이용이 가능합니다)<br />
                                <br />
                                <b>[꼭! 알아두세요]</b><br />
                                ㆍ위 혜택은 해당 이벤트 객실 구매시에만 한정 적용됩니다<br />
                                ㆍ<font color="#FF5C5C">한정상품으로 조기 종료될 수 있습니다</font>
                            </div>
                        </div>
                        <div class="benefit bg_mint">
                            <strong>19시에 함께하는 특가! [19시 체크인]</strong>
                            <div><u><b>[레이트버드 19시] 객실 혜택</b></u><br />
                                ㆍ19시 늦은 체크인 특가<br />
                                (19시 이전 입실불가 / 연박 불가)<br />
                                <br />
                                <b>[꼭! 알아두세요] </b><br />
                                ㆍ위 혜택은 해당 이벤트 객실 구매시에만 한정 적용됩니다<br />
                                ㆍ<font color="#FF5C5C">한정상품으로 조기 종료될 수 있습니다</font>
                            </div>
                        </div>
                        <div class="benefit bg_mint">
                            <strong>행복한 하루준비 [13시 늦은퇴실+고층배정]</strong>
                            <div><u><b>[13시 늦은퇴실] 객실 혜택</b></u><br />
                                ㆍ13시 레이트 체크아웃 제공<br />
                                ㆍ고층배정 (15~19층)<br />
                                <br />
                                <b>[꼭! 알아두세요] </b><br />
                                ㆍ위 혜택은 해당 패키지 상품 구매시에만 한정 적용됩니다<br />
                                ㆍ<font color="#FF5C5C">한정상품으로 조기 종료될 수 있습니다</font>
                            </div>
                        </div>

                    </div>
                </div>
            </div>


            <!-- 팝업 객실 상세 -->
            <div class="layer pop_full pop_useinfo" data-room-detail="365709">
                <div class="fix_title">객실 이용 안내<button onclick="close_layer();">닫기</button></div>
                <div class="iscroll_cp scroll_365709">
                    <div class="scroller">

                        <section>
                            <strong>기본정보</strong>
                            <ul class="dot_txt">
                                <li>2인 기준 최대 2인 </li>
                                <li>더블베드 1개</li>
                                <li>객실+욕실 / 5.66평</li>
                            </ul>
                        </section>


                        <section>
                            <strong>편의시설</strong>
                            <ul class="dot_txt">
                                <li>TV, 에어컨, 냉장고, 욕실용품, 샤워가운, 슬리퍼, 헤어드라이기, 네스프레소 머신 & 캡슐 2개, 미네랄워터 </li>
                            </ul>
                        </section>


                        <section>
                            <strong>추가 정보</strong>
                            <ul class="dot_txt">
                                <li>
                                    <font color='#008A7E'>객실 이용시간 당일 09:00~익일 02:00 중 최대 4시간 이용가능 (숙박불가) </font>
                                </li>
                            </ul>
                        </section>


                        <section>
                            <strong>선택 날짜</strong>
                            <ul class="dot_txt">
                                <li>08월 22일 ~ 08월 23일</li>
                            </ul>
                        </section>

                    </div>
                </div>
            </div>
            <div class="layer pop_full pop_useinfo" data-room-detail="365710">
                <div class="fix_title">객실 이용 안내<button onclick="close_layer();">닫기</button></div>
                <div class="iscroll_cp scroll_365710">
                    <div class="scroller">

                        <section>
                            <strong>기본정보</strong>
                            <ul class="dot_txt">
                                <li>2인 기준 최대 2인 </li>
                                <li>싱글베드 2개</li>
                                <li>객실+욕실 / 5.66평</li>
                            </ul>
                        </section>


                        <section>
                            <strong>편의시설</strong>
                            <ul class="dot_txt">
                                <li>TV, 에어컨, 냉장고, 욕실용품, 샤워가운, 슬리퍼, 헤어드라이기, 네스프레소 머신 & 캡슐 2개, 미네랄워터 </li>
                            </ul>
                        </section>


                        <section>
                            <strong>추가 정보</strong>
                            <ul class="dot_txt">
                                <li>
                                    <font color='#008A7E'>객실 이용시간 당일 09:00~익일 02:00 중 최대 4시간 이용가능 (숙박불가) </font>
                                </li>
                            </ul>
                        </section>


                        <section>
                            <strong>선택 날짜</strong>
                            <ul class="dot_txt">
                                <li>08월 22일 ~ 08월 23일</li>
                            </ul>
                        </section>

                    </div>
                </div>
            </div>

            <!-- Footer -->
            <%@include file="../common/footer.jsp" %>

    </div>

    <!-- 상단으로 -->
    <button class="btn_go_top" onclick="moveTop();">상단으로</button>

    <!-- //Wrap -->

    <!-- Body Spinner -->
    <div class="spinner"><span></span></div>

    </div>
</body>

</html>