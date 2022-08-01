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
<link href="/favicon.ico" rel="icon" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/variable/pretendardvariable.css" />

<link href="/css/hosthome.css" rel="stylesheet">
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
	
	<div class="row g-3" id="main-bottom">
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
		<div class="col-8">
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
				<div class="col-6 border shadow">
					<!-- 준비중! -->
					<h4><a href="#">빈 칸 &gt;</a></h4>
					<div>
					</div>
				</div>
			</div>
			<!-- 입실 에정 고객정보 -->
			<div class="border shadow" id="reserve-info">
				<div class="row">
					<div class="col-6" id="reserve-customer">
						<h4>
							<a href="#">입실 예정 고객 정보</a>
							<span>2022.08.01</span>
						</h4>
					</div>
					<div class="col-6 text-end">
						<a href="#">
							<span>더보기 &gt; </span>
						</a>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<table id="hosthome-table">
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
							<tbody>
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