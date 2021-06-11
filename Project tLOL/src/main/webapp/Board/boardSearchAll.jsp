<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<div class="col-10 bd-content text-white">
	<br>
	<h2>전체 게시글 검색 결과</h2>
	총 ${total } 개
	<br>
	<table id="board">
		<tr class="table-primary">
			<th style="width:10%;">게시판</th>
			<th style="width:10%;">글번호</th>
			<th style="width:30%;">글제목</th>
			<th style="width:10%;">작성자</th>
			<th style="width:10%;">조회수</th>
			<th style="width:10%;">추천수</th>
			<th style="width:20%;">작성일</th>
		</tr>
		<c:if test="${empty list }">
			<tr>
				<td colspan="6">게시글이 없습니다</td>
			</tr>
		</c:if>
		<c:if test="${not empty list }">
			<c:forEach var="article" items="${list }">
				<tr>
					<td>${article.board_name }</td>
					<td>${article.article_num }</td>
					<c:if test="${article.article_del == 'y' }">
						<td colspan="6">삭제된 게시글 입니다</td>
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
			<button class="btn btn-primary" onclick="location.href='boardSearchAll.do?${boardAndKey }&pageNum=${startPage - 1}'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<button class="btn btn-primary" onclick="location.href='boardSearchAll.do?${boardAndKey }&pageNum=${i}'">${i }</button>
		</c:forEach>
		<c:if test="${endPage < totalPage}">
			<button class="btn btn-primary" onclick="location.href='boardSearchAll.do?${boardAndKey }&pageNum=${endPage + 1}'">다음</button>
		</c:if>
		<br>	
		<div class="p-2 bd-highlight" style="width:30%; min-width:20%;">
			<form action="boardSearchAll.do" method="get" class="input-group">
				<input type="hidden" name="board_num" value="${board_num }">
				<input type="hidden" name="board_name" value="${board_name }">
				<input type="search" pattern=".{2,}" required title="2 글자 이상 입력해주세요" name="keyword" class="form-control form-control-dark" placeholder="전체 게시글 검색..." aria-label="Search">
				<button class="btn btn-outline-secondary" type="submit" id="button-addon2"><i class="fa fa-search"></i></button>
			</form>
		</div>
	</div>
	
	</div>
</body>

<script src="../bootstrap/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="../bootstrap/js/sidebar.js"></script>	
</html>