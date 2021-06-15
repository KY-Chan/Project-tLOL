<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="tLOL.service.member.EmailConfirm"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function confirmemail(emailconfirm_value, authNum){
    // 입력한 값이 없거나, 인증코드가 일지하지 않을 경우
	if(!emailconfirm_value || emailconfirm_value != authNum){
		alert("번호가 일치하지않음");
		emailconfirm_value="";
		self.close();
    // 인증코드가 일치하는 경우
	}else if(emailconfirm_value==authNum){
		alert("인증완료");
		emailconfirm_value="";
		self.close();
		opener.document.insertform.emailconfirm_value.value=1;
	}
}
</script>
</head>
<body>
	<%
		String email=null;
		String member_email=request.getParameter("member_email");
		String member_email2=request.getParameter("member_email2");
		if(!member_email.equals("")){
			if(member_email2.equals("0")){
				// 직접입력
				email=member_email;
			}else{
				email=member_email+"@"+member_email2;
			}
		}
		// 위에서 작성한 java파일 객체 생성
		EmailConfirm emailconfirm = new EmailConfirm();
		String authNum=emailconfirm.connectEmail(email);
%>
	<div align="center">
	<form method="post" action="" name="emailcheck">
		<table>
			<tr>
				<th colspan="2">인증번호를 입력하세요.</th>
			</tr>
			<tr>
				<td><input type="text" name="emailconfirm"></td>
				<td><input type="button" value="확인"
					onclick="confirmemail(emailcheck.emailconfirm.value,<%=authNum%>)">

				</td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>