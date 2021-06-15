<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<meta name="generator" content="Hugo 0.83.1">
	
	<title>Project tLOL.gg join</title>
	<script type="text/javascript" src="../bootstrap/js/jquery.js"></script>
	
	<!-- Bootstrap -->
	<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<link href="../bootstrap/css/bootstrap.css" rel="stylesheet">
	<link href="../bootstrap/css/login.css" rel="stylesheet">	
	
	<script type="text/javascript" >
	function emailcheck(member_email, member_email2){
        // 유효성 검사
    	if(!fr.member_email.value || !fr.member_email2.value){ 
    		//alert(emailerror);
    		fr.member_email.focus();
    		return;
    	}else{
    		if(fr.member_email.value){
    			if(fr.member_email2.value==0){
    				// 직접입력
    				if(fr.member_email.value.indexOf("@")==-1){
    					//alert(emailerror);
    					fr.member_email.focus();
    					return false;
    				}
    			}else{
    				// 선택입력
    				if(fr.member_email.value.indexOf("@")!=-1){
    					//alert(emailerror);
    					fr.member_email.focus();
    					return false;
    				}
    			}
    		}
    	}
        // 인증을 위해 새창으로 이동
    	var url="emailCheck.jsp?member_email="+member_email+"&member_email2="+member_email2;
    	open(url,"emailwindow", "statusbar=no, scrollbar=no, menubar=no,  width=400, height=200" );
                                                     
    }
    function auth(){
    	document.getElementById("authBtn").disabled = true;
    }
	function chk() {
		if (!frm.member_id.value) {	
			alert('중복확인이 필요합니다');
			frm.member_id.focus();		
			return false;		
			}
		$.post("confirm.do", "member_id="+frm.member_id.value, function(data) {
			$('#err').html(data);
		});
	}
	</script>
</head>

<body class="text-center bg-dark">
		<form class="form-signin" method="post" action="join.do" name="frm">	
			<div class="mb-4 nav justify-content-center" onclick="location.href='../main.jsp'"><img src="../images/logo-remove.png" alt=""></div>
			<font color="white"><h1 class="h3 mb-4 mt-5 fw-normal">회원가입</h1></font>
			<div class="form-floating">
				<input type="text" class="form-control" placeholder="아이디" name="member_id" required="required" autofocus="autofocus" maxlength="20">
				<label for="floatingInput">ID</label>
				<input type="button" class="mt-2 mb-1 w-40 btn btn-outline-primary btn-sm" value="중복체크" onclick="chk()">		
			</div>
			<div id="err"></div>
			<div class="mt-1 form-floating">
				<input type="password" class="form-control" placeholder="비밀번호" name="member_pw" required="required" maxlength="20">
				<label for="floatingInput">Password</label>	
			</div>
			<div class="form-floating">
				<input type="text" class="form-control" placeholder="닉네임" name="member_nickname" required="required" maxlength="20">
				<label for="floatingInput">Nickname</label>	
			</div>
			
			<div class="form-group">
              <label for="eamil">이메일 인증</label>
              <input type="text" name="member_email" maxlength="15" required="required" id="email">
					@ <select name="member_email2">
					      <option value="0">선택하세요</option>
					      <option value="naver.com">naver.com</option>
					      <option value="daum.net">daum.net</option>
					      <option value="nate.com">nate.com</option>
					      <option value="gmail.com">gmail.com</option>
					  </select>
					<input type="button" name="emailconfirm_btn" value="인증" onclick="emailcheck(fr.member_email.value,fr.member_email2.value); auth();" id="authBtn">
            </div>

			<button class="mt-2 w-100 btn btn-lg btn-primary" type="submit">회원가입</button>
			<p class="mt-5 mb-3 text-muted">&copy; Project.tLOL.gg</p>
		</form>
</body>
</html>