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
<link href="/css/home.css" rel="stylesheet">
<style>
* {
    outline: 0;
}
@media (min-width: 1024px) {
	.sub_top_wrap {
    height: 211px;
    background: #f7323f;
	}
}
div, h2, p, nav, ul, li {
	margin: 0;
    padding: 0;
    border: 0;
    box-sizing: border-box;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}

@media (min-width: 1024px) {
	.sub_top {
    width: 1024px;
    height: 211px;
    margin: 0 auto;
    padding-top: 72px;
    border-radius: 0;
    background: none;
    position: relative;
	}
}

@media (min-width: 1024px) {
.sub_top h2 {
    display: block;
    margin: 21px 0 0 31px;
    font-size: 38px;
    font-weight: normal;
    letter-spacing: -1px;
    color: #fff;
	}
}

#content {
    overflow: hidden;
}

@media (min-width: 1024px) {
	.my_wrap {
    padding-top: 54px;
	}
}

.sub_wrap {
    min-height: 390px;
}

@media (min-width: 1024px) {
.sub_wrap {
    width: 1024px !important;
    margin: 0 auto 0 auto;
    padding-bottom: 50px;
	}
}

@media (min-width: 1024px) {}
.sub_wrap .sub_title {
    display: none;
	}
}

.sub_wrap .sub_title {
    position: relative;
    height: 44px;
    background: #fff;
    font-size: 18px;
    line-height: 44px;
    text-align: center;
}

@media (min-width: 1024px) {
.sub_wrap nav {
    display: block;
    float: left;
    width: 238px;
    padding-left: 31px;
	}
}

ul, ol, li {
    list-style: none;
}

.sub_wrap nav ul li {
    margin-bottom: 26px;
}

.sub_wrap nav ul li a {
    display: block;
    font-size: 18px;
    color: rgba(0,0,0,0.56);
}

a {
    text-decoration: none;
}

a, input, button, div, li, textarea, form, label, select {
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}

@media (min-width: 1024px) {
.sub_wrap .align_rt {
    float: right;
    width: 724px;
    margin-right: 31px;
	}
}

.mypage {
    padding: 0 16px;
    font-size: 16px;
    overflow: hidden;
}

.mypage .bot_link {
    margin: 30px 0;
}

.mypage .bot_link a {
    display: inline-block;
    color: rgba(0,0,0,0.87);
    text-decoration: underline;
}

.active {
	font-size: 18px;
    font-weight: bold;
    color: rgb(230,28,81);
}

</style>
</head>
<body>
<header class>
	<section>
		<h1>
			<a class="" href="/" title="굿초이스">여기어때</a>
		</h1>
		
		<ul class="gnb" style="display:block; padding:30px;">
			<li>
				<a href="">내주변</a>
			</li>
			<li>
				<a href="">예약내역</a>
			</li>
			
		<li class="dropdown">
		      <button class="dropbtn" style="padding: 3px 0px 0px 0px;"> 
		        	<span class="dropbtn_icon">더보기</span>
		      </button>
		      	<ul class="dropdown-content" display: none; opacity: 1;>
			        <li>
			        <a href="#" style="color: rgba(0,0,0,0.87);">더보기</a>
			        </li>
			        <li>
			        <a href="#" style="color: rgba(0,0,0,0.87);">이벤트</a>
			        </li>
			        <li>
			        <a href="#" style="color: rgba(0,0,0,0.87);">1:1 문의</a>
			        </li>
			        <li>
			        <a href="#" style="color: rgba(0,0,0,0.87);">약관 및 정책</a>
			        </li>
		     	</ul>
		      
			     	<li>
					<a href="">로그인</a>
					</li>
		</li>	
    </ul>				
	</section>
</header>
<div class="sub_top_wrap">
	<div class="sub_top bg_kong_2">
		<h2>내정보</h2>
	</div>
	<div id="content" class="sub_wrap my_wrap">
		<p class="sub_title">내 정보 관리</p>
		<nav>
			<ul>
				<li>
					<a class="" href="/point">포인트</a>
				</li>
				<li>
					<a class="" href="/coupon">쿠폰함</a>
				</li>
				<li>
					<a class="active" href="/reservationlist">예약 내역</a>
				</li>
				<li>
					<a class="" href="/myinfo">내 정보 관리</a>
				</li>
			</ul>
		</nav>
		<!-- 예약 상세보기 섹션 -->
		<div>
			<!-- 예약 정보 -->
			<div>
			<div>
			<p>(예약 상태)</p><!-- 예약완료/예약취소 -->
			<table>
				<tr>
					<th>(예약 숙소 명칭)</th>
				</tr>
				<tr>
					<td>(예약 상품 명칭, *박)</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>체크인</td>
					<td>(**.** *요일 - **.** *요일 **:00)</td>
				</tr>
				<tr>
					<td>체크아웃</td>
					<td>(**.** *요일 - **.** *요일 **:00)</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>예약번호</td>
					<td>(*********)</td><!-- 9자리, 테이블 확인해야 함 -->
				</tr>
				<tr>
					<td>예약자 이름</td>
					<td>(***)</td>
				</tr>
				<tr>
					<td>안심번호</td> <!-- 안심번호 미구현시 일반 전화번호 출력 -->
					<td>(010-****-****)</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>휴대본 번호 010-****-****은(는)</td>
				</tr>
				<tr>
					<td>안심번호로 숙소에 전송되며, 퇴실후 7일간 보관됩니다.</td>
				</tr>
			</table>
			</div>
				<hr>
			<!-- 결제 정보 -->
			<div>
				<table>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>결제정보</td>
					</tr>
					<tr>
						<td>총결제금액</td>
						<td>(결제금액)원</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
				</table>
				<hr>
			</div>
			<div>
				<p> (****년 **월 **일) 18:00까지 무료 취소 가능합니다.</p> <!-- 예약전일까지 -->
				<input type="button" onclick="" value="결제취소">
			</div>
		</div>
		</div>
	</div>
</div>
</body>
</html>