<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>여행할때 굿초이스</title>
<link href="/css/font.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">
<link href="/favicon.ico" rel="icon" type="image/x-icon">

<link href="/css/home.css" rel="stylesheet">
<script src="/script/common.js"></script>
<script src="https://kit.fontawesome.com/4f71b1e252.js" crossorigin="anonymous"></script>

<style>

</style>
</head>
<body>
<%@ include file="../common/nav.jsp" %>
<link href="/css/mypage.css" rel="stylesheet">
<div class="wrap show">
	<div class="sub_top_wrap">
		<div class="sub_top bg_kong_2">
			<h2>내정보 </h2>
		</div>
	</div>
	
		<div id="content" class="sub_wrap my_wrap">
		    <div class="side">
		        <ul style="padding-left: 0rem;">
		            <li><a class="active" href="/user/point" style="text-decoration: none;">포인트</a></li>
		            <li><a class="" href="/user/couponbox" style="text-decoration: none;">쿠폰함</a></li>
		            <li><a class="" href="/user/reservation" style="text-decoration: none;">예약 내역</a></li>
		            <li><a class="" href="/user/myinfo" style="text-decoration: none;">내 정보 관리</a></li>
		        </ul>
	   	 	</div>
			<div class="right">
		        <input type="hidden" name="page" value="1">
		        <div>
		            <div class="point_show gra_red">
		                <span>사용 가능 포인트</span>
		                <strong id="point-page-show">${user.point } <!-- 현재가지고있는 유저 총 포인트 --> P</strong>
		            </div>
		
		            <ul class="point_list"></ul>
		        </div>
		
		        
		        
		        <!-- 리스트 있을시 -->
		        <section class="points-list" style="margin-top:30px;" >	
		        <c:forEach var="point" items="${points }"> 
					<div class="points-list__year-month"><fmt:formatDate value="${point.createdDate }"  pattern="yy년 MM월"/> <!-- xx년 xx월 --></div>
					<div class="points-list-item">
						<div class="points-list-item__wrap">
							<p class="points-list-item__name">${point.reason } </p>
							<p class="points-list-item__issued-date"> <fmt:formatDate value="${point.createdDate }"  pattern="yy.MM.dd"/> <!-- xx.xx.xx 년 월 일 --> </p>
						</div>
						<div class="points-list-item__wrap">
						<p class="points-list-item__balance text-red">
	            			+ ${point.amount } P
	            		</p> 
<!-- 	            		<p class="points-list-item__expiry-date font-weight--b">
	            			만료날짜까지 -->
	            		</p>
	            		</div>	
	            					
					</div>
		        </c:forEach>
		        </section>
	        
    		</div>
	</div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>