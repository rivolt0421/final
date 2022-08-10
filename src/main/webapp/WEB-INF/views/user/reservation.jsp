<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link href="/css/userinfo.css" rel="stylesheet">
<script src="/script/common.js"></script>
<script src="https://kit.fontawesome.com/4f71b1e252.js" crossorigin="anonymous"></script>
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
<%@ include file="../common/nav.jsp" %>
<div class="sub_top_wrap">
	<div class="sub_top bg_kong_2">
		<h2>내정보</h2>
	</div>
	<div id="content" class="sub_wrap my_wrap">
		<p class="sub_title">내 정보 관리</p>
		<nav>
			<ul>
								<li>
					<a class="" href="/user/point">포인트</a>
				</li>
				<li>
					<a class="" href="/user/couponbox">쿠폰함</a>
				</li>
				<li>
					<a class="active" href="/user/reservations">예약 내역</a>
				</li>
				<li>
					<a class="" href="/user/myinfo">내 정보 관리</a>
				</li>
			</ul>
		</nav>
		
		<div class="align_rt">
			<div class="mypage">
				<section class="top_area">
	
				</section>
				<p class="bot_link">
					<a href="">비밀번호 변경</a> >
				</p>
			</div>
		</div>
	</div>
</div>
</body>
</html>