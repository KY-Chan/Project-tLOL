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
<title>롤 전적 검색 - tLOL</title>
<link rel="icon" href="images/icon.png">

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
      
	  .form-control-dark {
	  color: #fff;
	  background-color: var(--bs-dark);
	  border-color: var(--bs-gray);
	}
	
	  .form-control-dark:focus {
	  color: #fff;
	  background-color: var(--bs-dark);
	  border-color: #fff;
	  box-shadow: 0 0 0 .25rem rgba(255, 255, 255, .25);
	}
</style>

<!-- Custom styles for this template -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    
</head>
<body>
	<header class="p-3 mb-3 border-bottom bg-dark text-white">
		<div class="container">
			<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<a class="navbar-brand" href="#"> <img src="images/logo.png" alt="" width="230" height="100"></a>
				<div class="col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0"></div>
				<div class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
				    <form class="input-group">
				      <input type="search" class="form-control form-control-dark" placeholder="Search..." aria-label="Search">
				      <button class="btn btn-outline-secondary" type="button" id="button-addon2"><i class="fa fa-search"></i></button>
				    </form>
			    </div>
				<c:choose>
					<c:when test="${member.account_id == null }">
						<div class="dropdown text-end">
							<button type="button" class="btn btn-outline-secondary text-white me-2" onclick="location.href='Accounts/loginForm.do'">Login</button>
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
									<button type="button" class="btn btn-warning dropdown-toggle" data-bs-toggle="dropdown" 
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

	<div class="container-fluid">
		<div class="row flex-nowrap">
		<div class="col-2 flex-shrink-0 p-3 bg-white" style="width: 215px;">
			<input type="search" class="mb-4 form-control" placeholder="게시판 검색..." aria-label="Search">
			<span class="fs-5 fw-semibold">멀티서치??</span>
			<ul class="list-unstyled ps-0">
				<li class="border-top my-3"></li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">뉴스&정보</button>
					<div class="collapse show" id="home-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="/Project_tLOL/Boards/notice.jsp" class="link-dark rounded">공지사항</a></li>
							<li><a href="/Project_tLOL/Boards/news.jsp" class="link-dark rounded">뉴스</a></li>
						</ul>
					</div>
				</li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">커뮤니티</button>
					<div class="collapse show" id="dashboard-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="/Project_tLOL/Boards/free.jsp" class="link-dark rounded">자유게시판</a></li>
							<li><a href="/Project_tLOL/Boards/tip.jsp" class="link-dark rounded">팁/노하우</a></li>
							<li><a href="/Project_tLOL/Boards/meida.jsp" class="link-dark rounded">이미지/영상</a></li>
						</ul>
					</div>
				</li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">매칭</button>
					<div class="collapse show" id="orders-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="/Project_tLOL/Boards/match.jsp" class="link-dark rounded">매칭게시판</a></li>
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
		
		<!-- Content Start -->
		<div class="col-10 bd-content">
	    <h1>CONTENT 시작!!!!!!!!!!!!</h1>
	    <p class="lead">Basic grid layouts to get you familiar with building within the Bootstrap grid system.</p>
	    <p>In these examples the <code>.themed-grid-col</code> class is added to the columns to add some theming. This is not a class that is available in Bootstrap by default.</p>
	
	    <h2 class="mt-4">Five grid tiers</h2>
	    <p>There are five tiers to the Bootstrap grid system, one for each range of devices we support. Each tier starts at a minimum viewport size and automatically applies to the larger devices unless overridden.</p>
	
	    <div class="row mb-3">
	      <div class="col-4 themed-grid-col">.col-4</div>
	      <div class="col-4 themed-grid-col">.col-4</div>
	      <div class="col-4 themed-grid-col">.col-4</div>
	    </div>
	
	    <div class="row mb-3">
	      <div class="col-sm-4 themed-grid-col">.col-sm-4</div>
	      <div class="col-sm-4 themed-grid-col">.col-sm-4</div>
	      <div class="col-sm-4 themed-grid-col">.col-sm-4</div>
	    </div>
	
	    <div class="row mb-3">
	      <div class="col-md-4 themed-grid-col">.col-md-4</div>
	      <div class="col-md-4 themed-grid-col">.col-md-4</div>
	      <div class="col-md-4 themed-grid-col">.col-md-4</div>
	    </div>
	
	    <div class="row mb-3">
	      <div class="col-lg-4 themed-grid-col">.col-lg-4</div>
	      <div class="col-lg-4 themed-grid-col">.col-lg-4</div>
	      <div class="col-lg-4 themed-grid-col">.col-lg-4</div>
	    </div>
	
	    <div class="row mb-3">
	      <div class="col-xl-4 themed-grid-col">.col-xl-4</div>
	      <div class="col-xl-4 themed-grid-col">.col-xl-4</div>
	      <div class="col-xl-4 themed-grid-col">.col-xl-4</div>
	    </div>
	
	    <div class="row mb-3">
	      <div class="col-xxl-4 themed-grid-col">.col-xxl-4</div>
	      <div class="col-xxl-4 themed-grid-col">.col-xxl-4</div>
	      <div class="col-xxl-4 themed-grid-col">.col-xxl-4</div>
	    </div>
	    
	    <!-- Content table for YChan:) -->
	    테이블 시자아아아아악!!!!!!
	    <table class="table table-hover"> <!-- hover기능 싫으면 왼쪽 table-hover지우면됨 -->
					<thead>
						<tr>
							<th scope="col">Class</th>
							<th scope="col">Heading</th>
							<th scope="col">Heading</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">Default</th>
							<td>Cell</td>
							<td>Cell</td>
						</tr>

						<tr class="table-primary">
							<th scope="row">Primary</th>
							<td>Cell</td>
							<td>Cell</td>
						</tr>
						<tr class="table-secondary">
							<th scope="row">Secondary</th>
							<td>Cell</td>
							<td>Cell</td>
						</tr>
						<tr class="table-success">
							<th scope="row">Success</th>
							<td>Cell</td>
							<td>Cell</td>
						</tr>
						<tr class="table-danger">
							<th scope="row">Danger</th>
							<td>Cell</td>
							<td>Cell</td>
						</tr>
						<tr class="table-warning">
							<th scope="row">Warning</th>
							<td>Cell</td>
							<td>Cell</td>
						</tr>
						<tr class="table-info">
							<th scope="row">Info</th>
							<td>Cell</td>
							<td>Cell</td>
						</tr>
						<tr class="table-light">
							<th scope="row">Light</th>
							<td>Cell</td>
							<td>Cell</td>
						</tr>
						<tr class="table-dark">
							<th scope="row">Dark</th>
							<td>Cell</td>
							<td>Cell</td>
						</tr>
					</tbody>
				</table> <!-- Content table end -->
		</div> <!-- content end -->
		</div>
	</div>
	<script src="bootstrap/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
	<script src="../bootstrap/js/sidebar.js"></script>	
</body>
</html>
