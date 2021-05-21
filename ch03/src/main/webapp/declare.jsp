<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
</head><body>
<%
	// 지역변수
	String name = team + "파이팅 !";
%>
<%! // 선언부, declaration 멤버변수, 메서드
	String team = "Korea ";
%>
<%=name %>
</body>
</html>