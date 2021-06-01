<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
         <li><a href="/Project_tLOL/Accounts/updateForm.do">회원정보 수정</a></li>
         <li><a href="/Project_tLOL/Boards/myArticle.jsp">내 글 관리 & 댓글 관리</a></li>
         <li><a href="/Project_tLOL/Accounts/loginForm.do">로그인</a></li>
         <li><a href="/Project_tLOL/Accounts/logout.do">로그아웃</a></li>
       </ul>
     </li>
     <li>
       <span class="opener">게시판</span>
       <ul>
         <li><a href="/Project_tLOL/Boards/notice.jsp">공지사항</a></li>
         <li><a href="/Project_tLOL/Boards/news.jsp">뉴스</a></li>
         <li><a href="/Project_tLOL/Boards/free.jsp">자유게시판</a></li>
         <li><a href="/Project_tLOL/Boards/match.jsp">매칭게시판</a></li>
         <li><a href="/Project_tLOL/Boards/media.jsp">갤러리</a></li>
         <li><a href="/Project_tLOL/Boards/tip.jsp">팁/노하우</a></li>
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

</body>
</body>
</html>