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
	<title>롤 전적 검색 - tLOL</title>
	<link rel="icon" href="/Project_tLOL/images/icon.png">
	
	<!-- Bootstrap core CSS -->
	<link href="/Project_tLOL/bootstrap/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link href="/Project_tLOL/bootstrap/css/header.css" rel="stylesheet">
	<link href="/Project_tLOL/bootstrap/css/sidebar.css" rel="stylesheet">
	<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/headers/">
	<!-- Custom styles for this template -->
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

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
		
		.footer_copyright {
		    margin-top: 10px;
		    line-height: 1.5;
		    font-size: 11px;
		}
	</style>    
</head>

<body style="background-image: url('/Project_tLOL/images/background.png')">
	<header class="bg-dark text-white">
		<div class="container">
			<div class="d-flex flex-nowrap align-items-center justify-content-between">
				<a class="navbar-brand" href="/Project_tLOL/main.jsp">
					<img src="/Project_tLOL/images/logo-remove.png" alt="" width="230" height="100">
				</a>
				<div class="p-2 bd-highlight">
				    <form class="input-group">
				      <input type="search" class="form-control form-control-dark" placeholder="Search..." aria-label="Search">
				      <button class="btn btn-outline-secondary" type="button" id="button-addon2"><i class="fa fa-search"></i></button>
				    </form>
			    </div>
				<c:choose>
					<c:when test="${sessionScope.member_id == null }">
						<div class="dropdown text-end">
							<button type="button" class="btn btn-outline-secondary text-white me-2" onclick="location.href='/Project_tLOL/Member/loginForm.do'">Login</button>
						</div>
					</c:when>
					<c:when test="${sessionScope.member_id != null }">
						<div class="dropdown text-end">
							<c:choose>
								<c:when test="${sessionScope.member_admin == 0 }">
									<span class="textUserNick">${sessionScope.member_nickname }</span>
									<span class="textUserEnd">님 환영합니다!</span>
									<span style="padding: 10px"></span>
									<button type="button" class="btn btn-info dropdown-toggle" data-bs-toggle="dropdown" 
									data-bs-display="static" aria-expanded="false">내정보</button>
									<ul class="dropdown-menu dropdown-menu-end">
										<li><a class="dropdown-item" href="/Project_tLOL/Member/memberUpdateForm.do">회원정보 수정</a></li>
										<li><a class="dropdown-item" href="/Project_tLOL/Board/board.do?member_num=${sessionScope.member_num }">내 글 보기</a></li>
										<li><a class="dropdown-item" href="/Project_tLOL/Board/myComment.do?member_num=${sessionScope.member_num }">내 댓글 보기</a></li>
										<li><hr class="dropdown-divider"></li>
										<li><a class="dropdown-item" href="/Project_tLOL/Member/logout.do">로그아웃</a></li>
									</ul>
								</c:when>
								<c:when test="${sessionScope.member_admin == 1 }">
									<span class="textUserNick">관리자</span>
									<span class="textUserEnd">님 환영합니다!</span>
									<span style="padding: 10px"></span>
									<button type="button" class="btn btn-warning dropdown-toggle" data-bs-toggle="dropdown" 
									data-bs-display="static" aria-expanded="false">관리메뉴</button>
									<ul class="dropdown-menu dropdown-menu-end">
										<li><a class="dropdown-item" href="/Project_tLOL/Manager/memberManage.do">회원관리</a></li>										
										<li><a class="dropdown-item" href="/Project_tLOL/Board/manageArticle.do">게시글 관리</a></li>
										<li><hr class="dropdown-divider"></li>
										<li><a class="dropdown-item" href="/Project_tLOL/Board/board.do?member_num=${sessionScope.member_num }">내 글 보기</a></li>
										<li><a class="dropdown-item" href="/Project_tLOL/Board/myComment.do?member_num=${sessionScope.member_num }">내 댓글 보기</a></li>
										<li><hr class="dropdown-divider"></li>
										<li><a class="dropdown-item" href="/Project_tLOL/Member/logout.do">로그아웃</a></li>
									</ul>
								</c:when>
							</c:choose>
						</div>
					</c:when>
				</c:choose>
			</div>
		</div>
	</header>
	<div class="bg-primary" style="height: 20px;">
		<div class="container">
		</div>
	</div>
	
	<!-- Sidebar + Contents -->
	<aside class="row flex-nowrap">
		<!-- Sidebar -->
		<div class="col-2 flex-shrink-0 p-3 bg-dark text-white" style="width: 220px; height: 1080px;">
			<form class="input-group">
				<input type="search" class="mb-4 form-control form-control-dark" placeholder="게시판 검색..." aria-label="Search">
				<button class="mb-4 btn btn-outline-secondary" type="button" id="button-addon2"><i class="fa fa-search"></i></button>
			</form>
			<div class="fs-5 fw-semibold">멀티서치??</div>
			<ul class="list-unstyled ps-0">
				<li class="border-top my-3"></li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed text-white"
						data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">뉴스&정보</button>
					<div class="collapse show" id="home-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="/Project_tLOL/Board/board.do?board_num=1" class="link-dark rounded text-white">공지사항</a></li>
							<li><a href="/Project_tLOL/Board/board.do?board_num=2" class="link-dark rounded text-white">뉴스</a></li>
						</ul>
					</div>
				</li>
				<li class="border-top my-3"></li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed text-white"
						data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="true">커뮤니티</button>
					<div class="collapse show" id="dashboard-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="/Project_tLOL/Board/board.do?board_num=3" class="link-dark rounded text-white">자유게시판</a></li>
							<li><a href="/Project_tLOL/Board/board.do?board_num=6" class="link-dark rounded text-white">팁/노하우</a></li>
							<li><a href="/Project_tLOL/Board/board.do?board_num=5" class="link-dark rounded text-white">이미지/영상</a></li>
						</ul>
					</div>
				</li>
				<li class="border-top my-3"></li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed text-white"
						data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="true">매칭</button>
					<div class="collapse show" id="orders-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="/Project_tLOL/Board/board.do?board_num=4" class="link-dark rounded text-white">매칭게시판</a></li>
							<li><a href="#" class="link-dark rounded text-white">matching</a></li>
							<li><a href="#" class="link-dark rounded text-white">matching</a></li>
							<li><a href="#" class="link-dark rounded text-white">matching</a></li>
						</ul>
					</div>
				</li>
				<li class="border-top my-3"></li>
				<li class="mb-1">
					<button class="btn btn-toggle align-items-center rounded collapsed text-white"
						data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="true">blah blah</button>
					<div class="collapse show" id="account-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li><a href="#" class="link-dark rounded text-white">blah...</a></li>
							<li><a href="#" class="link-dark rounded text-white">blah</a></li>
							<li><a href="#" class="link-dark rounded text-white">blah</a></li>
							<li><a href="#" class="link-dark rounded text-white">blah</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		<!-- sidebar end -->
		<!-- content -->
		
			<deco:body></deco:body>
			
	     <!-- content end -->
	</aside>
	<footer class="bg-dark text-white">
		<div class="container">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link active text-white" aria-current="page" href="#">About Project-Tlol</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="#">도움말</a></li>
			</ul>
			<div class="footer_copyright text-center">
			© 2012-2021 tLOL.GG. tLOL.GG isn’t endorsed by Riot Games and doesn’t reflect the views or opinions of Riot Games or anyone officially involved in producing or managing
                            League of Legends. League of Legends and Riot Games are trademarks or registered trademarks of Riot Games, Inc. League of Legends © Riot Games, Inc.                                 
			</div>
			<div></div>
		</div>
		
	</footer>
	
	<script src="/Project_tLOL/bootstrap/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
	<script src="/Project_tLOL/bootstrap/js/sidebar.js"></script>	
</body>
</html>
