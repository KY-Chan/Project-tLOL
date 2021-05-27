<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 디바이스에 맞는 사이즈 자동 조정 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- 디자인을 담당하는 bootstrap css 참조 -->
<link rel="stylesheet" href="../CSS-Bootstrap/css/bootstrap.css">

<title>Project.tLOL.gg</title>

<script type="text/javascript">
	function chk() {
		if (!frm.account_id.value) {	
			alert('중복확인이 필요합니다');
			frm.account_id.focus();		
			return false;		
			}
		$.post("confirm.do", "account_id="+frm.account_id.value, function(data) {
			$('#err').html(data);
		});
	}
</script>
</head>
<body>
	<!-- 회원가입 양식 -->
	<div class="container">		<!-- 하나의 영역 생성 -->
	<div class="col-lg-4"></div>
		<div class="col-lg-4">	<!-- 영역 크기 -->
			<!-- 점보트론은 특정 컨텐츠, 정보를 두드러지게 하기 위한 큰 박스 -->
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="join.do" name="frm">
					<h3 style="text-align: center;">회원가입 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="account_id" maxlength="20" autofocus="autofocus">
						<input type="button" class="btn btn-primary form-control" value="중복체크" onclick="chk()">
						<div id="err"></div>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="account_pw" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="닉네임" name="account_nickname" maxlength="20">
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="e-mail" name="account_email" maxlength="30">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="회원가입">
				</form>
			</div>
		</div>	
	</div>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../CSS-Bootstrap/js/bootstrap.js"></script>
</body>
</html>