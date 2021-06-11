<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<script type="text/javascript" src="../bootstrap/js/jquery.js"></script>	
<script type="text/javascript">
	function del() {
		var con = confirm("정말로 탈퇴 처리 하시겠습니까?");
		if (con) {
			document.select_member.action = "memberOut.do"
			document.select_member.submit();
		}
		else {
			alert("회원 탈퇴 처리가 취소되었습니다");
			return;
		}
	}
	function res() {
		var con = confirm("정말로 복구 처리 하시겠습니까?");
		if (con) {
			document.select_member.action = "memberRes.do"
			document.select_member.submit();
		}
		else {
			alert("회원 복구 처리가 취소되었습니다");
			return;
		}
	}
</script>
<div class="col-10 bd-content">
	<h2 class="text-white">회원관리</h2>
	<form method="post" name="select_member">
		<table class="table table-hover">
			<thead class="table-primary">
			<tr>
				<th>선택</th>
				<th>회원번호</th>
				<th>회원ID</th>
				<th>닉네임</th>
				<th>가입일</th>
				<th>이메일</th>
				<th>ID상태</th>
			</tr>
			</thead>
			<tbody class="table-light">
			<c:forEach var="member" items="${memberlist}">
				<tr>
					<td><c:if test="${member.member_admin eq 0}">
						<input type="checkbox" name="chk_member_id" value="${member.member_id }"></c:if></td>
					<td>${member.member_num }</td>
					<td>${member.member_id }</td>
					<td>${member.member_nickname }</td>
					<td>${member.member_reg_date }</td>
					<td>${member.member_email }</td>
					<td><c:choose>
						<c:when test="${member.member_del eq 'y'}">탈퇴</c:when>
						<c:when test="${member.member_del eq 'n'}">가입</c:when></c:choose></td>
				<tr>	
			</c:forEach>
			</tbody>
		</table>
		<div align="center">
			<nav aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
				    <c:forEach var="i" begin="${startPage}" end="${endPage}">
					    <li class="page-item"><a class="page-link" onclick="location.href='memberManage.do?&pageNum=${i}'">${i}</a></li>
					</c:forEach>
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>
		</div>
	    <button class="mt-2 btn btn-danger btn-sm" onclick="del()">회원삭제</button>
		<button class="mt-2 btn btn-primary btn-sm" onclick="res()">회원복구</button>
	</form>
</div>
</html>