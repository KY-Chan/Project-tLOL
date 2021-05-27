<!-- 회원정보 수정 jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 회원가입 하지 않은 사람들이 수정 삭제 못하게 하는 jsp -->
<%@ include file="sessionChk.jsp" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">
	
	<title>Project.tLOL.gg</title>
	
	<!-- Bootstrap core CSS -->
	<link href="../CSS-Bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Additional CSS Files -->
	<link rel="stylesheet" href="../CSS-Bootstrap/assets/css/fontawesome.css">
	<link rel="stylesheet" href="../CSS-Bootstrap/assets/css/templatemo-style.css">
	<link rel="stylesheet" href="../CSS-Bootstrap/assets/css/owl.css">
</head>
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
	<form action="update.do" name="frm" onsubmit="return chk()">
		<div class="container-fluid">
		<div class="row">
		<div class="col-md-12">
		<div class="section-heading"><h2 style="text-align: center;">회원정보 수정</h2></div>
		<div class="default-table">
		<input type="hidden" name="account_id" value="${member.account_id}">
		<table>
			<tr><th align="center">아이디</th><td>${member.account_id }</td></tr>
			<tr><th align="center">비밀번호</th><td><input type="password" name="account_pw" required="required" autofocus="autofocus"></td></tr>
			<tr><th align="center">비밀번호 확인</th><td><input type="password" name="account_pw2" required="required"></td></tr>
			<tr><th align="center">닉네임</th><td><input type="text" name="account_nickname" required="required" value="${member.account_nickname}"></td></tr>
			<tr><th align="center">e-mail</th><td><input type="email" name="account_email" required="required" value="${member.account_email}"></td></tr>
			<tr><th align="center">등록일</th><td>${member.account_reg_date}</td></tr>
			<tr><td valign="middle" align="center" colspan="2"><input type="submit" value="수정완료"></td></tr>
		</table>
		</div>
		</div>
		</div>
		</div>
	</form>
	<button onclick="del()">회원탈퇴</button>
</section>
</div> <!-- Main end -->    
</div> <!-- Wrapper end -->

<!-- Sidebar -->
<div id="sidebar">

<div class="inner">

<!-- Search Box -->
<section id="search" class="alt">
	<form method="get" action="#">
		<input type="text" name="search" id="search" placeholder="Search..." />
	</form>
</section>
  
<!-- Menu -->
<nav id="menu">
	<ul>
		<!-- <li><a href="index.html">회원</a></li>
		<li><a href="simple_page.html">Simple Page</a></li>
		<li><a href="shortcodes.html">Shortcodes</a></li> -->
		<li>
			<span class="opener">회원</span>
			<ul>
				<li><a href="updateForm.do">회원정보 수정</a></li>
				<li><a href="#">내 글 관리 & 댓글 관리</a></li>
				<li><a href="loginForm.do">로그인</a></li>
			</ul>
		</li>
		<li>
			<span class="opener">Dropdown Two</span>
			<ul>
				<li><a href="#">Sub Menu #1</a></li>
				<li><a href="#">Sub Menu #2</a></li>
				<li><a href="#">Sub Menu #3</a></li>
			</ul>
		</li>
		<li><a href="https://www.google.com">External Link</a></li>
	</ul>
</nav>

<!-- Featured Posts -->
<div class="featured-posts">
<div class="heading">
	<h2>Featured Posts</h2>
</div>
<div class="owl-carousel owl-theme">
	<a href="#">
		<div class="featured-item">
			<img src="../CSS-Bootstrap/assets/images/featured_post_01.jpg" alt="featured one">
			<p>Aliquam egestas convallis eros sed gravida. Curabitur consequat sit.</p>
		</div>
	</a>
	<a href="#">
		<div class="featured-item">
			<img src="../CSS-Bootstrap/assets/images/featured_post_01.jpg" alt="featured two">
			<p>Donec a scelerisque massa. Aliquam non iaculis quam. Duis arcu turpis.</p>
		</div>
	</a>
	<a href="#">
		<div class="featured-item">
			<img src="../CSS-Bootstrap/assets/images/featured_post_01.jpg" alt="featured three">
			<p>Suspendisse ac convallis urna, vitae luctus ante. Donec sit amet.</p>
		</div>
	</a>
</div>
</div>

<!-- Footer -->
<footer id="footer">
	<p class="copyright">Copyright &copy; 2021 Project.tLOL.gg
	<br>Designed by <a rel="nofollow" href="https://www.facebook.com/templatemo">Template Mo</a></p>
</footer>

</div>
</div>

</div>

<!-- Scripts -->
<!-- Bootstrap core JavaScript -->
	<script src="../CSS-Bootstrap/vendor/jquery/jquery.min.js"></script>
	<script src="../CSS-Bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		
	<script src="../CSS-Bootstrap/assets/js/browser.min.js"></script>
	<script src="../CSS-Bootstrap/assets/js/breakpoints.min.js"></script>
	<script src="../CSS-Bootstrap/assets/js/transition.js"></script>
	<script src="../CSS-Bootstrap/assets/js/owl-carousel.js"></script>
	<script src="../CSS-Bootstrap/assets/js/custom.js"></script>
  
</body>
</html>