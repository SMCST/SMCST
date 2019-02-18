<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
<script>
function enterNo(){
	   if(document.form1.memberID.value.length==0){
	      alert('아이디를 입력해 주세요.');
	      document.form1.memberID.focus();
	      return;
	   }
	   
	   if(event.keyCode==13){
	      document.form1.password.focus();
	   }   
	   return false;   
	}

	function enterPass(){
	   
	   if(document.form1.memberID.value.length==0){
	      alert('아이디를 입력해 주세요.');
	      document.form1.memberID.focus();
	      return;
	   }
	   
	   if(document.form1.password.value.length==0){
	      alert('비밀번호를 입력해 주세요.');
	      document.form1.password.focus();
	      return;
	   }   
	     
	   return false;   
	}
	
function doLogin(){


	   if(document.form1.memberID.value.length==0){
	      alert('아이디를 입력해 주세요.');
	      document.form1.memberID.focus();
	      return;
	   }
	   
	   if(document.form1.password.value.length==0){
	      alert('비밀번호를 입력해 주세요.');
	      document.form1.password.focus();
	      return;
	   }

	   //document.form1.target='_self';
	   //document.form1.action='/haksa/loginProc.jsp';
	   //document.form1.submit();   
	}
</script>
</head>
<body>

<form action="insert.jsp" method="post" name="form1">
<table border="1">
	<tr>
		<td><label>아이디<input type="email" name="memberID" size="30" placeholder="email 주소 입력" onkeydown="if(event.keyCode==13){return enterNo();}"></label>
			<small style="color:red;">email형식을 입력해주세요.</small>
		</td>
	</tr>
	<tr>
		<td>이름<input type="text" name="name" size="30"></td>
	</tr>
	<tr>
		<td>비밀번호<input type="password" name="password" placeholder="특문포함 8자이상" size="30" onkeydown="if(event.keyCode==13){return enterPass();}"></td>
	</tr>
	<tr>
		<td>비밀번호 재확인<input type="password" name="password2" size="30" onkeydown="if(event.keyCode==13){return enterPass();}"></td>	
	</tr>
	<tr>
		<td>생년월일<input type="text" name="birth" size="30"></td>
	</tr>
	<tr>
		<td>전화번호<input type="text" name="phone" size="30"></td>
	</tr>
	<tr>
		<td>프로필사진<input type="file" name="picture" size="30"></td>
	</tr>
	<tr>
		<td colspan="4"><input type="submit" value="회원가입"></td>
	</tr>
</table>