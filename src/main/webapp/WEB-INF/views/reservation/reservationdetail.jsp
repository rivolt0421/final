<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>여행할때 굿초이스</title>
<link href="/css/font.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">
<link href="/favicon.ico" rel="icon" type="image/x-icon">

<link href="/css/home.css" rel="stylesheet">
<script src="/script/common.js"></script>
<script src="https://kit.fontawesome.com/4f71b1e252.js" crossorigin="anonymous"></script>

<style>
.confirmation {
	background:red;
	width:60px;
	color:white;
	margin-bottom:5px;
	margin-left:5px;
}
</style>
</head>
<body>
<%@ include file="../common/nav.jsp" %>
<link href="/css/mypage.css" rel="stylesheet">
<div class="wrap show">
	<div class="sub_top_wrap">
		<div class="sub_top bg_kong_2">
			<h2>내정보</h2>
		</div>
	</div>
	
	<div id="content" class="sub_wrap my_wrap">
	    <div class="side">
	        <ul style="padding-left: 0rem;">
	            <li><a class="" href="/user/point" style="text-decoration: none;">포인트</a></li>
	            <li><a class="" href="/user/couponbox" style="text-decoration: none;">쿠폰함</a></li>
	            <li><a class="active" href="/user/reservation" style="text-decoration: none;">예약 내역</a></li>
	            <li><a class="" href="/user/myinfo" style="text-decoration: none;">내 정보 관리</a></li>
	        </ul>
   	  	</div>
		<div class="container" style="margin-top: 1%; margin-left:35%; width:40%;">
		<!-- 예약 정보 -->
		
			<div class="row">
			<div class="col-sm">
			<p class="confirmation">예약확정</p><!-- 예약완료/예약취소 -->
				<table class="table">
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
			<div class="message">
				<hr>
				<p style="color:red;"> (****년 **월 **일) 18:00까지 무료 취소 가능합니다.</p> <!-- 예약전일까지 -->
				<br>
				<button type="button" class="btn btn-danger" style="width:100%;" data-bs-toggle="modal" data-bs-target="#cancelModal">예약취소</button>
				<!-- input type="button" onclick="" value="결제취소"> -->
				
				<div class="modal fade" id="cancelModal" tabindex="-1" aria-labelledby="cancelModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
						<div class="modal-content">
							<div class="modal-header">
								<p class="modal-title" id="cancelModalLabel">취소내용 확인</p>
								<button type="button" class="btn-close" data-bs-dismiss="modal"	aria-label="Close"></button>
							</div>
							<div class="modal-body" >
								<h6>지금 예약 취소시 취소 수수료 <span>*원</span>이 발생합니다.</h6>
								<br>
								<div style="background-color:red; margin-left:-15px; margin-right:-15px; ">
									<table class="table">
									<tr>
									<th>환불 예정 정보</th>
									</tr>
									<tr>
									<td>결제금액</td>
									<td>*원</td>
									</tr>
									<tr>
									<td>사용한 회원 혜택 금액</td>
									<td>(쿠폰 사용액+포인트 사용액)원</td>
									</tr>
									<tr>
									<td>-쿠폰 사용액</td>
									<td>*원</td>
									</tr>
									<tr>
									<td>-포인트 사용액</td>
									<td>*원</td>
									</tr>
									<!-- <table class="table"> -->
									<tr style="border-top: 1px solid white;">
									<td>쿠폰 환급액</td>
									<td>*원</td>
									</tr>
									<tr>
									<td>포인트 환급액</td>
									<td>*원</td>
									</tr>
									<tr>
									<td>환불방법</td>
									<td>?</td>
									</tr>
									<tr>
									<th>최종 환불금액</th>
									<th>*원</th>
									</tr>
									</table>
									<!-- </table> -->
								</div>
								<div>
									<p>취소 사유</p>
									<br> <select class="form-select form-select-sm" aria-label=".form-select-sm example">
										<option value="" selected disabled hidden>[필수] 취소 사유를
											선택해주세요</option>
										<option value="1">방문불가/여행취소</option>
										<option value="2">타 서비스에서 더 저렴한 상품발견</option>
										<option value="3">다시예약_같은숙소 일정/객실변경</option>
										<option value="4">다시예약_다른숙소로 변경</option>
										<option value="5">결제수단변경/쿠폰사용</option>
										<option value="6">업체요청</option>
										<option value="7">단순변심</option>
									</select> 
									<br>
									<p>취소수수료가 발생한 경우 포인트->현금 순으로 차감됩니다. 실결제금액에서 현금에서 차감되는 취소 수수료를 뺀 금액이 결제수단으로 환불됩니다.</p>
									<p>취소수수료는 판매가 기준으로 산정됩니다.</p>
									<p>예약/결제 당시에 적용된 <span>취소/환불 규정</span>에 따라 취소수수료가 계산됩니다.</p>
									<p>예약/결제 당시에 적용된 예약/결제 시 사용한 포인트는 포인트로 복원됩니다. 단, 취소 수수료를 차감한 금액으로 복원될 수 있습니다. 포인트나 상품권 잔액은 취소에 의한 복원 여부에 상관없이 원 유효기간 등에 따라 잔액이 소멸될 수 있으니 주의바랍니다.</p>
									<p>결제 수단이 휴대폰결제인 경우 취소 시점에 따라 취소수수료가 재승인 될 수 있습니다.</p>
									<p>휴대폰 전월 결제건은 예약 취소 후 예약자 본인 명의 통장으로 환불처리됩니다.</p>
									<p>환불은 예약취소 후 PG사 승인 취소 기간에 따라 주말과 공휴일을 제외한 영업일 기준 최대 3~5일 소요됩니다.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>