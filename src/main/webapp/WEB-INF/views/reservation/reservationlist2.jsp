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
.container {
	display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}

.reservation {
	width: 100px;
    height: 100px;
	padding: 1%;
    margin: 1%;
    margin-bottom: 50px;
}

.card {
	width: 25rem;
	height: 20vw;
    object-fit: cover;
    text-align: center;
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
<%@ include file="reservationbase.jsp" %>
	<div class="container">
			<div class="reservation">
				<p><strong>예약 내역</strong></p>
				<!--이미지/예약상태/숙소명칭/체크인-체크아웃/기간(숙박일수)-->
				<div class="card">
				  <img src="?.png" alt="room">
				  	<span class="confirmation">예약확정</span>
				    <h4><b>(숙소명칭)</b></h4>
				    <p>체크인: (**.** *요일 **:00) (*)박</p>
				  </div>
			</div>
			<div class="reservation">
				<p><strong>이용 내역</strong></p>
				<!--이미지/예약상태/숙소명칭/체크인-체크아웃/기간(숙박일수)-->
				<div class="card">
				  <img src="?.png" alt="room">
				  	<span class="useandcancel">이용완료</span>
				    <h4><b>(숙소명칭)</b></h4>
				    <p>(**.** *요일) - (**.** *요일) (*)박</p>
				 </div>
			</div>
			<div class="reservation">
				<p><strong>취소 내역</strong></p>
				<!--이미지/예약상태/숙소명칭/체크인-체크아웃/기간(숙박일수)/오늘일자로 설정된 동일 숙소의 예약링크(reservationform)-->
				<div class="card">
				  <img src="?.png" alt="room">
				  	<span class="useandcancel">예약취소</span>
				    <h4><b>(숙소명칭)</b></h4>
				    <p>(**.** *요일) - (**.** *요일) (*)박</p>
				    <br>
				    <a href=""><p style="color:green">다시 예약</p></a>
				 </div>
			</div>
		</div>
</div>
</body>
</html>