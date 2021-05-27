<!-- 회원가입 하지 않은 사람들이 수정 삭제 못하게 하는 jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project.tLOL.gg</title>
</head>
<body>
<c:set var="account_id" value="${sessionScope.account_id }"></c:set>
<c:if test="${empty account_id }">
	<script type="text/javascript">
		location.href="loginForm.do";
	</script>
</c:if>
</body>
</html>