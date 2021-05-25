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
<c:if test="${board_name == 'notice'}">
	공지사항
</c:if>
<c:if test="${param.board_name eq 'news'}">
	뉴스
</c:if>
<c:if test="${param.board_name eq 'free'}">
	자유게시판
</c:if>
<c:if test="${param.board_name eq 'match'}">
	매칭게시판
</c:if>
<c:if test="${param.board_name eq 'media'}">
	갤러리/영상
</c:if>
<c:if test="${param.board_name eq 'tip'}">
	팁/노하우
</c:if>
</h2>
<table>
		<caption>게시글 목록</caption>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>이메일</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:if test="${empty list }">
			<tr>
				<th colspan="6">게시글이 없습니다</th>
			</tr>
		</c:if>
		<c:if test="${not empty list }">
			<c:forEach var="article" items="${list }">
				<tr>
					<td>${number }<c:set var="number" value="${number - 1 }"></c:set></td>
					<c:if test="${article.article_del == 'y' }">
						<th colspan="5">삭제된 게시글 입니다</th>
					</c:if>
					<c:if test="${article.article_del != 'y' }">
						<td title="${article.article_content }">
							<!--  <a href="content.do?num=${board.num}&pageNum=${currentPage }">
								${board.subject}</a> -->
								<c:if test="${article.article_read > 50 }">
								<img alt="" src="images/hot.gif">
							</c:if>
						</td>
						<td>${article.account_num }</td>
						<td>${article.article_date }</td>
						<td>${article.article_read}</td>
						<td>${article.article_recom}</td>
					</c:if>
				</tr>
			</c:forEach>
		</c:if>
	</table>

</body>
</html>