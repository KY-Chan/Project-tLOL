<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../CSS-Bootstrap/js/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		$("#news").load("board.do?board_num=2&pageNum=${param.pageNum}" )
	});	
</script>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">
	
	
	<!-- Bootstrap core CSS -->
	<link href="../CSS-Bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Additional CSS Files -->
	<link rel="stylesheet" href="../CSS-Bootstrap/assets/css/fontawesome.css">
	<link rel="stylesheet" href="../CSS-Bootstrap/assets/css/templatemo-style.css">
	<link rel="stylesheet" href="../CSS-Bootstrap/assets/css/owl.css">
</head>
<body class="is-preload">
<div width="match_parent" height="50px" text-align="center">
가나다
</div>
<div id="wrapper">
<div id="main">
<div class="inner">
<!-- Header -->
<header id="header">
	<div class="logo">
		<a href="main.do">Project.tLOL.gg</a>
	</div>
</header>
<div id="news"></div>
</div>
</div>

<jsp:include page="../sideMenu.jsp"></jsp:include>
</div>


  <script src="../CSS-Bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="../CSS-Bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
    <script src="../CSS-Bootstrap/assets/js/browser.min.js"></script>
    <script src="../CSS-Bootstrap/assets/js/breakpoints.min.js"></script>
    <script src="../CSS-Bootstrap/assets/js/transition.js"></script>
    <script src="../CSS-Bootstrap/assets/js/owl-carousel.js"></script>
    <script src="../CSS-Bootstrap/assets/js/custom.js"></script>
</body>
</html>