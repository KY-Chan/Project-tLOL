<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.83.1">

<!-- Bootstrap core CSS -->
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link href="../bootstrap/css/headers.css" rel="stylesheet">
<link href="../bootstrap/css/sidebar.css" rel="stylesheet">
<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/headers/">
</head>
<body>
<header class="p-3 mb-3 border-bottom">

		<div class="container-fluid">

		<div class="row flex-nowrap">	
		<div class="d-flex flex-wrap align-items-center justify-content-center">
			<a class="navbar-brand" href="#"> <img src="/Project_tLOL/images/logo.png" alt="" width="230" height="100"></a>
			<form class="col-lg-auto mb-2 mb-lg-0 me-lg-auto">
				<input type="search" class="form-control" placeholder="소환사명 검색..." aria-label="Search">
			</form>
			<div class="dropdown text-end">
				<button type="button" class="btn btn-light text-dark me-2" onclick="location.href='Accounts/loginForm.do'">Login</button>
				<button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" 
				data-bs-display="static" aria-expanded="false">회원</button>
				<ul class="dropdown-menu dropdown-menu-end">
					<li><a class="dropdown-item" href="Accounts/updateForm.do">회원정보 수정</a></li>
					<li><a class="dropdown-item" href="/Project_tLOL/Boards/myArticle.jsp">내 글 보기</a></li>
					<li><a class="dropdown-item" href="/Project_tLOL/Boards/myComment.jsp">내 댓글 보기</a></li>
					<li><hr class="dropdown-divider"></li>
					<li><a class="dropdown-item" href="Accounts/logout.do">로그아웃</a></li>
				</ul>
			</div>
		</div>
		</div>
		</div>
	</header>
	
	<!-- Sidebar -->

	
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
		
	<div class="col-10 bd-content">
	<h2>${board_name }</h2>
	<table class="table table-hover">
		<tr class="table-primary">
			<c:if test="${board_num eq 0 }">
				<th>게시판</th>
			</c:if>
			<th>글번호</th>
			<th>글제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>추천수</th>
			<th>작성일</th>
		</tr>
		<c:if test="${empty list }">
			<tr>
				<th colspan="6">게시글이 없습니다</th>
			</tr>
		</c:if>
		<c:if test="${not empty list }">
			<c:forEach var="article" items="${list }">
				<tr>
					<td>${article.article_num }</td>
					<c:if test="${article.article_del == 'y' }">
						<th colspan="6">삭제된 게시글 입니다</th>
					</c:if>
					<c:if test="${article.article_del != 'y' }">
						<td title="${article.article_title }">
						<a href="content.do?article_num=${article.article_num}&board_num=${article.board_num}&pageNum=${currentPage }">
								${article.article_title}</a>
						<c:if test="${article.article_read > 50 }">
							<img alt="" src="images/hot.gif">
						</c:if></td>
						<td>${article.account_nickname }</td>
						<td>${article.article_read}</td>
						<td>${article.article_recom}</td>
						<td>${article.article_date}</td>
					</c:if>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<div align="center">
		<c:if test="${startPage > PAGE_PER_BLOCK}">
			<button onclick="location.href='board.do?board_num=${board_num }&pageNum=${startPage - 1}'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<button onclick="location.href='board.do?board_num=${board_num }&pageNum=${i}'">${i }</button>
		</c:forEach>
		<c:if test="${endPage < totalPage}">
			<button onclick="location.href='board.do?board_num=${board_num }&pageNum=${endPage + 1}'">다음</button>
		</c:if>
		<br>
		<button onclick="location.href='writeForm.do?board_num=${board_num }&pageNum=1'">글쓰기</button>
	</div>
	
	</div>
	</div>
</body>

<script src="../bootstrap/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="../bootstrap/js/sidebar.js"></script>	
</html>