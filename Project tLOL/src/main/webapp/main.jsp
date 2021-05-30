<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<div class="dropdown text-end">
					<button type="button" class="btn btn-light text-dark me-2" onclick="location.href='Accounts/loginForm.do'">Login</button>
					<button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" 
					data-bs-display="static" aria-expanded="false">회원</button>
					<ul class="dropdown-menu dropdown-menu-end">
						<li><a class="dropdown-item" href="Accounts/updateForm.do">회원정보 수정</a></li>
						<li><a class="dropdown-item" href="#">내글보기 & 내댓글보기</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="Accounts/logout.do">로그아웃</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<script src="bootstrap/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>