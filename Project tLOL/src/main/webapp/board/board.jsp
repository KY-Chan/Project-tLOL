<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>
<c:if test="${param.board_name eq 'notice'}">
	공지사항
</c:if>
<c:if test="${param.board_name eq 'news'}">
	뉴스
</c:if>
<c:if test="${param.board_name eq 'free'}">
	자유게시판
</c:if>
<c:if test="${param.board_name eq 'match'}">
	매칭게시판
</c:if>
<c:if test="${param.board_name eq 'media'}">
	갤러리/영상
</c:if>
<c:if test="${param.board_name eq 'tip'}">
	팁/노하우
</c:if>
</h2>
</body>
</html>