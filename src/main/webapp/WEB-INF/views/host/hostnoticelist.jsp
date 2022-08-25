<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
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

</style>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container">
	<div class="border shadow mt-4">
		<div class="row mt-4 mx-3">
			<div class="col-6">
				<h3 class="fw-bold fs-5">고객행복센터 > 공지사항</h3>
			</div>
			<div class="col-6">
			<!-- 검색 -->
				<form id="search-form">
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
			<div class="col p-5">
				<table class="table mt-3 ">
					<colgroup>
						<col width="10%">
						<col width="">
						<col width="15%">
					</colgroup>
					<thead class="text-center bg-secondary bg-opacity-10">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>등록일</th>
						</tr>
					</thead>
					<tbody class="fs-6 text-center">
					<c:choose>
						<c:when test="${empty notices }">
							<tr>
								<td colspan="3" class="text-center">공지사항이 존재하지 않습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="notice" items="${notices }">
								<tr>
									<td>${notice.no }</td>
									<td><a href="#" style="color: #000;">${notice.title }</a></td>
									<td><fmt:formatDate value="${notice.createdDate }" pattern="yyyy년 M월 d일"/></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
						
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