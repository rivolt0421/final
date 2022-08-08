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
	#servicewrap {padding: 30px;}
	#myTabContent h5, h6 {font-weight: bold;}
	
	#house-tab-pane table {vertical-align: middle;}
	#house-tab-pane table th {background-color: #ddd; font-weight: bold;}
</style>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container">
	<div class="border shadow mt-4 rounded" id="servicewrap">
		<div class="row mb-3">
			<div class="col-6">
				<h3 class="fw-bold fs-5">고객행복센터 > 서비스 약관</h3>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
				  <li class="nav-item" role="presentation">
				    <button class="nav-link active" id="total-tab" data-bs-toggle="tab" data-bs-target="#total-tab-pane" type="button" role="tab" aria-controls="total-tab-pane" aria-selected="true">이용약관</button>
				  </li>
				  <li class="nav-item" role="presentation">
				    <button class="nav-link" id="house-tab" data-bs-toggle="tab" data-bs-target="#house-tab-pane" type="button" role="tab" aria-controls="house-tab-pane" aria-selected="false">개인정보취급</button>
				  </li>
				</ul>
				<div class="tab-content" id="myTabContent">
				  <div class="tab-pane fade show active pt-4" id="total-tab-pane" role="tabpanel" aria-labelledby="total-tab" tabindex="0">
				  		<!-- 이용약관 -->
				  		<h5>호스트 하우스 이용약관</h5>
				  		<h6>제 1장 1총칙</br></h6>
				  		<h6></br>제1조 [목적]</h6>
				  		<p>
				  			이 약관은 주식회사 여기어때컴퍼니(이하 "회사"라 함)와 제휴점(이하 "회원"이라 함)간에 "회사"가 제공하는 광고플랫폼 및 숙박예약 서비스인 여기어때 호스트하우스(Host CMS) 및
				  		 	제반 서비스(이하 “서비스”라함)를 유선 또는 무선 인터넷 등의 수단으로 이용함에 있어 "회사"와 "회원"간의 권리, 이용에 관한 제반 사항과 기타 필요한 사항을 규정하는 것을 목적으로 합니다.</br>
				  		 </p>
				  		<h6></br>제2조 [용어의 정의]</h6>
				  		<p>
				  			이 약관에서 사용하는 용어의 정의는 다음 각호와 같습니다.</br>
							① "회원"이라 함은 "회사"가 제공하는 서비스에 유선 또는 무선 인터넷 등의 수단으로 접속하여 약관에 따라 "회사"가 제공하는 "서비스"를 이용하고 "회사"와 이용계약을 체결하여 “호스트하우스” 회원계정을 부여 받은 "회원"으로써 "회사"의 정보를 지속적으로 제공받으며 이용할 수 있는 제휴점을 말합니다.</br>
							② "고객"이라 함은 여기어때 웹, 모바일 앱을 사용하는 소비자로서 "회사"와 “회원”이 제공하는 서비스를 지속적으로 이용하는 자를 말합니다.</br>
							③ "계정"이라 함은 회원식별과 서비스 이용을 위하여 "회원"이 선정하고 "회사"가 부여하는 문자와 숫자를 조합한 식별 정보를 의미합니다.</br>
							④ "비밀번호(Password)"라 함은 "회원"이 부여 받은 "계정"과 일치함을 확인하고 비밀보호를 위해 "회원"이 정한 문자 또는 숫자의 조합을 말합니다.</br>
							⑤ "콘텐츠"라 함은 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제2조 제1항 제1호의 규정에 의한 정보통신망에서 사용되는 부호, 문자, 음성, 음향, 이미지 또는 영상 등으로 표현된 자료 또는 정보로서, 그 보존 및 이용에 있어서 효용을 높일 수 있도록 전자적 형태로 제작 또는 처리된 것을 말합니다.</br>
							⑥ "게시물"이라 함은 "서비스"에 "회원", “고객”이 올린 글, 그림, 사진, 각종 댓글 등 정보를 말합니다.</br>
							⑦ 본 조에서 정의된 용어 이외의 용어에 대해서는 관계 법령 및 서비스 별 이용기준에서 정의하는 바에 따릅니다.</br>
				  		</p>
				  		<h6></br>제3조 [약관의 게시 등]</h6>
				  		<p>
				  			① "회사"는 이 약관을 "회원"이 해당 약관의 내용을 확인할 수 있도록 기술 조치를 취합니다.</br>
							② "회사"는 "회원"이 "회사"와 이 약관의 내용에 관하여 질의 및 응답할 수 있도록 이메일 등의 기술적 장치를 설치합니다.</br>
				  			
				  		</p>
				  		<h6></br>제4조 [약관의 효력 및 개정]</h6>
				  		<p>
				  			① 본 약관의 내용은 회원가입 시 게재되거나 공지된 내용에 "회원"이 동의함으로써 그 효력이 발생합니다.</br>
							② "회사"는 『콘텐츠산업 진흥법』, 『약관의 규제에 관한 법률』, 『정보통신망 이용촉진 및 정보 보호 등에 관한 법률』, 『전자상거래 등에서의 소비자보호에 관한 법률』, 『소비자 보호법』 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있으며, 약관을 변경할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 서비스 공지사항에 그 적용일자 10일("회원"에게 불리한 변경 또는 중대한 사항의 변경은 30일) 이전부터 적용일자 이후 상당한 기간 동안 공지하고, "회원"에게는 개정약관, 적용일자 및 변경사유(중요 내용에 대한 변경인 경우 이에 대한 설명을 포함)를 이메일로 발송합니다.</br>
							③ "회사"가 공지 기간 동안 거부의사를 표시하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 공지 또는 통지하였음에도 불구하고 "회원"이 명시적으로 거부의사를 표시하지 아니하는 경우 "회원"이 개정약관에 동의한 것으로 봅니다.</br>
							④ 본 이용약관에 동의하지 않는 "회원"에게 "회사"는 약관을 적용하지 아니하고, "회원"은 "서비스"이용을 중단하고 이용 계약을 해지할 수 있습니다. 또한 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우 "회사"가 이용계약을 해지할 수 있습니다.</br>
				  		</p>
				  		<h6></br>제5조 [약관의 해석 및 약관 외 사항에 대한 규정]</h6>
				  		<p>
				  			본 약관에 명시되지 않은 사항에 대해서는 『콘텐츠산업 진흥법』, 『약관의 규제에 관한 법률』, 『정보통신망 이용촉진 및 정보 보호 등에 관한 법률』, 『전자상거래 등에서의 소비자보호에 관한 법률』, 『소비자 보호법』 등 관계 법령 및 "회사"가 정한 서비스 정책 등에 의합니다.
				  		</p>
				  </div>
				  <div class="tab-pane fade pt-4" id="house-tab-pane" role="tabpanel" aria-labelledby="house-tab" tabindex="0">
				  		<!-- 개인정보취급 -->
				  		<h5>호스트 하우스 개인정보취급방침</h5>
				  		<p>	
				  			여기어때 호스트하우스 이하 “회사”는 “회원”의 가입, 고객행복센터 커뮤니케이션, 추가적인 서비스 제공 등을 위해 “회원” 으로부터 아래와 같이 정의한 최소한의 개인정보를 수집하고 있습니다.</br>
				  			</br>(1) 회원 정보의 수집 • 이용목적, 수집항목, 보유 • 이용기간은 아래와 같습니다.
				  		</p>
				  		<div class="row">
				  			<div class="col">
				  				<table class="table">
				  					<colgroup>
				  						<col width="25%">
				  						<col width="25%">
				  						<col width="25%">
				  						<col width="25%">
				  					</colgroup>
				  					<thead>
				  					 	<tr>
				  					 		<th>수집방법</th>
				  					 		<th>수집 이용목적</th>
				  					 		<th>수집항목</th>
				  					 		<th>보유 이용기간</th>
				  					 	</tr>
				  					</thead>
				  					<tbody>
				  						<tr>
				  							<td>회원 정보 등록 시 정보 (필수)</td>
				  							<td>회원 서비스 제공, 신규 서비스, 관리</td>
				  							<td>[업주 정보]
											대표자명, 업체명, 휴대폰번호, 대표번호, 사업자등록번호, 업체 주소, 전자우편주소, 비밀번호, 입금 계좌정보 등</td>
											<td>적달성 후 즉시 파기</td>
				  						</tr>
				  						<tr>
				  							<td>생성정보 (필수)</td>
				  							<td>회원관리, 서비스 이용 통계</td>
				  							<td>IP Address, 쿠키, 방문 일시, 서비스 이용 기록</td>
											<td>회원 서비스 탈퇴 후
3개월까지</td>
				  						</tr>
				  					</tbody>
				  				</table>
				  			</div>
				  		</div>
				  		<p></br>
				  			(2) 법령에 의하여 수집 • 이용되는 이용자의 정보는 아래와 같은 수집목적으로 보관합니다.
				  		</p>
				  		<table class="table">
				  			<thead>
				  				<tr>
				  					<th>법령/내부정책</th>
				  					<th>수집 이용목적</th>
				  					<th>수집항목</th>
				  					<th>보유 이용기간</th>
				  				</tr>
				  			</thead>
				  			<tbody>
				  				<tr>
				  					<td>통신비밀보호법</td>
				  					<td>법원의 영장을 받아 수사기관이 요청 시 제공</td>
				  					<td>서비스 이용 로그기록, IP 등</td>
				  					<td>3개월</td>
				  				</tr>
				  				<!--  -->
				  				<tr>
				  					<td rowspan="4">전자상거래 등에서의 소비자 보호에 관한 법률</td>
				  					<td>표시•광고에 관한 기록</td>
				  					<td>표시•광고 기록</td>
				  					<td>6개월</td>
				  				</tr>
				  				<tr>
				  					<td>대금결제 및 재화 등의 공급에 관한 기록</td>
				  					<td>대금결제/재화 등의 공급 기록</td>
				  					<td>5년</td>
				  				</tr>
				  				<tr>
				  					<td>계약 또는 청약철회 등에 관한 기록</td>
				  					<td>소비자 식별정보 계약/청약철회 기록</td>
				  					<td>5년</td>
				  				</tr>
				  				<tr>
				  					<td>소비자 불만 또는 분쟁처리에 관한 기록</td>
				  					<td>소비자 식별정보 분쟁처리 기록</td>
				  					<td>3년</td>
				  				</tr>
				  			</tbody>
				  		</table>
				  		<p></br>
				  			(3) 회사의 개인정보의 위탁처리 기관, 취급 내용은 아래와 같습니다.
				  		</p>
				  		<table class="table">
				  			<colgroup>
				  				<col width="33.3%">
				  				<col width="33.3%">
				  				<col width="33.3%">
				  			</colgroup>
				  			<thead>
				  				<tr>
				  					<th>수탁 업체</th>
				  					<th>위탁 업무 내용</th>
				  					<th>개인정보의 보유 및 이용기간</th>
				  				</tr>
				  			</thead>
				  			<tbody>
				  				<tr>
				  					<td>네이버, 다음</td>
				  					<td>업체 광고 및 정보 확인 (업체명, 주소, 전화번호, 객실 정보, 이벤트 정보 등)</td>
				  					<td>회원 탈퇴시 혹은 위탁 계약 종료시까지</td>
				  				</tr>
				  				<tr>
				  					<td>SCI 평가정보㈜ (구 서울신용평가정보)</td>
				  					<td>본인인증 확인</td>
				  					<td>해당 업체에서 이미 보유하고 있는 개인정보이기 때문에 별도로 저장하지 않음</td>
				  				</tr>
				  				<tr>
				  					<td>나이스페이, 다날, ㈜케이에스넷, KG이니시스 카드사(현대/롯데/KB/BC/삼성/신한/외환/하나 SK/씨티/농협/광주/전북/제주/수협)</td>
				  					<td>결제처리 (무통장 입금, 실시간 계좌이체, 신용카드 등) 및 결제 도용 방지 목적</td>
				  					<td>회원 탈퇴 또는 위탁 계약 종료시까지</td>
				  				</tr>
				  			</tbody>
				  		</table>
				  		<p></br>
				  			(4) 상위 (1), (2), (3) 외 사항은 여기어때, 호스트하우스 이용약관, 개인정보취급방침 운영에 따릅니다.
				  		</p>
				  </div>
				</div>
			</div>
		</div>
		
	</div>
</div>
<%@ include file="common/footer.jsp" %>
</body>
</html>