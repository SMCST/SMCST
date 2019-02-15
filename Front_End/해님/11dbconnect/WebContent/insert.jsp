<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %>
<%
	request.setCharacterEncoding("utf-8");

	String memberID = request.getParameter("memberID");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String phone = request.getParameter("phone");
	String alert = request.getParameter("alert");
	String StatusCode = request.getParameter("StatusCode");
	String picture = request.getParameter("picture");
	String birth = request.getParameter("birth");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try{
		String jdbcDriver = "jdbc:mysql://localhost:3306/tutoring?"+
						"useUnicode=true&characterEncoding=utf8";
		String dbUser = "root";
		String dbPass = "root";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		pstmt = conn.prepareStatement("insert into MEMBER values (?,?,?,?,default,default,default,?)");
		pstmt.setString(1, memberID);
		pstmt.setString(2, name);
		pstmt.setString(3, password);
		pstmt.setString(4, phone);
		pstmt.setString(5, birth);
		
		pstmt.executeUpdate();
		
	}finally{
		if (pstmt != null) try{pstmt.close();}catch(SQLException ex){}
		if (conn != null) try{ conn.close();}catch(SQLException ex){}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삽입</title>
</head>
<body>
MEMBER 테이블에 새로운 레코드를 삽입했습니다.
</body>
</html>