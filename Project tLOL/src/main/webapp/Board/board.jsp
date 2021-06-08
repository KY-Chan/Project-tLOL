<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-10 bd-content">
	<h2>${board_name }</h2>
	<table class="table table-hover">
		<tr class="table-primary">
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
						<td>${article.member_nickname }</td>
						<td>${article.article_read}</td>
						<td>${article.article_recom}</td>
						<td>${article.article_date}</td>
					</c:if>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<div align="center">
		<c:if test="${not empty keyword }">
			<c:set var="boardAndKey" value="board_num=${board_num }&keyword=${keyword }"></c:set>
		</c:if>
		<c:if test="${empty keyword }">
			<c:set var="boardAndKey" value="board_num=${board_num }"></c:set>
		</c:if>
		<c:if test="${startPage > PAGE_PER_BLOCK}">
			<button class="btn btn-primary" onclick="location.href='board.do?${boardAndKey }&pageNum=${startPage - 1}'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<button class="btn btn-primary" onclick="location.href='board.do?${boardAndKey }&pageNum=${i}'">${i }</button>
		</c:forEach>
		<c:if test="${endPage < totalPage}">
			<button class="btn btn-primary" onclick="location.href='board.do?${boardAndKey }&pageNum=${endPage + 1}'">다음</button>
		</c:if>
		<br><br>
		<c:if test="${not empty member_id }">
			<button class="btn btn-primary" onclick="location.href='articleWriteForm.do?board_num=${board_num }&pageNum=1'">글쓰기</button>
		</c:if>
		<br>
		<form action="board.do" method="get">
			<input type="hidden" name="board_num" value="${board_num }">
			<input type="search" name="keyword" class="mb-4 form-control" placeholder="게시판 검색..." aria-label="Search">
			<input type="submit">
		</form>
	</div>
	
	</div>
</body>

<script src="../bootstrap/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="../bootstrap/js/sidebar.js"></script>	
</html>