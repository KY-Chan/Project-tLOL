<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../bootstrap/js/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		$("#match").load("board.do?board_num=4&pageNum=${param.pageNum}")
	});	
</script>
</head>
<body>
<div id="match"></div>
</body>
</html>