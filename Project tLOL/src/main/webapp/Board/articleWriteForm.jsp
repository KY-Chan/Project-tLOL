<!-- 작성완료 버튼 누를시 writeAction.do호출 -->
<!-- WriteForm.java에서 받은 값들은  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="../bootstrap/js/jquery.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		  $('#summernote').summernote();
	});
</script>
<div class="col-sm-10 bd-content">
<div id="summernote"></div> 

<form action="articleWrite.do" method="post" name="frm"
	onsubmit="return chk()">
	<input type="hidden" name="board_num" value="${board_num}">
	<input type="hidden" name="member_num" value="${sessionScope.member_num}">
	<input type="hidden" name="pageNum" value="${pageNum}">
	<div class="mt-5 mb-5">
		<font color="white"><h2>게시글 작성</h2></font>
	</div>
	<!-- WriteForm.java에서 받은 값들. -->
	<table class="table table-hover">
		<tr class="table-dark">
			<th><font color="white">제목</font></th>
			<td><input type="text" name="article_title" required="required"
				autofocus="autofocus" size="50"></td>
		</tr>
		<!-- WriteAction.java로 보내려는 값들 -->
		<tr>
			<th><font color="white">내용</font></th>
			<td><textarea rows="5" cols="80" name="article_content"
					required="required"></textarea></td>
		</tr>
		<c:if test="${board_num eq 5 }">
			<tr>
				<th><font color="white">이미지 첨부</font></th>
				<td><input type="file" name="image" size=40></td>
			</tr>
		</c:if>
		<tr>
			<th colspan="2"><input type="submit" class="col-5 btn btn-primary" value="확인"></th>
		</tr>
	</table>
</form>
</div>
</html>