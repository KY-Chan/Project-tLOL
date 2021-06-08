<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="../bootstrap/js/jquery.js"></script>
<script type="text/javascript">
	function article_delete() {
		if(confirm("정말 삭제하시겠습니까?") == true) {
			location.href='deleteBoard.do?board_num=${board_num }&article_num=${article_num}&pageNum=${pageNum}';
		} else {
			return;
		}
	}
</script>
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
			<button onclick="article_delete()">삭제</button> 
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
</div>

</html>