<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 회원가입 하지 않은 사람들이 수정 삭제 못하게 하는 jsp -->
<%@ include file="sessionChk.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<!-- 회원탈퇴 클릭시 del실행 (정말로 탈퇴할건지 알림창 띄우기 그리고 삭제) -->
<script type="text/javascript">
	function del() {
		var con = confirm("정말로 탈퇴하시겠습니까?");
		if (con) location.href="delete.do";
		else alert("삭제가 취소 되었습니다");
	}
</script>

</head>
<body>
<h2>메인페이지</h2>
<h2>${member.userName }님 반갑습니다</h2>

<table>
	<tr><td><button onclick="location.href='view.do'">회원정보 조회</button></td></tr>
	<tr><td><button onclick="location.href='updateForm.do'">회원정보 수정</button></td></tr>
	<tr><td><button onclick="del()">회원탈퇴</button></td></tr>
	<tr><td><button onclick="location.href='logout.do'">로그아웃</button></td></tr>
</table>
</body>
</html>