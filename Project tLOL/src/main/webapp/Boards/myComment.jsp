<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../bootstrap/js/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		$("#myComment").load("myComment.do?account_num=${sessionScope.account_num }")
	});	
</script>
</head>
<body>
<div id="myComment"></div>
</body>
</html>