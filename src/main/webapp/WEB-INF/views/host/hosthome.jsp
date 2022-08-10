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
<title>여기어때 호스트하우스</title>
<link href="/favicon.ico" rel="icon" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/variable/pretendardvariable.css" />
<style type="text/css">
	body {background-color: #eee;}
	.bg-image {height: 650px; border-radius: 5px; background-image: url("/images/host/mainspot_image.png"); background-size: cover;}
	#room-reserve {background-color: #546E7A; color: #fff;}
	#room-reserve h4 a {color: #fff; text-decoration: none;}
</style>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container mt-4">
	<main class="row border shadow mb-3 rounded">
		<%@ include file="common/registerprogress.jsp" %>
	</main>
		<!-- 이미지 -->
		<div class="row mb-4 rounded" >
			<div class="col bg-image"></div>
		</div>
	<div class="row">
		<!-- 공지사항 -->
		<div class="col-4 shadow border bg-white rounded">
			<div class=" py-3 d-flex justify-content-between">
				<div >
					<a href="/hostnotice" class="text-decoration-none text-dark fs-5 fw-bold">공지사항</a>
				</div>
				<div>
					<a href="/hostnotice"  class="text-decoration-none text-dark">더보기</a>
				</div>
			</div>
		</div>
		<div class="col-8 pe-0">
			<!-- 예약 객실 판매 / 준비 중입니다. -->
			<div class="d-flex justify-content-between mb-3 bg-white">
				<div class="border shadow w-100 p-3 me-3 rounded" id="room-reserve">
					<h4><a href="#" class="  fs-5 fw-bold">예약 객실 판매 &gt;</a></h4>
					<div class="row" id="">
						<div class="col-4 text-center" id="reserve-count-1">0</div>
						<div class="col-4 text-center" id="reserve-count-2">0</div>
						<div class="col-4 text-center" id="reserve-count-3">0</div>
					</div>
					<div class="row">
						<div class="col-4 text-center">오늘</div>
						<div class="col-4 text-center">이번주</div>
						<div class="col-4 text-center">이번달</div>
					</div>
				</div>
				<div class="border shadow w-100 p-3 bg-white rounded">
					<!-- 준비중! -->
					<h4><a href="#"  class="text-decoration-none text-dark  fs-5 fw-bold">준비중입니다.</a></h4>
					<div>
					</div>
				</div>
			</div>
			<!-- 입실 에정 고객정보 -->
			<div class="border shadow p-3 bg-white rounded" >
				<div class="row mb-3">
					<div class="col-6" id="reserve-customer">
						<h4><a href="#"  class="text-decoration-none text-dark fs-5 fw-bold">입실 예정 고객 정보</a> <small class="text-muted">2022.08.01</small> </h4>
					</div>
					<div class="col-6 text-end">
						<a href="#"  class="text-decoration-none text-dark "> <span>더보기</span></a>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<table class="table">
							<thead>
								<tr>
									<th>예약번호</th>
									<th>객실명</th>
									<th>예약자</th>
									<th>전화번호</th>
									<th>사용기간</th>
									<th>예약확인</th>
								</tr>
							</thead>
							<tbody class="text-center">
								<tr>
									<td colspan="6">예약 내역이 없습니다.</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jsp" %>
</body>
</html>