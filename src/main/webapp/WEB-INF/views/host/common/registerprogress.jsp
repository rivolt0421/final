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
<title>Insert title here</title>
<style type="text/css">

	
/*
	#main-top #progress li {color: #0000008f; font-weight: bold; text-align: center;}
	#main-top li {width: 20%; height: 50px;}
	#main-top #progress img {background-color: #eee; border-radius: 70px; width: 65px; height: 65px;}
	#main-top  .dotsSet {width: 80px;}
	*/
	
	#main-top #progress {padding: 0 60px;}
	#main-top #progress img {background-color: #eee; border-radius: 70px; width: 65px; height: 65px;}
</style>
</head>
<body>
	<!-- 숙소 등록 부분 -->
	<div class="row" id="main-top">
		<div class="col pt-3">
			<h3 class="text-center fw-bold mt-5">아래 정보를 모두 입력하시고 숙소 등록을 완료하세요.</h3>
			<div class="text-center mt-5 mb-5">
				<a href="#" class="btn btn-danger btn-lg"> 업체 정보 등록 &gt;</a>
			</div>
		</div
	</div>
	<div class="row" id="progress">
		<div class="col text-center">
			<img src="/images/host/register1.png">
			<p class="fw-bold mt-2">마이페이지<br>업체 정보 등록</p>
		</div>
		<div class="col text-center p-4">
			<i class="bi bi-circle-fill text-danger small"></i>
			<i class="bi bi-circle-fill text-danger small"></i>
			<i class="bi bi-circle-fill text-danger small"></i>
		</div>
		<div class="col text-center">
			<img src="/images/host/register2.png">
			<p class="fw-bold mt-2">소개작성</p>
		</div>
		<div class="col text-center p-4">
			<i class="bi bi-circle-fill text-secondary small"></i>
			<i class="bi bi-circle-fill text-secondary small"></i>
			<i class="bi bi-circle-fill text-secondary small"></i>
		</div>
		<div class="col text-center">
			<img src="/images/host/register3.png">
			<p class="fw-bold mt-2">이용규칙 관리</p>
		</div>
		<div class="col text-center p-4">
			<i class="bi bi-circle-fill text-secondary small"></i>
			<i class="bi bi-circle-fill text-secondary small"></i>
			<i class="bi bi-circle-fill text-secondary small"></i>
		</div>
		<div class="col text-center">
			<img src="/images/host/register4.png">
			<p class="fw-bold mt-2">객실관리</p>
		</div>
	</div>
</div>
</body>
</html>