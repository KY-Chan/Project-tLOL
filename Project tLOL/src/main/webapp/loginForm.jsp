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

<title>tLOL</title>
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
						aria-expanded="false">가입하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
					<!-- active는 현재 선택이 되었다는 뜻, 현재 선택된 홈페이지를 의미 -->
					<li class="active"><a href="login.do">로그인</a></li>
					<li><a href="joinForm.do">회원가입</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
		<!-- login양식이 들어감 -->
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="login.do">
					<h3 style="text-align: center;">회원 로그인</h3>
					<div class="form-group">
						<!-- placeholder는 현재 어떠한것도 입력되지 않았을때 보여지는 것, name은 서버프로그램 작성시 중요 요소
							maxlength는 아이디를 20자로 제한하는것 -->
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<!-- placeholder는 현재 어떠한것도 입력되지 않았을때 보여지는 것, name은 서버프로그램 작성시 중요 요소
							maxlength는 아이디를 20자로 제한하는것 -->
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="로그인"><br>
				</form>
				<div class="col-lg-4" style="padding-top: 5px;"></div>
				<form method="post" action="joinForm.do">
					<input type="submit" class="btn btn-primary form-control" value="회원가입">
				</form>
			</div>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>

