<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 회원가입 하지 않은 사람들이 수정 삭제 못하게 하는 jsp -->
<%@ include file="sessionChk.jsp" %>
<!DOCTYPE html>
<html lang="kr" dir="ltr">

<!-- 회원탈퇴 클릭시 del실행 (정말로 탈퇴할건지 알림창 띄우기 그리고 삭제) -->
<script type="text/javascript">
	function del() {
		var con = confirm("정말로 탈퇴하시겠습니까?");
		if (con) location.href="Accounts/delete.do";
		else alert("삭제가 취소 되었습니다");
	}
</script>

<head>
	<meta charset="utf-8">
	<title>Project.tLOL.gg</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">
	
	
	<!-- Bootstrap core CSS -->
	<link href="CSS-Bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Additional CSS Files -->
	<link rel="stylesheet" href="CSS-Bootstrap/assets/css/fontawesome.css">
	<link rel="stylesheet" href="CSS-Bootstrap/assets/css/templatemo-style.css">
	<link rel="stylesheet" href="CSS-Bootstrap/assets/css/owl.css">
</head>

<body class="is-preload">

<!-- Wrapper -->
<div id="wrapper">

<!-- Main -->
<div id="main">
<div class="inner">

<!-- Header -->
<header id="header">
	<div class="logo">
		<a href="main.do">Project.tLOL.gg</a>
	</div>
</header>

<!-- Tables -->
<section class="tables">
	<form method="post" action="login.do">       
		<div class="container-fluid">
		<div class="row">
		<div class="col-md-6 col-md-12">
		<div class="section-heading">${member.account_id }님 반갑습니다</div>
		<div class="default-table">
			<table>
				<tr><td><button onclick="location.href='Accounts/view.do'">2323232</button></td></tr>
				<tr><td><button onclick="location.href='Accounts/updateForm.do'">343124</button></td></tr>
				<tr><td><button onclick="del()"></button>234233</td></tr>
				<tr><td><button onclick="location.href='Accounts/logout.do'">4</button></td></tr>
			</table>
		</div>
		</div>
		</div>
		</div>
	</form>
</section>
</div> <!-- Main end -->    
</div> <!-- Wrapper end -->    
               
<jsp:include page="sideMenu.jsp"></jsp:include>
</div>

<!-- Scripts -->
<!-- Bootstrap core JavaScript -->
    <script src="CSS-Bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="CSS-Bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
    <script src="CSS-Bootstrap/assets/js/browser.min.js"></script>
    <script src="CSS-Bootstrap/assets/js/breakpoints.min.js"></script>
    <script src="CSS-Bootstrap/assets/js/transition.js"></script>
    <script src="CSS-Bootstrap/assets/js/owl-carousel.js"></script>
    <script src="CSS-Bootstrap/assets/js/custom.js"></script>
  
  </body>
</html>
