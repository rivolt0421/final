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
<title>굿초이스 예약페이지</title>
<style>
.container {
	position:absolute;
	width:100%;
}

#rightsection {
	float:left;
	width:50%
	padding: 1%;
    margin: 1%;
}
#leftsection {
	float:left;
	width:50%
	padding: 1%;
    margin: 1%;
    background-color:lightgrey;
}			
td {
	padding: 15px;
}

input, checkbox {
  accent-color: red;
}

#colortext{
		color:red;
}
</style>
</head>
<body>
<%@ include file="../common/nav.jsp" %>
<div class="container">
	<div id="rightsection">
		<!-- 예약자 정보 테이블 -->
		<div>
			<table>
			<tr>
				<th>예약자 정보</th>
			</tr>
			<tr>
				<td>예약자 이름</td>
			</tr>
			<tr>
			<td><input type="text" class="form-control" value="(사용자 이름)"></td>
				<!-- <td><input type="text" id="username" name="username" value="(사용자 이름)"></td>  -->
			</tr>
			<tr>
				<td>휴대폰 번호</td>
			</tr>
			<tr>
				<td>개인 정보 보호를 위해 안심번호로 숙소에 전송됩니다.</td> <!-- 안심번호 변경 기능 구현 고민 -->
			</tr>
			<tr>
			<td><input type="text" class="form-control" value="(사용자 연락처)"></td>
				<!--  <input type="text" id="userphone" name="userphone" value="(사용자 연락처)">-->
			</tr>
			</table>
			<hr>
		</div>
		<!-- 할인 수단 선택 테이블 -->
		<div>
			<table>
			<tr>
				<th>할인 수단 선택</th>
			</tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>구매 총액</td>
				<td></td>
				<td><strong>(할인 수단 적용 전 결제 금액)원</strong></td>
			</tr>
			<tr>
				<td>
				<button type="button" class="btn btn-outline-secondary">사용 가능 쿠폰 *장</button>
				</td>
				<!-- <input type="button" onclick="" value="사용 가능 쿠폰 *장"> -->
				<td></td>
				<td><bold>(-)</bold></td>
			</tr>
			<tr>
				<td>일반쿠폰</td>
				<td></td>
				<td>(-)</td>
			</tr>
			<tr>
				<td>중복쿠폰</td>
				<td></td>
				<td>(-)</td>
			</tr>
			<tr>
				<td>
				<button type="button" class="btn btn-outline-secondary">포인트 사용 *P</button>
				</td>
				<!--  <input type="button" onclick="" value="포인트 사용 *P">-->
				<td></td>
				<td><input type="text" class="form-control" value="(사용자 보유 포인트)"><strong>P</strong></td>
				<!-- <input type="text" id="userpoint" name="userpoint" value="(사용자 보유 포인트)"><strong>P</strong>-->
				
			</tr>
			<tr>
				<td>
				<button type="button" class="btn btn-outline-secondary">상품권 사용 *P</button>
				</td>
				<!-- <input type="button" onclick="" value="상품권 사용"> -->
				<td></td>
				<td><bold>(-)</bold></td>
			</tr>
			</table>
			<hr>
		</div>
		<!-- 결제 수단 선택 영역 -->
		<div>
			<h5>결제수단 선택</h5>
			<br>
			<form>
			
				<select name="paymentmethod" class="form-select" aria-label="Default select example">
					<option value="kakaopay"> 카카오페이
					<option value="toss"> 토스
					<option value="card" selected> 신용/체크카드
					<option value="naverpay"> 네이버페이
					<option value="cellphone"> 휴대폰결제
				</select>
			</form>
		</div>
		<br>
		<!--  약관 동의 영역 -->
		<div>
			<form>
			<input type="checkbox" name="rule" value="agreeall" checked> <strong>전체 동의</strong> (필수) <br>
			<input type="checkbox" name="rule" value="cancel"> 숙소이용규칙 및 취소/환불규정 동의 (필수) <br>
			<input type="checkbox" name="rule" value="info"> 개인정보 수집 및 이용 동의 (필수) <br>
			<input type="checkbox" name="rule" value="infosendding"> 개인정보 제 3자 제공 동의 (필수)
			</form>
		</div>
	</div>
	
	<!-- 예약 정보 출력 영역 -->
	<div id="leftsection">
		<div>
			<table>
				<tr>
					<td>숙소 이름</td>
				</tr>
				<tr>
					<td>(예약 숙소 명칭)</td>
				</tr>
				<tr>
					<td>객실타입/기간</td>
				</tr>
				<tr>
					<td>(예약 객실타입/예약 기간)</td>
				</tr>
				<tr>
					<td>체크인</td>
				</tr>
				<tr>
					<td>(**.** *요일 **:00)</td>
				</tr>
				<tr>
					<td>체크아웃</td>
				</tr>
				<tr>
					<td>(**.** *요일 **:00)</td>
				</tr>
			</table>
			<hr>
		</div>
		<div>
			<p><strong>총 결제금액</strong>(vat 포함)</p>
			<p><span id="colortext"><strong>(결제 금액 - 할인 수단 적용 금액)원</strong></span></p>
		</div>
		<div>
			<ul>
			<li>해당 객실가는 세금, 봉사료가 포함된 금액입니다</li>
			<li>결제완료 후 <span id="colortext">예약자 이름</span>으로 바로 <span id="colortext">체크인</span> 하시면 됩니다</li>
			</ul>
		</div>
		<button type="button" class="btn btn-danger" style="width:100%;">결제하기</button>
		<!-- 
		<div><input type="button" onclick="" value="결제하기" style="width:50%"></div>
		 -->
	</div>
</div>
</body>
</html>