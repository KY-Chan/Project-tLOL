<!-- 회원정보 조회 jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 회원가입 하지 않은 사람들이 수정 삭제 못하게 하는 jsp -->
<%@ include file="sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project.tLOL.gg</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head>
<body>
	<table><caption>회원정보 확인</caption>
		<tr><th>아이디</th><td>${member.account_id }</td></tr>
		<tr><th>닉네임</th><td>${member.account_nickname }</td></tr>
		<tr><th>e-mail</th><td>${member.account_email }</td></tr>
		<tr><th>등록일</th><td>${member.account_reg_date}</td></tr>
	</table>
</body>
</html>