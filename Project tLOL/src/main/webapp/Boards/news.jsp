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
		$("#news").load("board.do?board_num=2&pageNum=${param.pageNum}" )
	});	
</script>
</head>
<body>
<div id="news"></div>
</body>
</html>