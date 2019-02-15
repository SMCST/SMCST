<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변경폼</title>
</head>
<body>
<form action="update.jsp" method="post">
<table border="1">
	<tr>
		<td>아이디</td>
		<td><input type="text" name="memberID" size="30"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" size="10"></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="phone" size="10"></td>
	</tr>
	<tr>
		<td>현재비밀번호</td>
		<td><input type="password" name="password" size="10"></td>
	</tr>
	<tr>
		<td>새 비밀번호</td>
		<td><input type="password" name="password" size="10"></td>
	</tr>
	<tr>
		<td>새 비밀번호 확인</td>
		<td><input type="password" name="password2" size="10"></td>
	</tr>
	<tr>
		<td colspan="4"><input type="submit" value="변경"></td>
	</tr>
</table>
</form>
</body>
</html>