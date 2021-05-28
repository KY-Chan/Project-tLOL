<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../CSS-Bootstrap/js/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		$("#tip").load("board.do?board_num=6&pageNum=${param.pageNum}")
	});	
</script>
</head>
<body>
<div id="tip"></div>
</body>
</html>