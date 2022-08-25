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
<title>여기어때 호스트하우스</title>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container">
	<div class="border shadow mt-4">
		<div class="row mt-4 mx-3 mb-4">
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
			<div class="col mx-4">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
				  <li class="nav-item" >
				    <a class="nav-link ${empty param.cat ? 'active' : '' }" href="/hostquestion">전체</a>
				  </li>
				  <li class="nav-item" >
				    <a class="nav-link ${param.cat eq '1' ? 'active' : '' }" href="/hostquestion?cat=1">숙소관리</a>
				  </li>
				  <li class="nav-item" >
				    <a class="nav-link ${param.cat eq '2' ? 'active' : '' }" href="/hostquestion?cat=2">예약관리</a>
				  </li>
				  <li class="nav-item" >
				    <a class="nav-link ${param.cat eq '3' ? 'active' : '' }" href="/hostquestion?cat=3">광고상품</a>
				  </li>
				  <li class="nav-item" >
				    <a class="nav-link ${param.cat eq '4' ? 'active' : '' }" href="/hostquestion?cat=4">기타</a>
				  </li>
				</ul>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col mx-4">
				 <table class="table mt-3">
		  			<colgroup>
		  				<col width="10%">
		  				<col width="10%">
		  				<col width="80%">
		  			</colgroup>
		  			<thead class="text-center bg-secondary bg-opacity-10">
		  				<tr>
		  					<th>번호</th>
							<th>분류</th>
							<th>제목</th>
		  				</tr>
		  			</thead>
		  			<tbody>
		  			<c:choose>
		  				<c:when test="${empty oftens }">
		  					<tr>
		  						<td colspan="3" class="text-center">등록된 질문이 없습니다.</td>
		  					</tr>
		  				</c:when>
		  				<c:otherwise>		  					
				  			<c:forEach var="often" items="${oftens }">
				  				<tr>
				  					<td class="text-center">${often.no }</td>
				  					<td class="text-center">${often.oftenCategory.type }</td>
				  					<td><a href="" style="color: #000;">${often.title }</a></td>
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
</div>
<%@ include file="common/footer.jsp" %>
</body>
</html>