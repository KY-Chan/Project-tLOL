<!-- 회원정보 조회 jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 회원가입 하지 않은 사람들이 수정 삭제 못하게 하는 jsp -->
<%@ include file="sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head>
<body>
	<table><caption>회원정보</caption>
		<tr><th>아이디</th><td>${member.id }</td></tr>
		<tr><th>이름</th><td>${member.name }</td></tr>
		<tr><th>전화</th><td>${member.tel }</td></tr>
		<tr><th>주소</th><td>${member.address }</td></tr>
		<tr><th>등록일</th><td>${member.reg_date}</td></tr>
	</table>
	<!-- 클릭시 command.properties에 있는 main.do로 이동해 MainAction.java로 이동함 -->
	<a href="main.do">메인</a>
	
	<!-- 클릭시 command.properties에 있는 updateForm.do로 이동해 updateForm.java로 이동함 -->
	<a href="updateForm.do">회원정보 수정</a>
</body>
</html>