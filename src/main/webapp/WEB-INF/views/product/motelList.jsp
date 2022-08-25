<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>모텔 &gt; ${not empty param.province ? param.province : provinceName }지역 인기숙소 | 굿초이스</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- css -->
<link href="/css/product.css" rel="stylesheet" />
<link href="/css/list1.css" rel="stylesheet" />
<link rel="stylesheet" href="/css/daterangepicker.min.css">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/4f71b1e252.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
<script type="text/javascript" src="/script/jquery.daterangepicker.min.js"></script>
<script src="/script/common.js"></script>
<script src="/script/productList.js"></script>
</head>
<body>
<%@include file="../common/nav.jsp" %>
<c:set var="province" value="${not empty param.province ? param.province : provinceName }" />
<!-- Wrap -->
<div class="wrap show">
        <!-- Sub Top -->
        <div class="sub_top_wrap">
            <div class="sub_top bg_kong_1">
                <h2>${province }지역편</h2>
                <div class="area">
                    <div class="btn_area"><span>${province }</span>${province } 인기숙소</div>
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
                          <c:forEach items="${regionMap }" var="r">
                           <li>
                             <a href="https://localhost/product/home?province=${r.key }" class="${province eq r.key ? 'fix on':'' }">
                               ${r.key }                      
                             </a>
                           </li>
                           </c:forEach>
                          </ul>
                        </div>
                    </div>
                    <div class="iscroll_02">
                        <div class="scroller">
                        <c:forEach items="${regionMap }" var="r">
                            <ul class="city_child">
                              <li><a href="https://localhost/product/home?province=${r.key }" class="on">${r.key } 인기숙소<span>HOT</span></a></li>
                              <c:forEach items="${r.value }" var="doc">
                              	<li><a href="https://localhost/product/home/${doc['id']}" >${doc['name']}</a></li>
                              </c:forEach>
                        	</ul>
                        </c:forEach>
                        </div>
                    </div>
                </div>

            </div>
            <!-- //Area -->

 <!-- List -->
 <div class="list_wrap">
  <div id="poduct_list_area">
  	<c:set var="today" value="<%= java.time.LocalDate.now().toString() %>" />
  	<c:set var="tomorrow" value="<%= java.time.LocalDate.now().plusDays(1).toString() %>" />
    <ul>
	<c:forEach items="${list }" var="motel">
      <li class="list_2 adcno1">
        <a href="https://localhost/product/detail?houseNo=${motel.no }&date1=${today }&date2=${tomorrow }"
            data-ano="1697" data-adcno="1" data-alat="37.55638875" data-alng="126.9376814" data-distance="0.129" data-affiliate="1">
            <p class="pic">
                <img class="lazy align" loading="lazy"
                     data-original="//image.goodchoice.kr/resize_1000X500x0/adimg_new/1697/1028/ca0c9f3e8bdcdf61ab2e1e3fe030e3f7.jpg"
                     src="/images/roomImgs/${motel.image }" alt="${motel.houseName }"
                     style="margin-top: -159px; display: block;"/>
            </p>
            <div class="stage gra_black_vertical">
                <div class="name">
                                        <strong>${motel.houseName }</strong>
                    <p class="score">
                        <em>${motel.score }</em>&nbsp;<span>${motel.score ge 9.0 ? '추천해요':'만족해요' }</span>&nbsp;(${motel.reviewCount })
                    </p>
                    <c:set var="address" value="${motel.address.split(' ')[1]} ${motel.address.split(' ')[2] }"/>
                    <p>
                        ${address }
                    </p>
                </div>
                <div class="price">
                    <div class="map_html">
                        <p>대실&nbsp;<span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(248,113,111,1);">예약</span>&nbsp;<b><fmt:formatNumber value="${motel.shortPrice }" pattern="#,###" />원</b></p><p>숙박&nbsp;<span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(248,113,111,1);">예약</span>&nbsp;<b><fmt:formatNumber value="${motel.longPrice }" pattern="#,###" />원</b></p>                    </div>
                    <p>대실&nbsp;<span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(248,113,111,1);">예약</span>&nbsp;<b><fmt:formatNumber value="${motel.shortPrice }" pattern="#,###" />원</b></p><p>숙박&nbsp;<span class="build_badge" style="color: rgba(255,255,255,1); background-color: rgba(248,113,111,1);">예약</span>&nbsp;<b><fmt:formatNumber value="${motel.longPrice }" pattern="#,###" />원</b></p>                </div>
            </div>
        </a>
      </li>
      </c:forEach>
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