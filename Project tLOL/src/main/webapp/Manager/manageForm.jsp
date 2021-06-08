<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="tLOL.service.MemberList" %>
<%@ page import="tLOL.model.Member" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	ArrayList<Member> list = MemberList.getInstance().getMemberAll();
%>
<c:set var="memberList" value="<%= list %>" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<meta name="generator" content="Hugo 0.83.1">
	
	<title>Project tLOL.gg update</title>
	<script type="text/javascript" src="../bootstrap/js/jquery.js"></script>
	
	<!-- Bootstrap -->
	<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link href="../bootstrap/css/bootstrap.css" rel="stylesheet">
	<link href="../bootstrap/css/login.css" rel="stylesheet">	
	
	<script type="text/javascript">
		function del() {
			var con = confirm("정말로 탈퇴시키시겠습니까?");
			if (con) location.href = "memberOut.do";
			else alert("회원 탈퇴처리가 취소되었습니다")
		}
	</script>
</head>
<body>
	<div class="col-10 bd-content">
		<table class="table table-hover">
			<tr class="table-primary">
				<th>선택</th>
				<th>회원번호</th>
				<th>ID</th>
				<th>닉네임</th>
				<th>가입일</th>
				<th>이메일</th>
				<th>탈퇴여부</th>
			</tr>
			<c:forEach var="i" items="${memberList}" begin="0" end="2" varStatus="status">
				<tr>
					<td></td>
					<td>${i.getAccount_num() }</td>
					<td>${i.getAccount_id() }</td>
					<td>${i.getAccount_nickname() }</td>
					<td>${i.getAccount_reg_date() }</td>
					<td>${i.getAccount_email() }</td>
					<td>${i.getAccount_del() }</td>
				<tr>
			</c:forEach>
			<tr>
		</table>
	</div>
</body>
</html>