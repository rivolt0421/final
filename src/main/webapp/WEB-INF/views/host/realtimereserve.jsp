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
<style type="text/css">
	ul li {list-style: none; float: left; font-weight: bold; margin: 0 30px;}
	a {text-decoration: none;}
	
	#reserve-cat {border-bottom: 2px solid #eee; padding: 20px 0;}
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
		<div class="row">
			<div class="col" id="reserve-cat">
				<ul>
					<li><a>입실 예정</a></li>
					<li><a>퇴실 예정</a></li>
					<li><a>취소된 예약</a></li>
				</ul>
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