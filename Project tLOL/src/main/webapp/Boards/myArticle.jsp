<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:set var="account_id" value="${sessionScope.account_id }"></c:set>
<script type="text/javascript" src="../CSS-Bootstrap/js/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		$("#myArticle").load("board.do?board_num=0&pageNum=${param.pageNum}")
	});	
</script>
</head>
<body>
<div id="myArticle"></div>
</body>
</html>