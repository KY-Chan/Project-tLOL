<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url("common.css");
</style></head><body>
<form action="numResult.jsp">
<table><caption>누계 숫자 입력</caption>
	<tr><th>숫자</th><td><input type="number" name="num" min="10" max="100"
		required="required" autofocus="autofocus"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인">
		<input type="reset" value="취소"></th></tr>
</table>
</form>
</body>
</html>