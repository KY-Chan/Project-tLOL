<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<div class="col-sm-10 bd-content">
<form action="articleUpdate.do" method="post" name="frm">
	<input type="hidden" name="board_num" value="${article.board_num }">
	<input type="hidden" name="article_num" value="${article.article_num }">
	<input type="hidden" name="pageNum" value="${pageNum}">
	<div class="mt-5 mb-5">
		<font color="white"><h2>게시글 수정</h2></font>
	</div>
	<table class="table table-hover">
		<tr class="table-dark">
			<th><font color="white">제목</font></th>
			<td><input type="text" name="article_title" value="${article.article_title}" required="required" autofocus="autofocus" size="50"></td>
		</tr>
		<tr>
			<th><font color="white">내용</font></th>
			<td><textarea rows="5" cols="80" name="article_content" required="required">${article.article_content }</textarea></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" class="col-4 btn btn-primary" value="확인"></th>
		</tr>
	</table>
</form>
</div>
</html>