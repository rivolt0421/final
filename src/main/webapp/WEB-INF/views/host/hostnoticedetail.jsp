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
	table {margin: 50px; border: 1px solid #eee;}
</style>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container">
	<div class="border shadow mt-4">
		<div class="row mt-4 mx-3 mb-5">
			<div class="col">
				<h3 class="fw-bold fs-5">고객행복센터 > 공지사항</h3>
			</div>
		</div>
		<div>
			<table class="table">
				<colgroup>
					<col width="10%">
					<col width="">
				</colgroup>
				<thead>
					<tr>
						<th class="text-center bg-light">제목</th>
						<td>[공지]</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="2">내용</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<%@ include file="common/footer.jsp" %>
</body>
</html>