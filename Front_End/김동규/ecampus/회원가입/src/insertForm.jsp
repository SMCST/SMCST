<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page errorPage = "/errorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<script>
function doLogin(){


	if(document.form1.memberID.value.length==0){
		alert('아이디를 입력해 주세요.');
		document.form1.memberID.focus();
		return false;
	}
	if(document.form1.password.value.length==0){
		alert('비밀번호를 입력해 주세요.');
		document.form1.password.focus();
		return false;
	}
	if(document.form1.password2.value.length==0){
		alert('비밀번호재확인을 입력해 주세요.');
		document.form1.password2.focus();
		return false;
	}
	if(document.form1.password.value!=document.form1.password2.value){
		alert('비밀번호가 일치한지 확인해주세요.');
		document.form1.password2.focus();
		return false;
	}
	if(document.form1.name.value.length==0){
		alert('이름을 입력해 주세요.');
		document.form1.name.focus();
		return false;
	}
	if(document.form1.birth.value.length==0){
		alert('생년월일을 입력해 주세요.');
		document.form1.birth.focus();
		return false;
	}
	if(document.form1.phone.value.length==0){
		alert('전화번호를 입력해 주세요.');
		document.form1.phone.focus();
		return false;
	}
	
	var phoneValue = document.form1.phone.value;
	phoneValue = phoneValue.replace(/\-/g, ''); //특정문자 제거
	phoneValue = phoneValue.replace(/^\s+/, ''); //앞의 공백 제거
	phoneValue = phoneValue.replace(/\s+$/, ''); //뒤의 공백 제거
	phoneValue = phoneValue.replace(/\s/g, ''); //문자열 내의 공백 제거
	phoneValue = phoneValue.replace(/\n/g, ''); //개행제거
	phoneValue = phoneValue.replace(/\r/g, ''); //엔터제거
	
	document.form1.phone.value = phoneValue;
	
	document.form1.action='./insert.jsp';
	document.form1.submit();	
}

</script>
</head>
<body>

<form method="post" name="form1" onsubmit="return doLogin()" enctype="multipart/form-data">
<table align="center" border="1">
<tr>
	<td>아이디(이메일)</td>
	<td><input type="email" name="memberID" size="30"></td>
	<td>비밀번호</td>
	<td><input type="password" name="password" size="20"></td>
	<td>비밀번호 재확인</td>
	<td><input type="password" name="password2" size="20"></td>
</tr>
<tr>
	<td>이름</td>
	<td><input type="text" name="name" size="10"></td>
	<td>생년월일</td>
	<td><input type="text" name="birth" size="10"></td>
	<td>전화번호</td>
	<td><input type="tel" name="phone" size="16"></td>
</tr>
<tr>
	<td>프로필 사진</td>
	<td><input type="file" name="picture"></td>
</tr>
<tr>
	<td colspan="4"><input type="submit" value="회원가입"></td>
</tr>
</table>
</form>

</body>
</html>