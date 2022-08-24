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
<script src="https://cdn.jsdelivr.net/npm/moment@2.29.4/moment.min.js"></script>
<title>여기어때 호스트하우스</title>
<style type="text/css">
	#cal_top a {color: #000;}
	#cal_top span {font-size: 45px;}

	.grid {display: grid; grid-template-columns: repeat(7, 1fr); grid-gap: 5px;}
	.grid div {border: 1px solid #666; text-align: center;}
</style>
</head>
<body>
<%@ include file="common/nav.jsp" %>
<div class="container">
	<div class="border shadow mt-4">
		<div class="row mt-4 mx-3">
			<div class="col">
				<h3 class="fw-bold fs-5">예약관리 > 예약 내역</h3>
			</div>
		</div>
		<!-- 캘린더 (년)월 이동바 -->
		<div class="row">
			<div class="col text-center" id="cal_top">
				<input type="hidden" name="date"/>
				
				<a href="#"><span id="prev_month">&lt; </span></a>
				<span id="cal_year"></span>
				<span>.</span>
				<span id="cal_month"></span>
				<a href="#"><span id="next_month"> &gt;</span></a>
			</div>
		</div>
		<!-- 캘린더 -->
		<div class="px-5">
			<table class="table table-bordered">
				<colgroup>
					<col width="14.28%">
		    		<col width="14.28%">
		    		<col width="14.28%">
		    		<col width="14.28%">
		    		<col width="14.28%">
		    		<col width="14.28%">
		    		<col width="14.28%">
				</colgroup>
				<thead>
					<tr class="text-center p-2">
						<th>일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th>토</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="row" items="${rows }" varStatus="loop">
					<tr>
						<!-- 달력의 맨 첫주의 앞쪽 빈칸 -->
						<c:if test="${row.first }">
							<c:forEach begin="1" end="${row.colspan - 1 }"><td class="p-3"></td></c:forEach>
						</c:if>
						
						<!-- 달력의 데이터 칸을 채운다. -->
						<c:forEach var="cell" items="${row.cells }" varStatus="loop">
							<td class="p-3">
								<div><strong>
									<fmt:formatDate value="${cell.date }" pattern="d"/>
								</strong></div>
								<c:forEach var="reserve" items="${cell.item.reservations }" varStatus="subLoop">
									<div>
										<c:choose>
											<c:when test="${subLoop.index mod 4  eq 0}">
												<span class="badge text-bg-primary" style="font-size: 10px;">${reserve.houseName}</span>
											</c:when>
											<c:when test="${subLoop.index mod 4  eq 1}">
												<span class="badge text-bg-danger" style="font-size: 10px;">${reserve.houseName}</span>
											</c:when>
											<c:when test="${subLoop.index mod 4  eq 2}">
												<span class="badge text-bg-success" style="font-size: 10px;">${reserve.houseName}</span>
											</c:when>
											<c:when test="${subLoop.index mod 4  eq 3}">
												<span class="badge text-bg-warning" style="font-size: 10px;">${reserve.houseName}</span>
											</c:when>
										</c:choose>
									</div>
								</c:forEach>
							</td>
						</c:forEach>
						
						<!-- 달력의 맨 마직막 주의 뒷쪽 빈칸 -->
						<c:if test="${row.last }">
							<c:forEach begin="1" end="${row.colspan }">
								<td class="p-3"></td>
							</c:forEach>
						</c:if>
						
					</tr>
				</c:forEach>
					
			</table>
		</div>
	</div>
</div>
<%@ include file="common/footer.jsp" %>
<script type="text/javascript">
	// 오늘 년도와 월 구하기
	let currentYear = moment().format('YYYY');
	let currentMonth = moment().format('MM');
	let currentDate = currentYear + "-" + currentMonth + "-01";
	
	// 오늘 날짜에  해당하는 년도와 월 값 전달하기
	$("input[name=date]").val(currentDate);
	$("#cal_year").text(currentYear)
	$("#cal_month").text(currentMonth)
	
	// 이전 버튼 클릭하면 
	$('#prev_month').click(function() {
		getDate(-1)
		location.href = "/reserve?date=" + $("input[name=date]").val();
	})
	
	$("#next_month").click(function() {
		getDate(1)
		location.href = "reserve?date=" + $("input[name=date]").val();
	});
	
	
	function getDate(value) {
		// 년도와 월 읽어오기
		let year = parseInt($("#cal_year").text());
		let month = parseInt($("#cal_month").text());
		
		// 
		month = month + value;
		
		if (month == 0) {
			// 월이 0이면 년도 검소, 12월로 변경
			year--;
			month = 12;
		} else if (month == 13) {
			// 월이 13이면 년도 증가, 1월로 변경
			year++;
			month = 1;
		} 
		
		// 년도와 월에 year, month 구한 값 넣기
		$("#cal_year").text(year);
		$('#cal_month').text(month < 10 ? '0' + month : month);
		
		// date에 년도-월-01 담기
		let date = year + "-" + (month < 10 ? '0' + month : month) + "-01";
		
		// input[name=date]에 date 값 
		$("input[name=date]").val(date);
		
	}

	/* $('#prev').click(function() {
	let monthValue = $('cal_month').val();
	$('cal-month').text(monthValue - 1);
	}) */
	/* function count(type) {
	// 결과 표시할 월 element
	const resultMonthElement = document.getElementById("month-result");
	const resultYearElement = document.getElementById("year-result");
	
	// 현재 표시된 값
	let monthNumber = resultMonthElement.innerText;
	let yearNumber = resultYearElement.innerText;
	
	// 값 더하기 빼기
	if(type === 'plus') {
		
	monthNumber = parseInt(monthNumber) + 1;
	
	} else if (type === 'minus') {
	monthNumber = parseInt(monthNumber) - 1;
	}
	
	// 출력
	resultMonthElement.innerText = monthNumber;
	} */
	
	

</script>
</body>
</html>