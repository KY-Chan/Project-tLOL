<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<div class="row mt-5 mb-2">
		<a href="/Project_tLOL/main.jsp"><img src="images/logo-remove.png" class="rounded mx-auto d-block" alt="" width="460" height="200"></a>
	</div>
	<div class="row d-flex justify-content-center">
		<div class="col-6">
			<input type="search" class="mb-4 form-control form-control-dark" placeholder="소환사명 검색..." aria-label="Search">	
    	</div>
    </div>
    <div style="height:250px"></div>
    <div class="col-12 row d-flex justify-content-center">
	    <div id="community-best" class="col-8 bg-white">
	    	 <div class="bg-white">
	    	 	<a id="community-best_title" href="">TLoL.GG 인기글</a>
	    	 </div>
	    	 <div id="community-best_content_left" style="width:50%; float:left;">
	    	 	<ul class="list-group">
	    	 		<c:forEach var="hot" items="${hotList}" begin="0" end="9" step="1" varStatus="status">
	    	 		<li class="list-group-item"><a>
	    	 			<div>${status.index + 1 }</div>
	    	 			<div><img src="">썸네일</div>
	    	 			<div><span>${hot.article_title }</span><em>${hot.rep }</em></div>
	    	 			<div>
	    	 				<div><span>${hot.article_date }</span></div>
	    	 				<div>${hot.member_num }</div>
	    	 			</div>
	    	 		</a></li>
	    	 		</c:forEach>
	    	 		<li class="list-group-item"><a><div>2</div></a></li>
	    	 		<li class="list-group-item"><a><div>3</div></a></li>
	    	 		<li class="list-group-item"><a><div>4</div></a></li>
	    	 		<li class="list-group-item"><a><div>5</div></a></li>
	    	 	</ul>
	    	 </div>
	    	 <div id="community-best_content_right" style="width:50%; float:right;">
	    	 	<ul class="list-group">
	    	 		<li class="list-group-item"><a>
	    	 			<div>6</div>
	    	 			<div><img src=""></div>
	    	 			<div><span></span><em></em></div>
	    	 			<div>
	    	 				<div><span></span></div>
	    	 				<div></div>
	    	 			</div>
	    	 		</a></li>
	    	 		<li class="list-group-item"><a><div>7</div></a></li>
	    	 		<li class="list-group-item"><a><div>8</div></a></li>
	    	 		<li class="list-group-item"><a><div>9</div></a></li>
	    	 		<li class="list-group-item"><a><div>10</div></a></li>
	    	 	</ul>
	    	 </div>
    	 </div>
   	 </div> <!-- content end -->
</html>
