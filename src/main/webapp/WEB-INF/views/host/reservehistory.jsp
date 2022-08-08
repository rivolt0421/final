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
<title>여기어때 호스트하우스</title>
<style type="text/css">
	#cal_top a {color: #000;}
	#cal_top span {font-size: 45px;}

	.grid {display: grid; grid-template-columns: repeat(7, 1fr); grid-gap: 5px;}
	.grid div {border: 1px solid #666; text-align: center;}
</style>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container">
	<div class="border shadow mt-4">
		<div class="row mt-4 mx-3">
			<div class="col">
				<h3 class="fw-bold fs-5">예약관리 > 예약 내역</h3>
			</div>
		</div>
		<!-- 캘린더 (년)월 이동바 -->
		<div class="row">
			<div class="col text-center" id="cal_top">
				<a href="#"><span id="prev_month">&lt; </span></a>
				<span id="cal_year">2022.</span>
				<span id="cal_month">08</span>
				<a href="#"><span id="next_month"> &gt;</span></a>
			</div>
		</div>
		<!-- 캘린더 -->
		<div class="px-5">
			<table class="table table-bordered">
				<colgroup>
					<col width="14.28571%">
					<col width="14.28571%">
					<col width="14.28571%">
					<col width="14.28571%">
					<col width="14.28571%">
					<col width="14.28571%">
					<col width="14.28571%">
				</colgroup>
				<thead>
					<tr class="text-center p-2">
						<th>일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th>토</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
					</tr>
					<tr>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
					</tr>
					<tr>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
					</tr>
					<tr>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
					</tr>
					<tr>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
					</tr>
					<tr>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
						<td style="height: 170.98px;">x</td>
					</tr>
				
			</table>
		</div>
		
		<!-- <div class="row p-5">
			<div class="col">
				<div class="grid">
					<div>일</div>
					<div>월</div>
					<div>화</div>
					<div>수</div>
					<div>목</div>
					<div>금</div>
					<div>토</div>
				</div>
				
			</div>
		</div> -->
	</div>
</div>
<%@ include file="common/footer.jsp" %>
<script type="text/javascript">
	
</script>
</body>
</html>