<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="stickey-top">
	<header style="background-color: #00BfA4; height: 50px;">
		<div class="container pt-2">
			<div class="row d-flex justify-content-between text-white fw-bolder">
				<div class="col-6 text-start">
					<ul class="list-inline">
						<li class="list-inline-item me-3 fw-bold">대표자님 안녕하세요</li>
						<li class="list-inline-item fw-bold">예약문의 1544-4087</li>
					</ul>
				</div>
				<div class="col-6 text-end">
					<ul class="list-inline">
						<li class="list-inline-item fw-bold me-3"><a href="/mypage" class="text-decoration-none text-white">마이페이지</a></li>
						<li class="list-inline-item fw-bold"><a href="" class="text-decoration-none text-white">로그아웃</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<nav class="bg-white" style="height: 80px; border: 1px solid #eee;">
		<div class="container">
			<div class="row" >
				<div class="col-2">
					<div id="logo-div">
						<a href="/hosthome">
							<img src="/images/host/logosample.PNG" style="width: 160px;">
						</a>
					</div>
				</div>
				<div class="col-8 offset-md-1 pt-3">
					<div class="col-10 d-flex justify-content-between">
						<div class="dropdown">
							<a class="btn btn-outline-dark dropdown-toggle px-5 py-2 rounded-0 fs-5 fw-bold"  href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							 숙소관리
							</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/mypage">소개 작성</a></li>
								<li><a class="dropdown-item" href="/form1">이용규칙 관리</a></li>
								<li><a class="dropdown-item" href="/form2">객실 관리</a></li>
								<li><a class="dropdown-item" href="/form3">리뷰 관리</a></li>
							</ul>
						</div>
						<div class="dropdown">
							<a class="btn btn-outline-dark dropdown-toggle px-5 py-2 rounded-0 fs-5 fw-bold" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							 예약관리
							</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/realtimereserve">실시간 예약 관리</a></li>
								<li><a class="dropdown-item" href="/reserve">예약 내역</a></li>
								<li><a class="dropdown-item" href="/saleshistory">매출 내역</a></li>
							</ul>
						</div>
						<div class="dropdown">
							<a class="btn btn-outline-dark dropdown-toggle px-5 py-2 rounded-0 fs-5 fw-bold" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							 고객행복센터
							</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/hostnotice">공지사항</a></li>
								<li><a class="dropdown-item" href="/hostquestion">자주 묻는 질문</a></li>
								<li><a class="dropdown-item" href="/serviceterms">서비스 약관</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>
</div>

