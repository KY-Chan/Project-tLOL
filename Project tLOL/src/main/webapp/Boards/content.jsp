<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../CSS-Bootstrap/js/jquery.js"></script>
<script type="text/javascript">
	/* $(function() {
		$('#disp').load('list.do?pageNum=${pageNum}');
	}); */
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
<div id="wrapper">
<div id="main">
<div class="inner">
<!-- Header -->
<header id="header">
	<div class="logo">
		<a href="main.do">Project.tLOL.gg</a>
	</div>
</header>  
			<table><caption>게시글 상세 보기</caption>
				<tr><th width="100">제목</th><td>${article.article_title }</td></tr>
				<tr><th>작성자</th><td>${article.account_num }</td></tr>
				<tr><th>조회수</th><td>${article.article_read }</td></tr>
				<tr><th>작성일</th><td>${article.article_date }</td></tr>
				<tr><th>추천수</th><td>${article.article_recom }</td></tr>
				<tr><th>내용</th><td><pre>${article.article_content }</pre></td></tr>
</table>
<div align="center"><br>
	<button onclick="location.href='updateForm.do?num=${num}&pageNum=${pageNum}'">수정</button> 
	<button onclick="location.href='deleteForm.do?num=${num}&pageNum=${pageNum}'">삭제</button> 
	<button onclick="location.href='writeForm.do?num=${num}&pageNum=${pageNum}'">답변</button> 
	<button onclick="location.href='list.do?pageNum=${pageNum}'">게시글 목록</button><br> 
</div>
<div id="disp"></div>


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