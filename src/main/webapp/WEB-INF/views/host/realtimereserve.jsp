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
	
</style>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container">
	<div class="border shadow mt-4">
		<div class="row mt-4 mx-3">
			<div class="col">
				<h3 class="fw-bold fs-5">예약관리 > 실시간 예약 관리</h3>
			</div>
		</div>
		<div class="row p-5">
			<div class="col">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
				  <li class="nav-item" role="presentation">
				    <button class="nav-link active" id="enter-tab" data-bs-toggle="tab" data-bs-target="#enter-tab-pane" type="button" role="tab" aria-controls="enter-tab-pane" aria-selected="true">입실예정</button>
				  </li>
				  <li class="nav-item" role="presentation">
				    <button class="nav-link" id="leaving-tab" data-bs-toggle="tab" data-bs-target="#leaving-tab-pane" type="button" role="tab" aria-controls="leaving-tab-pane" aria-selected="false">퇴실예정</button>
				  </li>
				  <li class="nav-item" role="presentation">
				    <button class="nav-link" id="cancel-tab" data-bs-toggle="tab" data-bs-target="#cancel-tab-pane" type="button" role="tab" aria-controls="cancel-tab-pane" aria-selected="false">취소된 예약</button>
				  </li>
				  <li class="nav-item" role="presentation">
				    <button class="nav-link" id="check-tab" data-bs-toggle="tab" data-bs-target="#check-tab-pane" type="button" role="tab" aria-controls="check-tab-pane" aria-selected="false">예약 확인</button>
				  </li>
				</ul>
				<div class="tab-content" id="myTabContent">
				  <div class="tab-pane fade show active" id="enter-tab-pane" role="tabpanel" aria-labelledby="enter-tab" tabindex="0">
				  	<!-- 입실 예정 -->
				  ...
				  </div>
				  <div class="tab-pane fade" id="leaving-tab-pane" role="tabpanel" aria-labelledby="leaving-tab" tabindex="0">
				  	<!-- 퇴실예정 -->
				  ...
				  </div>
				  <div class="tab-pane fade" id="cancel-tab-pane" role="tabpanel" aria-labelledby="cancel-tab" tabindex="0">
				  	<!-- 취소된 예약 -->
				  ...
				  </div>
				  <div class="tab-pane fade" id="check-tab-pane" role="tabpanel" aria-labelledby="check-tab" tabindex="0">
				  	<!-- 예약 확인 -->
				  ...
				  </div>
				</div>
			</div>
		</div>
		<div class="row" style="height: 500px;">
			<div class="col">
				
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jsp" %>
</body>
</html>