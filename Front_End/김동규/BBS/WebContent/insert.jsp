<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>

<%@ page import="java.util.Enumeration" %>

<%@ page import="java.io.File, java.io.IOException, com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>

<%
	request.setCharacterEncoding("utf-8");

	String uploadPath = request.getRealPath("img");
	
	int size = 10*1024*1024;
	
	String memberID = "";
	String password = "";
	String name = "";
	String birth = "";
	String phone = "";
	String filename1 = "";
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	try {
		// 회원가입 시 삽입 하기 이전에 기존의 memberID가 있는지 select 문으로 재확인 필요. 안그러면 파일이 업로드 됨.
		String jdbcDriver = "jdbc:mysql://localhost:3306/tutoring?"
						+"useUnicode=true&characterEncoding=utf8";
		String dbUser = "root";
		String dbPass = "root";
		
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
		
		memberID = multi.getParameter("memberID");
		password = multi.getParameter("password");
		name = multi.getParameter("name");
		birth = multi.getParameter("birth");
		phone = multi.getParameter("phone");

		Enumeration files = multi.getFileNames();
		String file1 = (String)files.nextElement();
		filename1 = multi.getFilesystemName(file1);
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		pstmt = conn.prepareStatement("INSERT INTO MEMBER VALUES (?,?,?,?,default,default,?,?);");
		pstmt.setString(1, memberID);
		pstmt.setString(2, name);
		pstmt.setString(3, password);
		pstmt.setInt(4, Integer.parseInt(phone));
		pstmt.setString(5, filename1);
		pstmt.setString(6, birth);
		
		pstmt.executeUpdate();
	}catch(SQLException ex) {
		out.println(ex.getMessage());
		ex.printStackTrace();
	}finally {
		if(pstmt != null) try {pstmt.close(); } catch(SQLException e){}
		if(conn != null) try {conn.close(); } catch(SQLException e){}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1.0">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>회원가입 완료</title>
</head>
<body>
회원가입 완료되었습니다.<br>
<button onclick="document.location.href='./insertForm.jsp'" class="navbar-toggle collapsed"
data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">뒤로가기</button>
</body>
</html>