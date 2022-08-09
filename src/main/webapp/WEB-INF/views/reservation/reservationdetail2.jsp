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

.reservationinfo {
	width: 600px;
    height: 300px;
	padding: 1%;
    margin: 1%;
    margin-left: 100px;
    
}

.payinfo {
	width: 600px;
    height: 100px;
	padding: 1%;
    margin: 1%;
    margin-left: 100px;
    
}

.message {
	width: 600px;
    height: 100px;
	padding: 1%;
    margin: 1%;
    margin-left: 100px;
    
}

.confirmation {
	background:red;
	width:60px;
	color:white;
	margin-bottom:5px;
}

</style>
</head>
<body>
<%@ include file="reservationbase.jsp" %>
	<!-- 예약 상세보기 영역 -->
	<div class="container">
		<!-- 예약 정보 -->
		
			<div class="reservationinfo">
			<p class="confirmation">예약확정</p><!-- 예약완료/예약취소 -->
				<table>
					<tr>
						<th style="font-size:25px;">(예약 숙소 명칭)</th>
					</tr>
					<tr>
						<td style="font-size:20px;"><bold>(예약 상품 명칭, *박)</bold></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td style="color:grey;">체크인</td>
						<td>(**.** *요일 - **.** *요일 **:00)</td>
					</tr>
					<tr>
						<td style="color:grey;">체크아웃</td>
						<td>(**.** *요일 - **.** *요일 **:00)</td>
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
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td style="color:grey; font-size:12px;">휴대본 번호 010-****-****은(는)</td>
					</tr>
					<tr>
						<td style="color:grey; font-size:12px;">안심번호로 숙소에 전송되며, 퇴실후 7일간 보관됩니다.</td>
					</tr>
				</table>
			</div>
			<!-- 결제 정보 -->
			
			<div class="payinfo">
			<hr>
				<table>
					<br>
					<tr>
						<th>결제정보</th>
					</tr>
					<tr>
						<td style="color:grey;">총결제금액</td>
						<td style="color:red;">(결제금액)원</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
				
			</div>
			<div class="message">
				<hr>
				<p style="color:red;"> (****년 **월 **일) 18:00까지 무료 취소 가능합니다.</p> <!-- 예약전일까지 -->
				<button type="button" class="btn btn-danger" style="width:100%;">결제취소</button>
				<!-- input type="button" onclick="" value="결제취소"> -->
			</div>
		
		</div>
		
		

</body>
</html>