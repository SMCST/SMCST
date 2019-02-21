<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1.0">
<link rel="stylesheet" href="css/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>회원 목록</title>
</head>
<body>

MEMBER 테이블의 내용
<table width="100%" border="1">
<tr>
	<td>아이디</td><td>이름</td><td>비밀번호</td><td>전화번호</td><td>경고</td><td>상태코드</td><td>프로필경로</td><td>프로필사진</td><td>생년월일</td>
</tr>
<%
	// 1. JDBC 드라이버 로딩
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		String jdbcDriver = "jdbc:mysql://localhost:3306/tutoring?" +
						"useUnicode=true&characterEncoding=utf8";
		String dbUser = "root";
		String dbPass = "root";
		
		String query = "select * from MEMBER order by MEMBERID";
		
		// 2. 데이터베이스 커넥션 생성
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		// 3. PrepareStatement 생성
		pstmt = conn.prepareStatement(query);
		
		// 4. 쿼리 실행
		rs = pstmt.executeQuery();
		
		// 5. 쿼리 실행 결과 출력
		while(rs.next()) {
%>
<tr>
	<td><%= rs.getString("MEMBERID") %></td>
	<td><%= rs.getString("NAME") %></td>
	<td><%= rs.getString("PASSWORD") %></td>
	<td><%= rs.getString("PHONE") %></td>
	<td><%= rs.getString("ALERT") %></td>
	<td><%= rs.getString("STATUSCODE") %></td>
	<td><%= rs.getString("PICTURE") %></td>
	<td><img src="./img/<%= rs.getString("PICTURE") %>" width="100px" height="100px"></td>
	<td><%= rs.getString("BIRTH") %></td>
</tr>
<%
		}
	} catch(SQLException ex) {
		out.println(ex.getMessage());
		ex.printStackTrace();
	} finally {
		// 6. 사용한 PrepareStatement 종료
		if (rs != null) try { rs.close(); } catch(SQLException ex){}
		if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		
		// 7. 커넥션 종료 
		if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	}
%>
</table>

</body>
</html>