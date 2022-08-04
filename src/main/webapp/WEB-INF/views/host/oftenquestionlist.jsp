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
				<h3 class="fw-bold fs-5">고객행복센터 > 자주 묻는 질문</h3>
			</div>
			<div class="col-6 text-end">
			<!-- 검색 -->
				<form>
					<select>
						<option>전체</option>
						<option>제목</option>
						<option>내용</option>
					</select>
					<input type="text" placeholder="검색어를 입력해주세요.">
					<button class="btn btn-danger">검색</button>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col">
				
			</div>
		</div>
		<div class="row">
			<div class="col p-5">
				<table class="table mt-3 ">
					<colgroup>
						<col width="10%">
						<col width="10%">
						<col width="">
					</colgroup>
					<thead class="text-center bg-secondary bg-opacity-10">
						<tr>
							<th>번호</th>
							<th>분류</th>
							<th>제목</th>
						</tr>
					</thead>
					<tbody class="fs-6">
						<tr class="text-center">
							<td>10</td>
							<td>기타</td>
							<td>Q. 취소환불규정이 어떻게 되나요?</td>
						</tr>
						<tr class="text-center">
							<td>10</td>
							<td>기타</td>
							<td>Q. 취소환불규정이 어떻게 되나요?</td>
						</tr>
						<tr class="text-center">
							<td>10</td>
							<td>기타</td>
							<td>Q. 취소환불규정이 어떻게 되나요?</td>
						</tr>
						<tr class="text-center">
							<td>10</td>
							<td>기타</td>
							<td>Q. 취소환불규정이 어떻게 되나요?</td>
						</tr>
						<tr class="text-center">
							<td>10</td>
							<td>기타</td>
							<td>Q. 취소환불규정이 어떻게 되나요?</td>
						</tr>
						<tr class="text-center">
							<td>10</td>
							<td>기타</td>
							<td>Q. 취소환불규정이 어떻게 되나요?</td>
						</tr>
						<tr class="text-center">
							<td>10</td>
							<td>기타</td>
							<td>Q. 취소환불규정이 어떻게 되나요?</td>
						</tr>
						<tr class="text-center">
							<td>10</td>
							<td>기타</td>
							<td>Q. 취소환불규정이 어떻게 되나요?</td>
						</tr>
						<tr class="text-center">
							<td>10</td>
							<td>기타</td>
							<td>Q. 취소환불규정이 어떻게 되나요?</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<!-- 페이징처리 -->
			</div>
		</div>
	</div>
</div>
<%@ include file="common/footer.jsp" %>
</body>
</html>