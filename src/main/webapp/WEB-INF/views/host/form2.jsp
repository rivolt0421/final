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
<link href="/favicon.ico" rel="icon" type="image/x-icon">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
<style type="text/css">
th{
font-family: 'Do Hyeon', sans-serif;
}
td{
font-family: 'IBM Plex Sans KR', sans-serif;
}
</style>
</head>
<body>
<div class="container">
<div class="list">
	<ul>
		<li>[이용규칙관리] 는 업체 공통적인 정책을 기입하는 란입니다. (체크인, 체크아웃, 성수기 설정 등)</li>
		<li>우측 물음표를 클릭하시면 앱에서 어떻게 표시되는지 확인이 가능합니다.</li>
    </ul>
    <form>
		<table class="table table-bordered">
			<colgroup>
				<col width="10%" class="bg-secondary p-2 text-white bg-opacity-25">
				<col width="77%">
			</colgroup>
			<tbody>
				<tr>
					<th class="text-center align-middle">이용시간</th>
					<td>
						<div class=" row mb-4">
							<div class="col-2">체크인<br>가능시간</div>
							<select class="form-select w-auto" name="checkin" style="width: 250px; height:45px;">
	                            <option value="13" selected="">오후 01:00</option>
	                            <option value="14">오후 02:00</option>
	                            <option value="15">오후 03:00</option>
	                            <option value="16">오후 04:00</option>
	                            <option value="17">오후 05:00</option>
	                            <option value="18">오후 06:00</option>
	                            <option value="19">오후 07:00</option>
	                            <option value="20">오후 08:00</option>
                            </select>
						</div>
						<div class=" row">
							<div class="col-2">체크아웃<br>가능시간</div>
							<select class="form-select w-auto" name="checkout" style="width: 250px; height: 45px;">
	                            <option value="10" selected="">오전 10:00</option>
	                            <option value="11">오전 11:00</option>
	                            <option value="12">오후 12:00</option>
	                            <option value="13">오후 01:00</option>
	                            <option value="14">오후 02:00</option>
	                            <option value="15">오후 03:00</option>
	                            <option value="16">오후 04:00</option>
	                            <option value="17">오후 05:00</option>
                            </select>
						</div>
					</td>
				</tr>
				<tr>
					<th class="text-center align-middle">예약 마감<br>시간 설정</th>
					<td>
						<div>
							<select class="form-select w-auto" name="reserveEndTime" style="width: 250px; height:45px;">
                            	<option value="12">오후 12:00</option>
                                <option value="13">오후 01:00</option>
                                <option value="14">오후 02:00</option>
                                <option value="15">오후 03:00</option>
                                <option value="16">오후 04:00</option>
                                <option value="17">오후 05:00</option>
                                <option value="18">오후 06:00</option>
                                <option value="19">오후 07:00</option>
                                <option value="20">오후 08:00</option>
                                <option value="21">오후 09:00</option>
                                <option value="22" selected="">오후 10:00</option>
                                <option value="23">오후 11:00</option>
                                <option value="0">오전 12:00</option>
                                <option value="1">오전 1:00</option>
                                <option value="2">오전 2:00</option>
                            </select>
						</div>
					</td>
				</tr>
				<tr>
					<th class="text-center align-middle">성수기 설정<br>(매년 적용)</th>
					<td class="align-middle ">
						<div class="row my-2">
							<div class="col-2 pt-2">준 성수기</div>
							<div class="col-10">
                            	<div class="d-flex justify-content-start">
                                	<input type="hidden" name="subpeakId" value="">
                                    <input class="form-control me-3" type="date" name="notSubpeakStart" value="" style="width: 250px; height:45px;">
                                    <span class="me-3 pt-2"> ~ </span>
                                    <input class="form-control me-3" type="date" name="notsubpeakEnd" value="" style="width: 250px; height:45px;">
                                    <button type="button" class="btn btn-danger">삭제</button>
                                </div>
                     		</div>
                     	</div>
	                    <hr/>
	                    <div class="row">
	                        <div class="col-2 pt-2">성수기</div>
	                     	<div class="col-10">
		                         <div class="d-flex justify-content-start">
			                         <input type="hidden" name="subpeakId" value="">
			                         <input class="form-control me-3" type="date" id="subpeakStart" name="subpeakStart" value="" style="width: 250px; height:45px;">
			                         <span class="me-3 pt-2"> ~ </span>
			                         <input class="form-control me-3" type="date" id="subpeakEnd" name="subpeakEnd" value="" style="width: 250px; height:45px;">
			                         <button type="button" class="btn btn-danger">삭제</button>
		                         </div>
	                         </div>
                         </div>
		                </div>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="position-absolute start-50 pb-5">
			<button class="btn btn-danger btn-lg" name="submit" type="submit">저장하기</button>
		</div>
	</form>
</div>
</div>
<script type="text/javascript">
</script>
</body>
</html>