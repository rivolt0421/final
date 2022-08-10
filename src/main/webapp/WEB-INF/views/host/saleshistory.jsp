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
	<div class="border shadow mt-4 rounded">
		<div class="row mt-4 mx-3">
			<div class="col">
				<h3>예약관리 > 매출내역</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-6">
				<!-- 일별 예약자 그래프 -->
			</div>
			<div class="col-6">
				<!-- 일자별 예약 내역 (일자, 객실명,  -->
				<table>
					<thead>
						<tr>
							<th>일자</th>
							<th>객실명</th>
							<th>일자</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jsp" %>
</body>
</html>