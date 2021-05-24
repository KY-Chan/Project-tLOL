<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	function chk() {
		if (!frm.id.value) {	alert('아이디를 입력하고 체크하시오');
			frm.id.focus();		return false;		}
// 변수 id에 입력한 id을 담아서 포스트방식으로 confirm.jsp을 실행하고 결과르 받아서 data저장하고
// 그 값을 id가 err인 곳에 html형식으로 넣어라
		$.post("confirm.do", "id="+frm.id.value, function(data) {
			$('#err').html(data);
		});
	}
	function chk2() {
		if (frm.password.value != frm.confirmPass.value) {
			alert("암호와 암호 확인이 다릅니다");		frm.password.focus();
			frm.password.value = "";			return false;		}
	}
</script></head><body>
<!-- onsubmit="return chk2()"는 submit를 눌렀을 때 chk2를 실행하고 에러가 없으면 action에 있는 join.jsp실행
에러가 있으면 action을 하지 마라 -->
<form action="join.do" method="post" name="frm" onsubmit="return chk2()">
<table><caption>회원 가입</caption>
	<tr><th>아이디</th><td><input type="text" name="id" required="required"
		autofocus="autofocus"><input type="button" value="중복체크" onclick="chk()">
		<div id="err"></div></td></tr>
	<tr><th>암호</th><td><input type="password" name="password" 
		required="required"></td></tr>
	<tr><th>암호확인</th><td><input type="password" name="confirmPass" 
		required="required"></td></tr>
	<tr><th>이름</th><td><input type="text" name="name" 
		required="required"></td></tr>
	<tr><th>주소</th><td><input type="text" name="address" 
		required="required"></td></tr>
<!-- title="전화형식 3-3,4-4" : 에러가 발생하면 보여줄 메세지에 추가
	 pattern="\d{3}-\d{3,4}-\d{4}" : 	숫자3-숫자3또는4-숫자4자리
	 placeholder="010-1111-1111" : 초기화면에 보여주고 데이터 입력하면 사라져라	 -->
	<tr><th>전화</th><td><input type="tel" name="tel" title="전화형식 3-3,4-4"
		required="required" pattern="\d{3}-\d{3,4}-\d{4}" placeholder="010-1111-1111"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table>
</form>
<button onclick="location.href='loginForm.do'">로그인</button>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 디바이스에 맞는 사이즈 자동 조정 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- 디자인을 담당하는 bootstrap css 참조 -->
<link rel="stylesheet" href="css/bootstrap.css">

<title>Project.tLOL.gg</title>
</head>
<body>
	<!-- nav=하나의 웹사이트에 전반적인 구조를 보여줌 -->
	<nav class="navbar navbar-default">
		<div class="navbar-header"> <!-- html header -->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<!-- icon-bar가 하나의 네비 바 짝대기로 간주하면 됨 -->
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<!-- navbar-brand는 로고같은 것 -->
			<a class="navbar-brand" href="main.jsp">Project.tLOL.gg</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<!-- <ul>은 어떤 리스트 같은 것을 보여줄 때 사용 -->
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">Main</a></li>
			</ul>
			<!-- nav 오른쪽 -->
			<ul class="nav navbar-nav navbar-right">
				<!-- dropdown 버튼 생성 -->
				<li class="dropdown">
					<!-- #은 현재 가리키는 링크가 없다는 것을 나타냄 -->
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
					<!-- active는 현재 선택이 되었다는 뜻, 현재 선택된 홈페이지를 의미 -->
					<li class="active"><a href="login.do">로그인</a></li>
					<li><a href="joinForm.do">회원가입</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<!-- 회원가입 양식 -->
	<div class="container">		<!-- 하나의 영역 생성 -->
	<div class="col-lg-4"></div>
		<div class="col-lg-4">	<!-- 영역 크기 -->
			<!-- 점보트론은 특정 컨텐츠, 정보를 두드러지게 하기 위한 큰 박스 -->
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="join.do">
					<h3 style="text-align: center;">회원가입 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="닉네임" name="userNickName" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="회원가입">
				</form>
			</div>
		</div>	
	</div>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>