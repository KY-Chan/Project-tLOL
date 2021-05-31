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
<h2>
<c:if test="${board_num eq 1}">
	공지사항
</c:if>
<c:if test="${param.board_num eq 2}">
	뉴스
</c:if>
<c:if test="${param.board_num eq 3}">
	자유게시판
</c:if>
<c:if test="${param.board_num eq 4}">
	매칭게시판
</c:if>
<c:if test="${param.board_num eq 5}">
	갤러리/영상
</c:if>
<c:if test="${param.board_num eq 6}">
	팁/노하우
</c:if>
</h2>
<table>
		<tr>
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
						<th colspan="5">삭제된 게시글 입니다</th>
					</c:if>
					<c:if test="${article.article_del != 'y' }">
						<td title="${article.article_title }">
							<a href="content.do?article_num=${article.article_num}&board_num=${article.board_num}&pageNum=${currentPage }">
								${article.article_title}</a>
								<c:if test="${article.article_read > 50 }">
									<img alt="" src="images/hot.gif">
								</c:if>
						</td>
						<td>${article.account_num }</td>
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
			<button onclick="location.href='news.jsp?pageNum=${startPage - 1}'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<button onclick="location.href='news.jsp?pageNum=${i}'">${i }</button>
		</c:forEach>
		<c:if test="${endPage < totalPage}">
			<button onclick="location.href='news.jsp?pageNum=${endPage + 1}'">다음</button>
		</c:if>
		<br>
		<button onclick="location.href='writeForm.do?num=0&pageNum=1'">글쓰기</button>
	</div>
</body>
</html>