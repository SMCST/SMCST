<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원정보조회</title>
</head>
<body>

<form action="viewMember.jsp" method="post">
<table border="1">
	<tr>
		<td>아이디</td>
		<td><input type="text" name="memberID" size="30"></td>
	</tr>
	<tr>
		<td colspan="4"><input type="submit" value="조회"></td>
	</tr>
</table>
</form>
</body>
</html>