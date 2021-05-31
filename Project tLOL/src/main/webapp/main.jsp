<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.83.1">
<title>Main page</title>

<!-- Bootstrap core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link href="bootstrap/css/headers.css" rel="stylesheet">
<link href="bootstrap/css/sidebar.css" rel="stylesheet">
<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/headers/">

<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
</style>
</head>
<body>
	<header class="p-3 mb-3 border-bottom">
		<div class="container">
			<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<a class="navbar-brand" href="#"> <img src="images/logo.png" alt="" width="230" height="100"></a>
				<form class="col-12 col-lg-auto mb-2 mb-lg-0 me-lg-auto">
					<input type="search" class="form-control" placeholder="소환사명 검색..." aria-label="Search">
				</form>
				<c:choose>
					<c:when test="${member.account_id == null }">
						<div class="dropdown text-end">
							<button type="button" class="btn btn-light text-dark me-2" onclick="location.href='Accounts/loginForm.do'">Login</button>
						</div>
					</c:when>
					<c:when test="${member.account_id != null }">
						<div class="dropdown text-end">
							<c:choose>
								<c:when test="${member.account_admin == 0 }">
									<span class="textUserNick">${member.account_nickname }</span>
									<span class="textUserEnd">님 환영합니다</span>
									<button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" 
									data-bs-display="static" aria-expanded="false">내정보</button>
									<ul class="dropdown-menu dropdown-menu-end">
										<li><a class="dropdown-item" href="Accounts/updateForm.do">회원정보 수정</a></li>
										<li><a class="dropdown-item" href="#">내글보기 & 내댓글보기</a></li>
										<li><hr class="dropdown-divider"></li>
										<li><a class="dropdown-item" href="Accounts/logout.do">로그아웃</a></li>
									</ul>
								</c:when>
								<c:when test="${member.account_admin == 1 }">
									<span class="textUserNick">관리자</span>
									<span class="textUserEnd">님 환영합니다</span>
									<button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" 
									data-bs-display="static" aria-expanded="false">관리메뉴</button>
									<ul class="dropdown-menu dropdown-menu-end">
										<li><a class="dropdown-item" href="#">회원관리</a></li>
										<li><a class="dropdown-item" href="#">게시글 관리</a></li>
										<li><hr class="dropdown-divider"></li>
										<li><a class="dropdown-item" href="Accounts/logout.do">로그아웃</a></li>
									</ul>
								</c:when>
							</c:choose>
						</div>
					</c:when>
				</c:choose>
			</div>
		</div>
	</header>
	
	<!-- Sidebar -->
	<div class="flex-shrink-0 p-3 bg-white" style="width: 215px;">
		<input type="search" class="mb-4 form-control" placeholder="게시판 검색..." aria-label="Search">
		<span class="fs-5 fw-semibold">멀티서치??</span>
		<ul class="list-unstyled ps-0">
			<li class="border-top my-3"></li>
			<li class="mb-1">
				<button class="btn btn-toggle align-items-center rounded collapsed"
					data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">뉴스&정보</button>
				<div class="collapse show" id="home-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="#" class="link-dark rounded">news1</a></li>
						<li><a href="#" class="link-dark rounded">news2</a></li>
						<li><a href="#" class="link-dark rounded">news3</a></li>
					</ul>
				</div>
			</li>
			<li class="mb-1">
				<button class="btn btn-toggle align-items-center rounded collapsed"
					data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">커뮤니티</button>
				<div class="collapse show" id="dashboard-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="#" class="link-dark rounded">community1</a></li>
						<li><a href="#" class="link-dark rounded">community2</a></li>
						<li><a href="#" class="link-dark rounded">community3</a></li>
						<li><a href="#" class="link-dark rounded">community4</a></li>
					</ul>
				</div>
			</li>
			<li class="mb-1">
				<button class="btn btn-toggle align-items-center rounded collapsed"
					data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">매칭</button>
				<div class="collapse show" id="orders-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="#" class="link-dark rounded">matching</a></li>
						<li><a href="#" class="link-dark rounded">matching</a></li>
						<li><a href="#" class="link-dark rounded">matching</a></li>
						<li><a href="#" class="link-dark rounded">matching</a></li>
					</ul>
				</div>
			</li>
			<li class="border-top my-3"></li>
			<li class="mb-1">
				<button class="btn btn-toggle align-items-center rounded collapsed"
					data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">blah blah</button>
				<div class="collapse show" id="account-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="#" class="link-dark rounded">blah...</a></li>
						<li><a href="#" class="link-dark rounded">blah</a></li>
						<li><a href="#" class="link-dark rounded">blah</a></li>
						<li><a href="#" class="link-dark rounded">blah</a></li>
					</ul>
				</div>
			</li>
		</ul>
	</div>
	<script src="bootstrap/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
	<script src="../bootstrap/js/sidebar.js"></script>
</body>
</html>