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
	<!-- 탭 -->
	<div class="">
        <ul class="nav nav-tabs">
       		<li class="nav-item" role="presentation">
		    	<button class="nav-link active" id="notReviewTab" data-bs-toggle="tab" data-bs-target="#total-tab-pane" type="button" role="tab" aria-controls="total-tab-pane" aria-selected="true">미답변 리뷰</button>
		   	</li>
		    <li class="nav-item" role="presentation">
		    	<button class="nav-link" id="house-tab" data-bs-toggle="tab" data-bs-target="#house-tab-pane" type="button" role="tab" aria-controls="house-tab-pane" aria-selected="false">전체 리뷰</button>
		    </li>
        </ul>
    	<!-- 리뷰 내용 -->
		<div class="border">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
			</ul>
				<table class="table pt-3 mt-3 border w-75">
					<thead>
						<tr>
							<th scope="col" class="table-danger text-center">리뷰 평균 평점</th>
							<th scope="col" class="text-center"><span>0</span></th>
							<th scope="col" class="table-danger text-center">리뷰 갯수</th>
							<th scope="col" class="text-center"><span>0</span> 건</th>
						</tr>
					</thead>
				</table>
			<div class="">
				<center><img src="" alt=""><br>리뷰가 없습니다.</center>
			</div>
			<div class="row text-center padding-bottom pagination" style="margin-left:auto; margin-right:auto; display: table;">
			
			</div>  
		</div>
	</div>   
</div>
</body>
</html>