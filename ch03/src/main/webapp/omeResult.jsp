<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head>
<% 
	request.setCharacterEncoding("utf-8");
	String[] menu = request.getParameterValues("menu");
%>
<body>
<h2>오늘의 메뉴</h2>
<%
	for (int i = 0; i < menu.length; i++) {
%>
		<%=menu[i] %> <br>

<% 	}	%>
</body>
</html>