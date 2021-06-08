<!-- 작성완료 버튼 누를시 writeAction.do호출 -->
<!-- WriteForm.java에서 받은 값들은  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
	function chk() {
		if (frm.password.value != frm.confirmPass.value) {
			alert("암호와 암호 확인이 다릅니다");
			frm.password.focus();
			frm.password.value = "";
			return false;
		}
	}
</script>
<form action="articleWrite.do" method="post" name="frm"
	onsubmit="return chk()">
	<input type="hidden" name="board_num" value="${board_num}"> <input
		type="hidden" name="member_num" value="${sessionScope.member_num}">
	<input type="hidden" name="pageNum" value="${pageNum}">
	<!-- WriteForm.java에서 받은 값들. -->
	<table>
		<caption>게시글 작성</caption>
		<tr>
			<th>제목</th>
			<td><input type="text" name="article_title" required="required"
				autofocus="autofocus"></td>
		</tr>
		<!-- WriteAction.java로 보내려는 값들 -->
		<tr>
			<th>내용</th>
			<td><textarea rows="5" cols="40" name="article_content"
					required="required"></textarea></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" value="확인"></th>
		</tr>
	</table>
</form>
</html>