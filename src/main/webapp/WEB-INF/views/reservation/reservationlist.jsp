<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>여행할때 굿초이스</title>
<link href="/css/font.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">
<link href="/favicon.ico" rel="icon" type="image/x-icon">

<link href="/css/home.css" rel="stylesheet">
<script src="/script/common.js"></script>
<script src="https://kit.fontawesome.com/4f71b1e252.js" crossorigin="anonymous"></script>

<style>
.container {
	display: block;
    justify-content: center;
    align-items: center;
    margin-left:30%; margin-top:0%; height:auto; 
}

.reservation {
	width: 100px;
    height: 100px;
	padding: 1%;
    margin: 1%;
    margin-bottom: 70px;
    
}

.card {
	width: 25rem;
	height: 30vw;
    object-fit: cover;
    text-align: center;
    height:auto;
}

.confirmation {
	background:red;
	width:60px;
	color:white;
	margin-left: 42%;
	margin-bottom:5px;
}

.useandcancel {
	background:lightgrey;
	width:60px;
	margin-left: 42%;
	margin-bottom:5px;
}
</style>
</head>
<body>
<%@ include file="../common/nav.jsp" %>
<link href="/css/mypage.css" rel="stylesheet">
<div class="wrap show">
	<div class="sub_top_wrap">
		<div class="sub_top bg_kong_2">
			<h2>내정보</h2>
		</div>
	</div>
	
	<div id="content" class="sub_wrap my_wrap">
	    <div class="side">
	        <ul style="padding-left: 0rem;">
	            <li><a class="" href="/user/point" style="text-decoration: none;">포인트</a></li>
	            <li><a class="" href="/user/couponbox" style="text-decoration: none;">쿠폰함</a></li>
	            <li><a class="active" href="/user/reservation" style="text-decoration: none;">예약 내역</a></li>
	            <li><a class="" href="/user/myinfo" style="text-decoration: none;">내 정보 관리</a></li>
	        </ul>
   	  	</div>
		
		<div class="container">
			<div class="reservation">
				<p><strong>예약 내역</strong></p>
				<!--이미지/예약상태/숙소명칭/체크인-체크아웃/기간(숙박일수)-->
				<div class="card">
				  <img src="?.png" alt="room">
				  	<span class="confirmation">예약확정</span>
				    <h4><b>${reservation.houseName }</b></h4>
				    <p>체크인: ${reservation.checkInDate } (*)박</p>
				    <p>체크인: (**.** *요일 **:00) (*)박</p>
				  </div>
			</div>
			<div class="reservation">
				<p><strong>이용 내역</strong></p>
				<!--이미지/예약상태/숙소명칭/체크인-체크아웃/기간(숙박일수)-->
				<div class="card">
				  <img src="?.png" alt="room">
				  	<span class="useandcancel">이용완료</span>
				    <h4><b>${reservation.houseName }</b></h4>
				    <p>${reservation.checkInDate } - ${reservation.checkOutDate } (*)박</p>
				    <p>(**.** *요일) - (**.** *요일) (*)박</p>
				    <br>
				    <a href=""><p style="color:green">다시 예약</p></a>
				 </div>
			</div>
			<div class="reservation">
				<p><strong>취소 내역</strong></p>
				<!--이미지/예약상태/숙소명칭/체크인-체크아웃/기간(숙박일수)/오늘일자로 설정된 동일 숙소의 예약링크(reservationform)-->
				<div class="card">
				  <img src="?.png" alt="room">
				  	<span class="useandcancel">예약취소</span>
				    <h4><b>${reservation.houseName }</b></h4>
				    <p>${reservation.checkInDate } - ${reservation.checkOutDate } (*)박</p>
				    <p>(**.** *요일) - (**.** *요일) (*)박</p>
				    <br>
				    <a href=""><p style="color:green">다시 예약</p></a>
				 </div>
			</div>
			
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>