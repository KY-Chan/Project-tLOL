<!-- 회원정보 수정 jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 회원가입 하지 않은 사람들이 수정 삭제 못하게 하는 jsp -->
<%@ include file="sessionChk.jsp" %>
<style type="text/css">@import url("common.css");</style>
<script type="text/javascript">
	function chk() {
		if (frm.password.value != frm.password2.value) {
		alert("암호가 암호확인과 다릅니다");
		frm.password.focus();
		return false;
		}
	}
</script>

</head>
<body>
	<form action="update.do" name="frm" onsubmit="return chk()">
		<input type="hidden" name="id" value="${member.id}">
		<table>
			<caption>회원정보</caption>
			<tr><th>아이디</th><td>${member.id }</td></tr>
			<tr><th>암호</th><td><input type="password" name="password" required="required" autofocus="autofocus"></td></tr>
			<tr><th>암호확인</th><td><input type="password" name="password2" required="required"></td></tr>
			<tr><th>이름</th><td><input type="text" name="name" required="required" value="${member.name}"></td></tr>
			<tr><th>전화</th><td><input type="tel" name="tel" required="required" value="${member.tel}"	pattern="\d{3}-\d{3,4}-\d{4}" placeholder="010-1111-1111"></td></tr>
			<tr><th>주소</th><td><input type="text" name="address" required="required" value="${member.address}"></td></tr>
			<tr><th>등록일</th><td>${member.reg_date}</td></tr>
			<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
		</table>
	</form>
</body>
</html>