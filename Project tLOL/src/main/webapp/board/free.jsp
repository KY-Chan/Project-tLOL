<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		$("#free").load("board.do?board_num=3")
	});	
</script>
</head>
<body>
<div id="free"></div>
</body>
</html>