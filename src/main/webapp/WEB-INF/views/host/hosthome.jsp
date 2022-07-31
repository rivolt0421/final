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
<title>호스트 하우스</title>
<link href="/favicon.ico" rel="icon" type="image/x-icon">
<style type="text/css">
	body {background-color: #EBEBEB;}
	.container {width: 1000px;}
	
	#main-top {height: 300px; border: 1px solid #aaa; border-radius: 5px; margin: 30px 0; background-color: #fff;}
	#main-top h3 {font-size: 20px; font-weight: bold; margin: 0 auto; text-align: center; margin: 30px 0;}
	#main-top a {}
	#main-top #progress li {color: #0000008f; font-weight: bold; text-align: center;}
	#main-top li {width: 20%; height: 50px;}
	
	#main-middle {height: 500px; border: 1px solid #aaa; border-radius: 5px; background-image: url("/images/mainspot_image.png"); background-size: cover;}
	
	#main-bottom {height: 350px;}
	#main-bottom h4 {font-size: 15px; font-weight: bold; margin: 20px 0;}
	
	#room-reserve {background-color: #546E7A; height: 120px; border-radius: 5px;}
	#room-reserve h4 a, li {color: #fff;}
	#reserve-customer
</style>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container">
	<!-- 숙소 등록 부분 -->
	<div class="row" id="main-top">
		<div class="row">
			<div class="col">
				<h3>아래 정보를 모두 입력하시고 숙소 등록을 완료하세요.</h3>
				<div class="text-center">
					<a href="#" class="btn btn-danger"> 업체 정보 등록 &gt;</a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col" id="progress">
				<ul>
					<li>
						<img src="/images/register1.png">
						<span>마이페이지<br>업체 정보 등록</span>
					</li>
					<li>
						<img alt="" src="">
						<span>소개작성</span>
					</li>
					<li>
						<img alt="" src="">
						<span>이용규칙 관리</span>
					</li>
					<li>
						<img alt="" src="">
						<span>객실관리</span>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- 이미지 -->
	<div class="row" id="main-middle">
		<div class="col">
		</div>
	</div>
	
	<div class="row" id="main-bottom">
		<!-- 공지사항 -->
		<div class="col-4">
			<div>
				<h4><a href="#">공지사항</a></h4>
				
			</div>
		</div>
		<div class="col-6">
			<!-- 예약 객실 판매 / 준비 중입니다. -->
			<div class="row">
				<div class="col-6" id="room-reserve">
					<h4><a href="#">예약 객실 판매 &gt;</a></h4>
					<div class="row" id="room-reserve">
						<ul>
							<li>0</li>
							<li>0</li>
							<li>0</li>
						</ul>
					</div>
					<div class="row">
						<ul>
							<li>오늘</li>
							<li>이번주</li>
							<li>이번달</li>
						</ul>
					</div>
				</div>
				<div class="col-6">
					
				</div>
			</div>
			<!-- 입실 에정 고객정보 -->
			<div class="row">
					<div class="col" id="reserve-customer">
						<h4>
							<a href="#">입실 예정 고객 정보</a>
						</h4>
					</div>
				</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jsp" %>
</body>
</html>