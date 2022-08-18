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
<title>Insert title here</title>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container">
	<div class="border shadow mt-4 rounded">
		<div class="row mt-4 mx-3">
			<div class="col">
				<h3>예약관리 > 매출내역</h3>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<ul class="nav nav-tabs">
					<li class="nav-item">
						<a class="nav-link ${empty param.cat ? 'active' : '' }" href="/saleshistory">예약완료</a>
					</li>
					<li class="nav-item">
						<a class="nav-link ${param.cat eq '1' ? 'active' : '' }" href="/saleshistory?cat=1">예약대기</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 예약 완료 -->
		<div class="row">
			<div class="col">
				<div class="row">
					<div class="col-6">
						<div>
							<div>시작</div>
							<div>
								<select>
									<option>1월</option>
									<option>2월</option>
									<option>3월</option>
									<option>4월</option>
									<option>5월</option>
									<option>6월</option>
									<option>7월</option>
									<option>8월</option>
									<option>9월</option>
									<option>10월</option>
									<option>11월</option>
									<option>12월</option>
								</select>
							</div>
						</div>
						<div>
							<select>
								<option>2010</option>
								<option>2011</option>
								<option>2012</option>
								<option>2013</option>
								<option>2014</option>
								<option>2015</option>
								<option>2016</option>
								<option>2017</option>
								<option>2018</option>
								<option>2019</option>
								<option>2020</option>
								<option>2021</option>
								<option>2022</option>
							</select>
						</div>
					</div>
					<div class="col-6">
						<div>
							<div>종료</div>
							<div>
								<select>
									<option>1월</option>
									<option>2월</option>
									<option>3월</option>
									<option>4월</option>
									<option>5월</option>
									<option>6월</option>
									<option>7월</option>
									<option>8월</option>
									<option>9월</option>
									<option>10월</option>
									<option>11월</option>
									<option>12월</option>
								</select>
							</div>
						</div>
						<div>
							<select>
								<option>2010</option>
								<option>2011</option>
								<option>2012</option>
								<option>2013</option>
								<option>2014</option>
								<option>2015</option>
								<option>2016</option>
								<option>2017</option>
								<option>2018</option>
								<option>2019</option>
								<option>2020</option>
								<option>2021</option>
								<option>2022</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			<div class="text-center my-3">
				<h5>예약 완료 금액</h5>
			</div>
		</div>
		
		<!-- ㅇㅖ약 대기 -->
		<div class="row">
			<div class="col">
				<div class="row">
					<div class="col">
						<h5>입금 예정 금액 : </h5>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<table class="table m-3">
							<thead class="">
								<tr>
									<th>숙소명</th>
									<th>객실명</th>
									<th>예약자명</th>
									<th>연락처</th>
									<th>취소 여부</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>신라스테이</td>
									<td>신라스테이</td>
									<td>홍길동</td>
									<td>010-1111-1111</td>
									<td>진행중</td>
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