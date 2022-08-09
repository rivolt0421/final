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
<link href="/css/common.css" rel="stylesheet">
<link href="/favicon.ico" rel="icon" type="image/x-icon">
<style>

</style>
</head>
<body>
<link href="/css/mypage.css" rel="stylesheet">
<%@ include file="../common/nav.jsp" %>
<div class="wrap show">
	<div class="sub_top_wrap">
		<div class="sub_top bg_kong_2">
			<h2>내정보</h2>
		</div>
	</div>
	
	<div id="content" class="sub_wrap my_wrap">
	    <nav>
	        <ul>
	            <li><a class="" href="/user/point" style="text-decoration: none;">포인트</a></li>
	            <li><a class="" href="/user/couponbox" style="text-decoration: none;">쿠폰함</a></li>
	            <li><a class="active" href="/user/reservation" style="text-decoration: none;">예약 내역</a></li>
	            <li><a class="" href="/user/myinfo" style="text-decoration: none;">내 정보 관리</a></li>
	        </ul>
   	  </nav>
		<div class="align_rt" data-v-50bfe504=""><div class="list_none" style="display: block" data-v-50bfe504="">
                예약 내역이 없습니다.
                <b data-v-50bfe504="">최저가로 예약 가능한<br data-v-50bfe504="">숙소들을 지금 만나세요!</b>
                <p data-v-50bfe504=""><a href="/" class="btn_red" data-v-50bfe504="">다양한 숙소 보러가기</a></p></div></div>
	</div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>