<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>호스트 하우스</title>
<style type="text/css">
	body {background-color: #EBEBEB;}
	a {text-decoration: none; color: #000;}
	ul, ol, li {list-style: none;}
	.container {width: 1000px;}
	
	#main-middle {height: 650px; border: 1px solid #aaa; border-radius: 5px; background-image: url("/resources/images/host/mainspot_image.png"); background-size: cover;}
	
	#main-bottom {height: 350px;}
	#main-bottom h4 {font-size: 15px; font-weight: bold; margin: 20px 0;}
	
	#notice-preview {padding: 20px;}
	#notice-preview a {text-decoration: none; color: #000;}
	#notice-top {border-bottom: 1px solid #eee; padding-bottom: 20px;}
	#room-reserve {background-color: #546E7A; height: 180px; border-radius: 5px; padding: 10px 20px;}
	#room-reserve h4 a, li {color: #fff;}
	#room-reserve h4 {font-size: 18px;}
	#room-reserve #reserve-count{font-size: 45px; color: #fff;}
	#reserve-customer
</style>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container mt-4">
	<div class="border shadow mb-4 p-3">
		<%@ include file="common/registerprogress.jsp" %>
	</div>
	<!-- 이미지 -->
	<div class="row mb-4" id="main-middle">
		<div class="col">
		</div>
	</div>
	
	<div class="row" id="main-bottom">
		<!-- 공지사항 -->
		<div class="col-4 border shadow" id="notice-preview">
			<div class="row" id="notice-top">
				<div class="col-6 fs-5 fw-bold">
					<a href="">공지사항</a>
				</div>
				<div class="col-6 text-end">
					<a href="">더보기</a>
				</div>
			</div>
		</div>
		<div class="col-6">
			<!-- 예약 객실 판매 / 준비 중입니다. -->
			<div class="row">
				<div class="col-6" id="room-reserve">
					<h4><a href="#">예약 객실 판매 &gt;</a></h4>
					<div class="row" id="">
						<div class="col-4 text-center" id="reserve-count">0</div>
						<div class="col-4 text-center" id="reserve-count">0</div>
						<div class="col-4 text-center" id="reserve-count">0</div>
					</div>
					<div class="row">
						<div class="col-4 text-center">오늘</div>
						<div class="col-4 text-center">이번주</div>
						<div class="col-4 text-center">이번달</div>
					</div>
				</div>
				<div class="col-6">
					<!-- 준비중입니다! -->
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