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
	<div class="border shadow mt-4">
		<div class="row mt-4 mx-3">
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
				  <div class="tab-pane fade show active" id="total-tab-pane" role="tabpanel" aria-labelledby="total-tab" tabindex="0">
				  		<!-- 이용약관 -->
				  ...
				  
				  </div>
				  <div class="tab-pane fade" id="house-tab-pane" role="tabpanel" aria-labelledby="house-tab" tabindex="0">
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
				  					</tbody>
				  				</table>
				  			</div>
				  		</div>
				  </div>
				</div>
			</div>
		</div>
		
	</div>
</div>
<%@ include file="common/footer.jsp" %>
</body>
</html>