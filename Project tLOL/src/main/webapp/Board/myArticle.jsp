<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<div class="col-10 bd-content">
	<h2>내가 쓴 글</h2>
	<table class="table table-hover">
		<tr class="table-primary">
			<th>게시판</th>
			<th>글번호</th>
			<th>글제목</th>
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
					<td>${article.board_name }</td>
					<td>${article.article_num }</td>
					<c:if test="${article.article_del == 'y' }">
						<th colspan="5">삭제된 게시글 입니다</th>
					</c:if>
					<c:if test="${article.article_del != 'y' }">
						<td>
							<a href="content.do?article_num=${article.article_num}&board_num=${article.board_num}&pageNum=${currentPage }">
								${article.article_title}</a>
						</td>
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
			<button onclick="location.href='myArticle.do?member_num=${member_num }&pageNum=${startPage - 1}'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<button onclick="location.href='myArticle.do?member_num=${member_num }&pageNum=${i}'">${i }</button>
		</c:forEach>
		<c:if test="${endPage < totalPage}">
			<button onclick="location.href='myArticle.do?member_num=${member_num }&pageNum=${endPage + 1}'">다음</button>
		</c:if>
	</div>
</div>

</html>