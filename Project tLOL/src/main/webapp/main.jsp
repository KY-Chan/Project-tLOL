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
	
	@media ( min-width : 768px) {
		.bd-placeholder-img-lg {
			font-size: 3.5rem;
		}
	}
</style>
</head>
<body>
	<header class="p-3 mb-3 border-bottom">
		<div class="container-fluid">
		<div class="row flex-nowrap">	
		<div class="d-flex flex-wrap align-items-center justify-content-center">
			<a class="navbar-brand" href="#"> <img src="images/logo.png" alt="" width="230" height="100"></a>
			<form class="col-lg-auto mb-2 mb-lg-0 me-lg-auto">
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