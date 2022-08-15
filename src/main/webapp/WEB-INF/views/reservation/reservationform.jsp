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
<link href="/css/home.css" rel="stylesheet">
<title>굿초이스 예약페이지</title>
<style>/* 
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
*/

</style>
</head>
<body>
<%@ include file="../common/nav.jsp" %>
<div class="container" style="margin-top: 95px;">
	<div class="row">
	
		<div class="col-6">
			<div>
				<table class="table mb-3">
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
			<div class="mb-3">
				<table class="table">
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
					<button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#couponModal">사용 가능 쿠폰 *장</button>
					</td>
					<!-- <input type="button" onclick="" value="사용 가능 쿠폰 *장"> -->
					<td></td>
					<td><bold>(-)</bold></td>
				</tr>
				<tr>
					<td>쿠폰</td>
					<td></td>
					<td>(-)</td>
				</tr>
				<!--
				  <tr>
					<td>중복쿠폰</td>
					<td></td>
					<td>(-)</td>
				  </tr>
				-->
				<tr>
					<td>
					<button type="button" class="btn btn-outline-secondary">포인트 사용 *P</button>
					</td>
					<!--  <input type="button" onclick="" value="포인트 사용 *P">-->
					<td></td>
					<td><input type="text" class="form-control" value="(사용자 보유 포인트)"><strong>P</strong></td>
					<!-- <input type="text" id="userpoint" name="userpoint" value="(사용자 보유 포인트)"><strong>P</strong>-->
					
				</tr>
				<!--  
				<tr>
					<td>
					<button type="button" class="btn btn-outline-secondary">상품권 사용 *P</button>
					</td>
					<td></td>
					<td><bold>(-)</bold></td>
				</tr>
				-->
				</table>
				<hr>

					<!-- 쿠폰적용 모달 -->
					<div class="modal fade" id="couponModal" tabindex="-1" aria-labelledby="couponModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="couponModalLabel">쿠폰 적용</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<div class="form-check">
										<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1"> 
											<label class="form-check-label" for="flexRadioDefault1">
											적용 안함
											</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
											<label class="form-check-label" for="flexRadioDefault2">
											*원
											</label>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-danger" style="width:100%;">*원 적용하기</button>
								</div>
							</div>
						</div>
					</div>


				</div>
			<!-- 결제 수단 선택 영역 -->
			<div class="mb-3">
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
				<br>
				<!--  약관 동의 영역 -->
				<div>
					<div class="mb-2"><input class="form-check-input" type="checkbox" value="selectall" name="check" id="flexCheckDefault" onclick='selectAll(this)'><strong class="ms-2">전체 동의</strong>(필수)</div>
					<div class="mb-2"><input class="form-check-input" type="checkbox" value="cancel" name="check" id="flexCheckDefault"><a href=""  class="ms-2" id="link-open-cancel-modal">숙소이용규칙 및 취소/환불규정 동의</a>(필수)</div>
					<div class="mb-2"><input class="form-check-input" type="checkbox" value="info" name="check" id="flexCheckDefault"><a href=""  class="ms-2" id="link-open-info-modal">개인정보 수집 및 이용 동의</a>(필수)</div>
					<div class="mb-2"><input class="form-check-input" type="checkbox" value="infoSending" name="check" id="flexCheckDefault"><a href=""  class="ms-2" id="link-open-infoSending-modal">개인정보 제 3자 제공 동의</a>(필수)</div>
				</div>
			</div>
			

				<!-- 숙소 이용 규칙 및 취소/환불 규정 동의 모달 -->
				<div class="modal fade" id="cancelModal" tabindex="-1" aria-labelledby="cancelModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="cancelModalLabel">숙소이용규칙 및 취소/환불 규정(필수)</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<h6>이용규칙</h6>
								<br>
								<p>최대 인원 초과시 입실 불가합니다.</p>
								<p>정원 기준 요금 외 인원 추가 요금은 현장결제입니다.</p>
								<p>제공 이미지는 배정된 객실과 다를 수 있습니다.</p>
								<p>제공 정보는 숙소의 사정에 따라 변경될 수 있습니다.</p>
								<p>미성년자는 보호자 동반시 투숙이 가능합니다.</p>
								<p>체크인 시 배정의 경우, 객실과 베드타입을 보장하지 않습니다.</p>
								<p>객실 타입에 시간이 별도 기재된 경우, 체크인/체크아웃 시간이 상이할 수 있습니다.</p>
								<p>조식, 인원, 침구, 침대 등 추가는 예약하신 숙소로 요청 및 결제 가능합니다.</p>
								<p>업체 현장에서 객실 컨디션 및 서비스로 인해 발생된 분쟁은 여기어때에서 책임지지 않습니다.</p>
								<br>
								<h6>취소/환불 규정</h6>
								<br>
								<p>숙소 사정에 의해 취소 발생시 전액 환불이 가능합니다.</p>
								<p>예약 상품 별 숙소 정보에 기재된 취소, 환불 규정을 반드시 확인 후 이용해주시기 바랍니다.</p>
								<p>예약 이후의 취소는 취소/환불 규정에 의거하여 적용됩니다.</p>
								<p>취소,변경 불가 상품은 규정과 상관없이 취소, 변경이 불가합니다.</p>
								<p>당일 결제를 포함한 체크인 당일 취소는 취소, 변경이 불가합니다.</p>
								<p>단! 숙소의 객실정보가 수시로 변경될 수 있으며 이로 인한 불이익은 여기어때가 책임지지 않습니다.</p>
							</div>
						</div>
					</div>
				</div>

				<!-- 개인정보 수집 및 이용 동의 모달 -->
				<div class="modal fade" id="infoModal" tabindex="-1" aria-labelledby="infoModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="infoModalLabel">개인정보 수집 및 이용 동의(필수)</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<table class="table">
								<tr>
									<th>구분</th>
									<th>수집/이용 목적</th>
									<th>수집 항목</th>
									<th>보유 이용기간</th>
								</tr>
								<tr>
									<td>필수</td>
									<td>-예약/결제 서비스 이용<br>-상담 및 부정 거래 기록 확인</td>
									<td>-예약 서비스 이용:예약자 이름, 휴대폰 번호, CI
									<br>-결제 서비스이용:(카드 결제 시) 카드사명,카드번호,유효기간,이메일 (휴대폰 결제시) 휴대폰 번호, 통신사, 결제 승인번호 (계좌이체 시)은행명 계좌번호, 예금주 (현금영수증 발급시) 휴대폰 번호 이메일(취소환불을 위한 대급지급 요청 시) 은행명, 계좌번호, 예금주명
									</td>
									<td>전자상거래 상 소비자 보호에 관한 법률에 따라 5년간 보관</td>
								</tr>
								<tr>
									<td colspan='4'>위 동의 내용을 거부하실 수 있으나, 동의를 거부하실 경우 서비스를 이용하실 수 없습니다.</td>
								</tr>
								<tr>
									<td colspan='4'>개인정보 처리와 관련된 상세내용은 '개인정보처리방침'을 참고</td>
								</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 개인정보 제 3자 제공 동의 -->
				<div class="modal fade" id="infoSendingModal" tabindex="-1"	aria-labelledby="infoSendingModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="infoSendingModalLabel">개인정보 제 3자 제공 동의(필수)</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<table class="table">
								<tr>
									<th>제공받는 자</th>
									<th>제공 목적</th>
									<th>제공하는 항목</th>
									<th>제공하는 자의 개인정보 보유 및 이용기간</th>
								</tr>
								<tr>
									<td>예약하는 숙박 업소</td>
									<td>숙박예약서비스 이용계약 이행(서비스 제공, 확인, 이용자 정보 확인)</td>
									<td>예약한 숙박 서비스의 이용자정보(예약자 이름, 휴대폰 번호, 예약번호, 예약한 업체명, 예약한 객실명, 결제금액)	</td>
									<td>예약서비스 제공 완료 후 6개월</td>
								</tr>
								<tr>
									<td colspan='4'>위 동의 내용을 거부하실 수 있으나, 동의를 거부하실 경우 서비스를 이용하실 수 없습니다.</td>
								</tr>
								<tr>
									<td colspan='4'>개인정보 처리와 관련된 상세내용은 '개인정보처리방침'을 참고</td>
								</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		
		
		<div class="col-6" style="background-color:lightgrey; height: 80%; padding:10px;">
			<div>
				<table class="table ">
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
			<div class="mb-3">
				<p><strong>총 결제금액</strong>(vat 포함)</p>
				<p><span id="colortext"><strong>(결제 금액 - 할인 수단 적용 금액)원</strong></span></p>
			</div>
			<div class="mb-3">
				<ul>
				<li>해당 객실가는 세금, 봉사료가 포함된 금액입니다</li>
				<li>결제완료 후 <span id="colortext">예약자 이름</span>으로 바로 <span id="colortext">체크인</span> 하시면 됩니다</li>
				</ul>
			</div>
			<button type="button" class="btn btn-danger" style="width:100%;" data-bs-toggle="modal" data-bs-target="#payModal">결제하기</button>
			<!-- 
			<div><input type="button" onclick="" value="결제하기" style="width:50%"></div>
		 -->
				<!-- 결제하기 버튼 모달 -->
				<div class="modal fade" id="payModal" tabindex="-1"
					aria-labelledby="payModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="payModalLabel">예약내역 확인</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<p>숙소명</p>
								<p>객실 유형/숙박 일수</p>
								<br>
								<table class="table">
									<tr>
										<td>체크인</td>
										<td>**.**</td>
									</tr>
									<tr>
										<td>체크아웃</td>
										<td>**.**</td>
									</tr>
								</table>
									<p>미성년자는 보호자 동반시 투숙이 가능합니다.</p>
									<p>취소 및 환불규정에 따라 수수료 부과및 예약 변경이 불가능할 수 있습니다.</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">취소</button>
								<button type="button" class="btn btn-danger">결제 진행하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		
	</div>
</div>
<script type="text/javascript">

	function selectAll(selectAll)  {
		  const checkboxes 
		       = document.getElementsByName('check');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		  })
		}



	let cancelModal = new bootstrap.Modal(document.getElementById("cancelModal"));
		
	$("#link-open-cancel-modal").click(function() {
		cancelModal.show();
		return false;
	})
	
	let infoModal = new bootstrap.Modal(document.getElementById("infoModal"));
		
	$("#link-open-info-modal").click(function() {
		infoModal.show();
		return false;
	})
	
	let infoSendingModal = new bootstrap.Modal(document.getElementById("infoSendingModal"));
		
	$("#link-open-infoSending-modal").click(function() {
		infoSendingModal.show();
		return false;
	})
</script>
</body>
</html>