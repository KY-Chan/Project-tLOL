<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 회원가입 하지 않은 사람들이 수정 삭제 못하게 하는 jsp -->
<%@ include file="../sessionChk.jsp" %>

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
			if (frm.account_pw.value != frm.account_pw2.value) {
			alert("암호를 다시 확인해주세요");
			frm.account_pw.focus();
			return false;
			}
		}
		function del() {
			var con = confirm("정말로 탈퇴하시겠습니까?");
			if (con) location.href = "delete.do";
			else alert("회원 탈퇴가 취소되었습니다")
		}
	</script>
</head>

<body class="text-center">
	<div class="container">
		<form method="post" action="update.do" name="frm" onsubmit="return chk()">	
			<div class="row mb-3 align-items-center">
				<div class="col form-floating">
					<div class="mb-5"><img src="../images/logo.png" alt=""></div>
				</div>
			</div>
			<div class="row align-items-center">
				<div class="col form-floating mb-1">
					<h2>회원 정보 수정</h2>
				</div>
			</div>	
			<input type="hidden" name="account_id" value="${member.account_id}">
			<div class="row mb-2 align-items-center">
				<div class="col-sm-3"></div>
				<label for="inputId" class="col-sm-2 col-form-label">아이디</label>
				<div class="col-sm-4 form-floating">
					<input type="text" class="form-control" id="inputId" aria-label="${member.account_id }" readonly>
				</div>
				<div class="col-sm-3"></div>
			</div>	
			<div class="row mb-2 align-items-center">
				<div class="col-sm-3"></div>
				<label for="inputPassword" class="col-sm-2 col-form-label">비밀번호</label>
				<div class="col-sm-4 form-floating">
					<input type="password" class="w-100 form-control" id="inputPassword" placeholder="비밀번호" name="account_pw" required="required" maxlength="20">
					<label for="floatingInput">Password</label>	
				</div>
				<div class="col-sm-3"></div>
			</div>
			<div class="row mb-2 align-items-center">
				<div class="col-sm-3"></div>
				<label for="inputPassword2" class="col-sm-2 col-form-label">비밀번호 확인</label>
				<div class="col-sm-4 form-floating">
					<input type="password" class="form-control" id="inputPassword2" placeholder="비밀번호" name="account_pw2" required="required" maxlength="20">
					<label for="floatingInput">Password Check</label>	
				</div>
				<div class="col-sm-3"></div>
			</div>
			<div class="row mb-2 align-items-center">
				<div class="col-sm-3"></div>
				<label for="inputNickname" class="col-sm-2 col-form-label">닉네임</label>
				<div class="col-sm-4 form-floating">
					<input type="text" class="form-control" id="inputNickname" placeholder="닉네임" name="account_nickname" required="required" maxlength="20">
					<label for="floatingInput">Nickname</label>	
				</div>
				<div class="col-sm-3"></div>
			</div>
			<div class="row mb-2 align-items-center">
				<div class="col-sm-3"></div>
				<label for="inputEmail" class="col-sm-2 col-form-label">이메일</label>
				<div class="col-sm-4 form-floating">
					<input type="email" class="form-control" id="inputEmail" placeholder="e-mail" name="account_email" required="required" maxlength="30">
					<label for="floatingInput">e-mail</label>
				</div>
				<div class="col-sm-3"></div>
			</div>
			<div class="row mb-2 align-items-center">
				<div class="col-sm-3"></div>
				<label for="inputDate" class="col-sm-2 col-form-label">등록일</label>
				<div class="col-sm-4 form-floating">
					<input type="text" class="form-control" id="inputDate" aria-label="${member.account_reg_date}" readonly>
				</div>
				<div class="col-sm-3"></div>
			</div>
			<div class="d-grid gap-2 col-6 mx-auto"><button class="btn btn-lg btn-primary" type="submit">수정완료</button></div><br>
			<button class="mt-2 btn btn-danger btn-sm" onclick="del()">회원탈퇴</button>
			<p class="text-muted">&copy; Project.tLOL.gg</p>
		</form>
	</div>	
</body>
</html>