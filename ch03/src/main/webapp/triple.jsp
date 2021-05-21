<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url("common.css");
</style></head><body>
<h2>세제곱</h2>
1 ^ 3 = <%=triple(1)%><p>
2 ^ 3 = <%=triple(2)%><p>
3 ^ 3 = <%=triple(3)%><p>
4 ^ 3 = <%=triple(4)%><p>
5 ^ 5 = <%=triple(5)%><p>
<%!
	int triple(int x) {
		return x * x * x;	
	}

%>
</body>
</html>