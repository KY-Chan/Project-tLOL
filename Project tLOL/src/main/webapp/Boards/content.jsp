<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../bootstrap/js/jquery.js"></script>
<script type="text/javascript">
	/* $(function() {
		$('#disp').load('list.do?pageNum=${pageNum}');
	}); */
</script>
</head>
<body>
	<table><caption>게시글 상세 보기</caption>
		<tr><th width="100">제목</th><td>${article.article_title }</td></tr>
		<tr><th>작성자</th><td>${article.account_num }</td></tr>
		<tr><th>조회수</th><td>${article.article_read }</td></tr>
		<tr><th>작성일</th><td>${article.article_date }</td></tr>
		<tr><th>추천수</th><td>${article.article_recom }</td></tr>
		<tr><th>내용</th><td><pre>${article.article_content }</pre></td></tr>
	</table>
<div align="center"><br>
	<button onclick="location.href='updateBoardForm.do?board_num=${board_num }&article_num=${article_num}&pageNum=${pageNum}'">수정</button> 
	<button onclick="location.href='deleteBoard.do?board_num=${board_num }&article_num=${article_num}&pageNum=${pageNum}'">삭제</button> 
	<button onclick="location.href='javascript:history.back()'">게시글 목록</button><br> 
</div>
<div id="disp"></div>
<form action="commentAction.do" method="post">
	<table>
		<caption>댓글</caption>
		<tr>
			<th>작성자</th>
			<th>내용</th>
			<th>추천수</th>
			<th>작성일</th>
			<th></th>
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
							<td>삭제버튼</td>
						</c:if>
					</tr>
				</c:forEach>
			</c:if>
		</tr>
		<tr>
			<th>${sessionScope.account_nickname }</th>
			<th><textarea style="resize: none;" rows="2" cols="40" name="content" required="required"></textarea></th>
			<th colspan="3"><input type="submit" value="확인"></th>
		</tr>
	</table>

</form>

</body>
</html>