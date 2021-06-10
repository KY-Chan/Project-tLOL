<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			var con = confirm("정말로 탈퇴 처리 하시겠습니까?");
			if (con) location.href = "memberOut.do";
			else {
				alert("회원 탈퇴 처리가 취소되었습니다");
				return;
			}
		}
		
		function res() {
			var con = confirm("정말로 복구 처리 하시겠습니까?");
			if (con) location.href = "memberRes.do";
			else {
				alert("회원 복구 처리가 취소되었습니다");
				return;
			}
		}
	</script>
</head>
<body>
	<div class="col-10 bd-content">
		<form method="post">
			<table class="table table-hover text-white">
				<tr class="table-primary">
					<th>선택</th>
					<th>회원번호</th>
					<th>ID</th>
					<th>닉네임</th>
					<th>가입일</th>
					<th>이메일</th>
					<th>ID상태</th>
				</tr>
			
				<c:forEach var="member" items="${memberlist}">
					<tr>
						<td><c:if test="${member.member_admin eq 0}">
							<input type="checkbox" name="member_id" value="${member.member_id }"></c:if></td>
						<td>${member.member_num }</td>
						<td>${member.member_id }</td>
						<td>${member.member_nickname }</td>
						<td>${member.member_reg_date }</td>
						<td>${member.member_email }</td>
						<td><c:choose>
							<c:when test="${member.member_del eq 'y'}">탈퇴</c:when>
							<c:when test="${member.member_del eq 'n'}">가입</c:when></c:choose></td>
					<tr>	
				</c:forEach>
			</table>
			<!--  <input type="submit" value="회원탈퇴"> -->

		    <button class="mt-2 btn btn-danger btn-sm" onclick="del()">회원삭제</button>
			<button class="mt-2 btn btn-primary btn-sm" onclick="res()">회원복구</button>
		</form>
	</div>
</body>
</html>