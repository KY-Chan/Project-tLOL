<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<div class="section-heading"></div>
		<div class="default-table">
			<table>
				<thead class="section-heading">
					<tr>
						<th><h2 style="text-align: center;">로그인 화면</h2></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" class="form-control" placeholder="아이디" name="account_id" required="required" autofocus="autofocus" maxlength="20"></td>
					</tr>
					<tr>
						<td><input type="password" class="form-control" placeholder="비밀번호" name="account_pw" required="required" maxlength="20"></td>
					</tr>
					<tr>
						<td><input type="submit" class="btn btn-primary form-control" value="로그인"></td>
					</tr>
					<tr>
						<td><a href="joinForm.do" class="btn btn-primary form-control">회원가입</a></td>
				</tbody>
			</table>
		</div>
		</div>
		</div>
		</div>
	</form>
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
			<img src="CSS-Bootstrap/assets/images/featured_post_01.jpg" alt="featured one">
			<p>Aliquam egestas convallis eros sed gravida. Curabitur consequat sit.</p>
		</div>
	</a>
	<a href="#">
		<div class="featured-item">
			<img src="CSS-Bootstrap/assets/images/featured_post_01.jpg" alt="featured two">
			<p>Donec a scelerisque massa. Aliquam non iaculis quam. Duis arcu turpis.</p>
		</div>
	</a>
	<a href="#">
		<div class="featured-item">
			<img src="CSS-Bootstrap/assets/images/featured_post_01.jpg" alt="featured three">
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
	<script src="CSS-Bootstrap/vendor/jquery/jquery.min.js"></script>
	<script src="CSS-Bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		
	<script src="CSS-Bootstrap/assets/js/browser.min.js"></script>
	<script src="CSS-Bootstrap/assets/js/breakpoints.min.js"></script>
	<script src="CSS-Bootstrap/assets/js/transition.js"></script>
	<script src="CSS-Bootstrap/assets/js/owl-carousel.js"></script>
	<script src="CSS-Bootstrap/assets/js/custom.js"></script>
  
</body>
</html>
