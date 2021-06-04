<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="deco" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<meta name="generator" content="Hugo 0.83.1">

	<!-- Bootstrap core CSS -->
	<link href="/Project_tLOL/bootstrap/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link href="/Project_tLOL/bootstrap/css/headers.css" rel="stylesheet">
	<link href="/Project_tLOL/bootstrap/css/sidebar.css" rel="stylesheet">
	<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/headers/">
	<title>Main page</title>
	
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
	<header class="p-3 mb-3 border-bottom bg-dark text-white">
		<div class="container">
			<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<a class="navbar-brand" href="/Project_tLOL/main.jsp">
					<img src="/Project_tLOL/images/logo-remove.png" alt="" width="230" height="100">
				</a>
				<div class="col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0"></div>
				<div class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
				    <form class="input-group">
				    	<input type="search" class="form-control form-control-dark" placeholder="소환사명 검색..." aria-label="Search">
				    	<button class="btn btn-outline-secondary" type="button" id="button-addon2">
				    		<i class="fa fa-search"></i>
				    	</button>
				    </form>
			    </div>
				<c:choose>
					<c:when test="${sessionScope.account_id == null }">
						<div class="dropdown text-end">
							<button type="button" class="btn btn-outline-secondary text-white me-2" onclick="location.href='/Project_tLOL/Accounts/loginForm.do'">Login</button>
						</div>
					</c:when>
					<c:when test="${sessionScope.account_id != null }">
						<div class="dropdown text-end">
							<c:choose>
								<c:when test="${sessionScope.account_admin == 0 }">
									<span class="textUserNick">${sessionScope.account_nickname }</span>
									<span class="textUserEnd">님 환영합니다</span>
									<button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" 
									data-bs-display="static" aria-expanded="false">내정보</button>
									<ul class="dropdown-menu dropdown-menu-end">
										<li><a class="dropdown-item" href="/Project_tLOL/Accounts/updateForm.do">회원정보 수정</a></li>
										<li><a class="dropdown-item" href="/Project_tLOL/Boards/board.do?account_num=${sessionScope.account_num }">내 글 보기</a></li>
										<li><a class="dropdown-item" href="/Project_tLOL/Boards/myComment.do?account_num=${sessionScope.account_num }">내 댓글 보기</a></li>
										<li><hr class="dropdown-divider"></li>
										<li><a class="dropdown-item" href="/Project_tLOL/Accounts/logout.do">로그아웃</a></li>
									</ul>
								</c:when>
								<c:when test="${sessionScope.account_admin == 1 }">
									<span class="textUserNick">관리자</span>
									<span class="textUserEnd">님 환영합니다</span>
									<button type="button" class="btn btn-warning dropdown-toggle" data-bs-toggle="dropdown" 
									data-bs-display="static" aria-expanded="false">관리메뉴</button>
									<ul class="dropdown-menu dropdown-menu-end">
										<li><a class="dropdown-item" href="#">회원관리</a></li>
										<li><a class="dropdown-item" href="#">게시글 관리</a></li>
										<li><hr class="dropdown-divider"></li>
										<li><a class="dropdown-item" href="/Project_tLOL/Boards/board.do?account_num=${sessionScope.account_num }">내 글 보기</a></li>
										<li><a class="dropdown-item" href="/Project_tLOL/Boards/myComment.do?account_num=${sessionScope.account_num }">내 댓글 보기</a></li>
										<li><hr class="dropdown-divider"></li>
										<li><a class="dropdown-item" href="/Project_tLOL/Accounts/logout.do">로그아웃</a></li>
									</ul>
								</c:when>
							</c:choose>
						</div>
					</c:when>
				</c:choose>
			</div>
		</div>
	</header>
	
	<!-- Sidebar + Contents -->
	<div class="row flex-nowrap">
		<!-- Sidebar -->
		<div class="col-2 flex-shrink-0 p-3 bg-white" style="width: 210px;">
			<input type="search" class="mb-4 form-control" placeholder="게시판 검색..." aria-label="Search">
			<span class="fs-5 fw-semibold">멀티서치??</span>
			<ul class="list-unstyled ps-0">
				<li class="border-top my-3"></li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">뉴스&정보</button>
					<div class="collapse show" id="home-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="/Project_tLOL/Boards/board.do?board_num=1" class="link-dark rounded">공지사항</a></li>
							<li><a href="/Project_tLOL/Boards/board.do?board_num=2" class="link-dark rounded">뉴스</a></li>
						</ul>
					</div>
				</li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">커뮤니티</button>
					<div class="collapse show" id="dashboard-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="/Project_tLOL/Boards/board.do?board_num=3" class="link-dark rounded">자유게시판</a></li>
							<li><a href="/Project_tLOL/Boards/board.do?board_num=6" class="link-dark rounded">팁/노하우</a></li>
							<li><a href="/Project_tLOL/Boards/board.do?board_num=5" class="link-dark rounded">이미지/영상</a></li>
						</ul>
					</div>
				</li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed"
						data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">매칭</button>
					<div class="collapse show" id="orders-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="/Project_tLOL/Boards/board.do?board_num=4" class="link-dark rounded">매칭게시판</a></li>
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
		<!-- sidebar end -->
		<!-- content -->
		
			<deco:body></deco:body>
			
	     <!-- content end -->
	</div>
	
	<script src="/Project_tLOL/bootstrap/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
	<script src="/Project_tLOL/bootstrap/js/sidebar.js"></script>	
</body>
</html>
