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
		if (con) location.href="delete.do";
		else alert("삭제가 취소 되었습니다");
	}
</script>

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
				<tr><td><button onclick="location.href='view.do'">2323232</button></td></tr>
				<tr><td><button onclick="location.href='updateForm.do'">343124</button></td></tr>
				<tr><td><button onclick="del()"></button>234233</td></tr>
				<tr><td><button onclick="location.href='logout.do'">4</button></td></tr>
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
         <li><a href="Accounts/updateForm.do">회원정보 수정</a></li>
         <li><a href="#">내 글 관리 & 댓글 관리</a></li>
         <li><a href="Accounts/loginForm.do">로그인</a></li>
         <li><a href="Accounts/logout.do">로그아웃</a></li>
       </ul>
     </li>
     <li>
       <span class="opener">게시판</span>
       <ul>
         <li><a href="#">공지사항</a></li>
         <li><a href="#">뉴스</a></li>
         <li><a href="#">자유게시판</a></li>
         <li><a href="#">매칭게시판</a></li>
         <li><a href="#">갤러리</a></li>
         <li><a href="#">팁/노하우</a></li>
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
