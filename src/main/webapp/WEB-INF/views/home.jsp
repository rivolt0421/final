<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>여행할때 굿초이스</title>
<!-- css -->
<link href="/css/home.css" rel="stylesheet">
<link href="/css/swiper.css" rel="stylesheet">

<!-- Link Swiper's CSS -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"
    />
<!-- script -->
<script src="/script/common.js"></script>
<!-- fontawesome -->
<script src="https://kit.fontawesome.com/4f71b1e252.js" crossorigin="anonymous"></script>

<!-- Demo styles -->
<style>
.swiper {
  width: 100%;
  height: 100%;
}

.swiper-slide {
  text-align: center;
  font-size: 18px;
  background: #fff;

  /* Center slide text vertically */
  display: -webkit-box;
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  -webkit-justify-content: center;
  justify-content: center;
  -webkit-box-align: center;
  -ms-flex-align: center;
  -webkit-align-items: center;
  align-items: center;
}

.swiper-slide img {
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
}
</style>
</head>
<body>
<%@ include file="common/nav.jsp" %>
    <div id="content">
		<div class="main_spot">여행할때 여기어때</div>
		
		<!-- Link -->
		<div class="main_link">
			<ul>
				<li><a href="/product/home/1" menu-link="1"><span class="ico_01">&nbsp;</span><p>모텔</p></a></li>
				<li><a href="/product/search/2" menu-link="2"><span class="ico_02">&nbsp;</span><p>호텔·리조트</p></a></li>
				<li><a href="#" menu-link="3"><span class="ico_03">&nbsp;</span><p>펜션</p></a></li>
				<li><a href="#" menu-link="6"><span class="ico_04">&nbsp;</span><p>게스트하우스</p></a></li>
				<li><a href="#" menu-link="5"><span class="ico_05">&nbsp;</span><p>캠핑·글램핑</p></a></li>
				<li><a href="#" menu-link="7"><span class="ico_06">&nbsp;</span><p>한옥</p></a></li>
				<li><a href="#"><span class="ico_07">&nbsp;</span><p>내주변</p></a></li>
				<li><a href="#"><span class="ico_08">&nbsp;</span><p>페이백</p></a></li>
			</ul>
		</div>
		<!-- //Link -->

		<!-- Recommend -->
		<div class="recommend">
			<h2>여기어때 소식</h2>
			<ul>
				<li><a href="#" target="_blank"><img src="//image.goodchoice.kr/images/web_v3/b2b_banner.png" alt="여기어때 비즈니스"><strong>여기어때 비즈니스</strong>출장부터 복지까지<br>여기어때 비즈니스로 스마트하게</a></li>
				<li><a href="#" target="_blank"><img src="//image.goodchoice.kr/images/web_v3/re_jalnan.png" alt="여기어때 잘난체"><strong>여기어때 서체 출시</strong>젊고 당당한 여기어때 잘난체<br>지금 다운로드 받으세요!</a></li>
			</ul>
		</div>
		<!-- //Recommend -->

		<!-- App Down -->
		<div class="appdown">
			<p>앱 다운 받고 <b>더 많은 혜택</b> 받으세요</p>
			<div>
				<a href="#" class="down_and" target="_blank" title="구글플레이 새창"><img src="//image.goodchoice.kr/images/web_v3/banner_and.png" alt="GET IT ON Google Play"></a>
				<a href="#" class="down_ios" target="_blank" title="앱스토어 새창"><img src="//image.goodchoice.kr/images/web_v3/banner_ios.png" alt="Download on the App Store"></a>
			</div>
		</div>
		<!-- //App Down -->

		<!-- EVENT -->
		<div class="event_main">
			<h2>이벤트</h2>
			    <div class="swiper mySwiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="//image.goodchoice.kr/images/cms/home_img/3c13f7bf4ea5ef67729fa285aca7896f.jpg" ></div>
						<div class="swiper-slide"><img src="//image.goodchoice.kr/images/cms/home_img/418956ddf9e4354daabea5f81c63b7e3.jpg" ></div>
						<div class="swiper-slide"><img src="//image.goodchoice.kr/images/cms/home_img/67223336700c3b16456fe8279cac2bcc.png" ></div>
						<div class="swiper-slide"><img src="//image.goodchoice.kr/images/cms/home_img/bb4e3dec46c76672638e8c42bb3da6e5.png" ></div>
						<div class="swiper-slide"><img src="//image.goodchoice.kr/images/cms/home_img/fbaabc9a7da7a4f20e1b43c44da60b34.jpg" ></div>
					</div>
					<div class="swiper-pagination"></div>
				</div>	
		</div>
		<!-- //EVENT -->

		<!-- Ad -->
		<div class="ad_ask">
			<!-- Pc -->
			<ul class="pc">
				<li>
					<a href="#" onclick="alert('신규 업체 가입 문의는 고객센터 (1544-4087) 로 연락해주세요'); return false;" target="_blank">
						<img src="//image.goodchoice.kr/images/web_v3/ad_01_171013.png" alt="여기어때 광고 신청하기">
					</a>
				</li>
				<li><a href="#" target="_blank"><img src="//image.goodchoice.kr/images/web_v3/ad_02_171013.png" alt="게스트 하우스 숙소 등록하기"></a></li>
			</ul>
		</div>
		<!-- //Ad -->

        <footer>
            <div class="align">
                <ul class="link">
                    <li><a href="#" target="_blank">회사소개</a><span>|</span></li>
                    <li><a href="#" data-default="term">이용약관</a><span>|</span></li>
                    <li><a href="#" data-default="privacy">개인정보처리방침</a><span>|</span></li>
                    <li><a href="#" data-default="consumer">소비자 분쟁해결 기준</a><span>|</span></li>
                    <li><button type="button" onclick="pop_licence();return false;">사업자 정보확인</button><span>|</span></li>
                    <li><a href="#" target="_blank">여기어때 마케팅센터</a><span>|</span></li>
                    <li><a href="#" target="_blank">액티비티 호스트센터</a><span>|</span></li>
                    <li><a href="#" target="_blank">HOTEL 여기어때</a><span>|</span></li>
                    <li><a href="#">콘텐츠산업진흥법에의한 표시</a></li>
                    <a href="https://github.com/rivolt0421/final" target="_blank"><i class="fa-brands fa-github"></i></a>
                </ul>
                <p><b>고객행복센터 1577-1370</b><span>오전 9시 - 오후 6시</span></p>
                <address>
                    <span>(주) 굿초이스컴퍼니</span>
                    주소 : 서울 마포구 양화로6길 9 | 대표이사 : 홍길동 | 사업자등록번호: 000-00-00000<br>
                    통신판매번호 : 2022-서울종로-00000 | 관광사업자 등록번호: 제0000-00호 | 전화번호 : 1577-1370 | 전자우편주소 : help@imw1370.kr<br>
                    <span class="order">(주) 굿초이스컴퍼니는 유령회사로서 통신판매의 당사자가 아니며, 상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 누구에게도 없습니다.</span><br>
                    Copyright GoodChoice COMPANY Corp. No rights reserved.
                </address>
            </div>   
        </footer>
	</div>
	<!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 2500,
          disableOnInteraction: false,
        },
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
    </script>
</body>
</html>