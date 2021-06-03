<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.83.1">
<title>롤 전적 검색 - tLOL</title>
<link rel="icon" href="images/icon.png">

<link href="main.css" rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link href="bootstrap/css/headers.css" rel="stylesheet">
<link href="bootstrap/css/sidebar.css" rel="stylesheet">
<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/headers/">
</head>

<body>
	<header class="p-3 mb-3 border-bottom">
		<div class="container">
			<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<a class="navbar-brand" href="#"> <img src="images/logo.png" alt="" width="230" height="100"></a>
					<form class="summoner-search-form" action="#">
						<input type="search" class="summoner-search-form__text" placeholder="소환사명 검색..." aria-label="Search">
						<button type="submit" class="summoner-search-form__button"><i class="__spSite"></i></button>
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
										<li><a class="dropdown-item" href="#">내 글 관리</a></li>
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
</body>
</html>