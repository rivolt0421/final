<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="tags.jsp" %>
   <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
          <!-- 브랜드 로고 -->
          <h1 class="brand_logo"><a href="/" title="굿초이스">굿초이스</a></h1>
          <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="#">내주변</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="${empty LOGIN_USER ? '/login' : '/user/reservation'}">예약내역</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  더보기
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="/more/event">이벤트</a></li>
                  <li><a class="dropdown-item" href="/more/faq">자주 묻는 질문</a></li>
                  <li><a class="dropdown-item" href="/more/inquiry">1:1 문의</a></li>
                </ul>
              </li>
			  <c:if test="${empty LOGIN_USER }">
              <li class="nav-item">
                <a class="nav-link" href="/login">로그인</a>
              </li>
			  </c:if>
			  <c:if test="${not empty LOGIN_USER }">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  <img src="/images/ico_1.png" alt="" width="21px" height="21px">
                </a>
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="/user/myinfo">내정보</a></li>
                  <li><a class="dropdown-item" href="/user/point">포인트</a></li>
                  <li><a class="dropdown-item" href="/user/couponbox">쿠폰함</a></li>
                  <li><a class="dropdown-item" href="/user/reservation">예약내역</a></li>
                  <li><a class="dropdown-item" href="/logout">로그아웃</a></li>
                </ul>
              </li>
			  </c:if>
            </ul>
          </div>
            <button class="btn_srch srch_open" type="button"><i class="fas fa-magnifying-glass"></i></button>
            <input id="keyword" class="me-2 srch_bar" placeholder="지역, 숙소명" autocomplete="off" style="display: none;"/>
            <button class="btn_cancel" type="button" onclick="srch_close()" style="display: none;"><i class="fas fa-xmark"></i></button>
        </div>
    </nav>