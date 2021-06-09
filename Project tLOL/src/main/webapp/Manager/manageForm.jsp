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
		function chk() {
			if (frm.del.value == 1) {
				var con = confirm("정말로 탈퇴시키시겠습니까?");
				if (con) return true;
				else {
					alert("회원 탈퇴처리가 취소되었습니다")
					return false;
				}	
			}
		}
	</script>
</head>
<body>
	<div class="col-10 bd-content">
		<form action="memberOut.do" method="post" name="frm" onsubmit="return chk()">
			<table class="table table-hover text-white">
				<tr class="table-primary">
					<th>선택</th>
					<th>회원번호</th>
					<th>ID</th>
					<th>닉네임</th>
					<th>가입일</th>
					<th>이메일</th>
					<th>탈퇴여부</th>
				</tr>
			
				<c:forEach var="member" items="${memberlist}">
					<tr>
						<td><input type="checkbox" name="member_id" value="${member.member_id }"></td>
						<td>${member.member_num }</td>
						<td>${member.member_id }</td>
						<td>${member.member_nickname }</td>
						<td>${member.member_reg_date }</td>
						<td>${member.member_email }</td>
						<td>${member.member_del }</td>
					<tr>	
				</c:forEach>
			</table>
			<button class="mt-2 btn btn-danger btn-sm"  type="submit">회원삭제</button>
			<button class="mt-2 btn btn-primary btn-sm" type="submit">회원복구</button>
		</form>
	</div>
</body>
</html>