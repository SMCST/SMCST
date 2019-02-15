<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.SQLException" %>
<%
	request.setCharacterEncoding("utf-8");
	String memberID = request.getParameter("memberID");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String password2 = request.getParameter("password2");
	String phone = request.getParameter("phone");
	
	int updateCount = 0;
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn= null;
	Statement stmt = null;
	
	try{
		String jdbcDriver ="jdbc:mysql://localhost:3306/tutoring?"+
						"useUnicode=true&characterEncoding=utf8";
		String dbUser="root";
		String dbPass="root";
		
		String query="update MEMBER set NAME ='"+name+"', password='"+password+"', phone="+phone+" where ID='"+memberID+"'";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt = conn.createStatement();
		updateCount = stmt.executeUpdate(query);
	}
	finally{
		if(stmt!=null)try{stmt.close();}catch(SQLException ex){}
		if(conn!=null)try{conn.close();}catch(SQLException ex){}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정</title>
</head>
<body>
<% if(updateCount>0){ %>
<%= memberID %>의 정보가 수정되었습니다.
<%}else{ %>
<%= memberID %>가 존재하지 않음
<%} %>
</body>
</html>