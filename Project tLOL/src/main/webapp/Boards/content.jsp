<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<script type="text/javascript" src="../bootstrap/js/jquery.js"></script>
<script type="text/javascript">
	/* $(function() {
		$('#disp').load('list.do?pageNum=${pageNum}');
	}); */
</script>
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
				<button type="button" class="btn btn-light text-dark me-2" onclick="location.href='/Project_tLOL/Accounts/loginForm.do'">Login</button>
				<button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" 
				data-bs-display="static" aria-expanded="false">회원</button>
				<ul class="dropdown-menu dropdown-menu-end">
					<li><a class="dropdown-item" href="/Project_tLOL/Accounts/updateForm.do">회원정보 수정</a></li>
					<li><a class="dropdown-item" href="/Project_tLOL/Boards/myArticle.jsp">내 글 보기</a></li>
					<li><a class="dropdown-item" href="/Project_tLOL/Boards/myComment.jsp">내 댓글 보기</a></li>
					<li><hr class="dropdown-divider"></li>
					<li><a class="dropdown-item" href="/Project_tLOL/Accounts/logout.do">로그아웃</a></li>
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
							<li><a href="/Project_tLOL/Boards/media.jsp" class="link-dark rounded">이미지/영상</a></li>
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
	<h2>${article.board_name }</h2>
	<table class="table table-hover">
		<tr class="table-primary"><th width="100">제목</th><td>${article.article_title }</td></tr>
		<tr class="table-primary"><th>작성자</th><td>${article.account_nickname }</td></tr>
		<tr class="table-primary"><th>조회수</th><td>${article.article_read }</td></tr>
		<tr class="table-primary"><th>작성일</th><td>${article.article_date }</td></tr>
		<tr class="table-primary"><th>추천수</th><td>${article.article_recom }</td></tr>
		<tr class="table-info"><th>내용</th><td><pre>${article.article_content }</pre></td></tr>
	</table>
<div align="center"><br>
  <c:if test="${not empty account_id }">
	  <button onclick="location.href='updateBoardForm.do?board_num=${board_num }&article_num=${article_num}&pageNum=${pageNum}'">수정</button> 
	  <button onclick="location.href='deleteBoard.do?board_num=${board_num }&article_num=${article_num}&pageNum=${pageNum}'">삭제</button> 
	</c:if>
  <button onclick="location.href='board.do?board_num=${board_num }&pageNum=${pageNum}'">게시글 목록</button>

</div>
<br><br>
<div id="disp"></div>
<form action="commentAction.do" method="post">
	<input type="hidden" name="account_num" value="${sessionScope.account_num }">
	<input type="hidden" name="board_num" value="${board_num }">
	<input type="hidden" name="article_num" value="${article_num }">
	<input type="hidden" name="pageNum" value="${pageNum }">
	<table class="table table-hover">
		<tr class="table-primary">
			<th style="width: 10%">작성자</th>
			<th style="width: 50%">내용</th>
			<th style="width: 10%">추천수</th>
			<th style="width: 20%">작성일</th>
			<th style="width: 10%"></th>
		</tr>
		<tr>
			<c:if test="${empty list }">
				<tr>
					<th colspan="5">댓글이 없습니다</th>
				</tr>
			</c:if>
			<c:if test="${not empty list }">
				<c:forEach var="comment" items="${list }">
					<tr>
						<c:if test="${comment.comm_del == 'y' }">
							<th colspan="5">삭제된 댓글 입니다</th>
						</c:if>
						<c:if test="${comment.comm_del != 'y' }">
							<td>${comment.account_nickname }</td>
							<td>${comment.comm_content}</td>
							<td>${comment.comm_recom}</td>
							<td>${comment.comm_date}</td>
							<c:if test="${account_num eq comment.account_num}">
								<td><a href="commentDelete.do?comm_num=${comment.comm_num }&article_num=${article_num }&board_num=${board_num}&pageNum=${pageNum }">삭제</a></td>
							</c:if>
						</c:if>
					</tr>
				</c:forEach>
			</c:if>
		</tr>
		<c:if test="${empty account_id }">
			<tr>
				<th colspan="5">로그인 후 댓글을 작성할 수 있습니다</th>
			</tr>
		</c:if>
		<c:if test="${not empty account_id }">
			<tr>
				<th>${sessionScope.account_nickname }</th>
				<th colspan="3"><textarea style="resize: none; box-sizing: border-box; width: 100%" name="comm_content" required="required"></textarea></th>
				<th><input type="submit" value="확인"></th>
			</tr>
		</c:if>
	</table>

</form>

</div></div>
</body>

<script src="../bootstrap/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="../bootstrap/js/sidebar.js"></script>	
</html>