<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<!-- include libraries(jQuery, bootstrap) -->
<link href="http://bootswatch.com/3/darkly/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="../bootstrap/js/jquery.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#summernote').summernote({
			  height: 450,   //set editable area's height
			});
	});
	function checkForm(){ 

	    document.iframe_form.target="_parent"; 

	    document.iframe_form.submit(); 
	} 
	$( document ).ready(function() {
		document.getElementById('board_num').value = parent.board_num;
		document.getElementById('member_num').value = parent.member_num;
		document.getElementById('pageNum').value = parent.pageNum;
	});

</script>

<form method="post" action="../Board/articleWrite.do" name="iframe_form">

	<input type="hidden" name="board_num" id="board_num" value="">
	<input type="hidden" name="member_num" id="member_num" value="">
	<input type="hidden" name="pageNum" id="pageNum" value="">
	<table class="table table-hover">
		<tr class="table-dark">
			<th><font color="white">제목</font></th>
			<td><input type="text" name="article_title" required="required"
				autofocus="autofocus" size="50"></td>
		</tr>
	</table>
	<textarea id="summernote" name="article_content"></textarea>
	<button type="submit" class="col-5 btn btn-primary" onClick="checkForm()" onsubmit="return true;">확인</button>

</form>
</html>