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

.confirmation {
	background:lightgrey;
	width:60px;
	margin-bottom:5px;
	margin-left:5px;
}

</style>
</head>
<body>
<%@ include file="reservationbase.jsp" %>
	<!-- 예약 상세보기 영역 -->
	<div class="container" style="margin-top: 1%; margin-left:35%; width:40%;">
		<!-- 예약 정보 -->
		<div class="row">
			<div class="col-sm">
			<p class="confirmation">예약취소</p>
				<table class="table">
					<tr>
						<th style="font-size:25px;">(예약 숙소 명칭)</th>
					</tr>
					<tr>
						<td style="font-size:20px;"><bold>(**.** *요일 - **.** *요일, *박)</bold></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td style="color:grey;">예약번호</td>
						<td>(*********)</td><!-- 9자리, 테이블 확인해야 함 -->
					</tr>
					<tr>
						<td style="color:grey;">예약자 이름</td>
						<td>(***)</td>
					</tr>
					<tr>
						<td style="color:grey;">안심번호</td> <!-- 안심번호 미구현시 일반 전화번호 출력 -->
						<td>(010-****-****)</td>
					</tr>
					<tr>
						<td style="color:grey; font-size:12px;">휴대본 번호 010-****-****은(는)</td>
					</tr>
					<tr>
						<td style="color:grey; font-size:12px;">안심번호로 숙소에 전송되며, 퇴실후 7일간 보관됩니다.</td>
					</tr>
				</table>
			</div>
		</div>
			
		<!-- 결제 정보 -->			
		<div class="row">
			<div class="col-sm">
			<hr>
				<table class="table">
					<br>
					<tr>
						<th>결제정보</th>
					</tr>
					<tr>
						<td style="color:grey;">총결제금액</td>
						<td style="color:red;">(결제금액)원</td>
					</tr>
				</table>
			</div>	
		</div>
		<hr>
	</div>
</body>
</html>