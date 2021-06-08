<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<form action="articleUpdateForm.do" method="post" name="frm">
	<input type="hidden" name="board_num" value="${article.board_num }">
	<input type="hidden" name="article_num" value="${article.article_num }">
	<input type="hidden" name="pageNum" value="${pageNum}">
	<table>
		<caption>게시글 수정</caption>
		<tr>
			<th>제목</th>
			<td><input type="text" name="article_title"
				value="${article.article_title}" required="required"
				autofocus="autofocus"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="5" cols="30" name="article_content"
					required="required">${article.article_content }</textarea></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" value="확인"></th>
		</tr>
	</table>
</form>
</html>