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
            <li><a href="">미답변 리뷰</a></li>
            <li class="active"><a href="">전체 리뷰</a></li>
        </ul>
    </div>
    <div class="list-layer review__content">

        <!-- 검색 -->
        <div class="row reviewSearch">
            <div class="col-md-6">
                <a href="#" onclick="">[사장님 답변 가이드(클릭)</a>]를 참고하여, 부정적인 리뷰에 적절하게 대응 해보세요.
            </div>
        </div>
        <!-- 평균 평점 / 리뷰 수-->
        <div class="">
            <ul class="row text-center">
                <li class="col-md-3">리뷰 평균 평점</li>
                <li class="col-md-3"><span>0</span></li>
                <li class="col-md-3">리뷰 갯수</li>
                <li class="col-md-3"><span>0</span> 건</li>            
            </ul>
        </div>   
        <div class="">
            <center><img src="" alt=""><br>리뷰가 없습니다.</center>
        </div>
		<div class="row text-center padding-bottom pagination" style="margin-left:auto; margin-right:auto; display: table;">
			
		</div>        
    </div>
</div>
</body>
</html>