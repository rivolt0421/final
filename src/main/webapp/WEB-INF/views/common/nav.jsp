<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="tags.jsp" %>
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: #f7323f;">
        <div class="container">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <!-- 브랜드 로고 -->
          <a class="navbar-brand" href="/"><img src="images/whitetext.png" alt="" width="96" height="21"></a>
          <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="#">내주변</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">예약내역</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  더보기
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="#">공지사항</a></li>
                  <li><a class="dropdown-item" href="#">이벤트</a></li>
                  <li><a class="dropdown-item" href="#">자주 묻는 질문</a></li>
                  <li><a class="dropdown-item" href="#">1:1 문의</a></li>
                  <li><a class="dropdown-item" href="#">약관 및 정책</a></li>
                </ul>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="/login">로그인</a>
              </li>
            </ul>
            <form class="d-flex">
              <input class="form-control me-2" type="search" />
              <button class="btn btn-outline-light" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
            </form>
          </div>
        </div>
    </nav>