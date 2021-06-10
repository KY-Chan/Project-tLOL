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
<body>
<div class="col-sm-10 bd-content">
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
				autofocus="autofocus"></td>
		</tr>
		<!-- WriteAction.java로 보내려는 값들 -->
		<tr>
			<th><font color="white">내용</font></th>
			<td><textarea rows="5" cols="40" name="article_content"
					required="required"></textarea></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" class="col-5 btn btn-primary" value="확인"></th>
		</tr>
	</table>
</form>
</div>
</body>
</html>