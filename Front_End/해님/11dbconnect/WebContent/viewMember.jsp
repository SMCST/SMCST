<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%
	String memberID = request.getParameter("memberID");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		String jdbcDriver = "jdbc:mysql://localhost:3306/tutoring?"+
							"useUnicode=true&characterEncoding=utf8";
		String dbUser ="root";
		String dbPass="root";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		pstmt = conn.prepareStatement("select * from MEMBER where ID=?");
		pstmt.setString(1, memberID);
		
		rs = pstmt.executeQuery();
		if(rs.next()){
%>
<table border="1">
	<tr>
		<td>아이디</td><td><%=memberID %></td>
	</tr>
	<tr>
		<td>이름</td><td><%=rs.getString("NAME") %></td>
	</tr>
	<tr>
		<td>비밀번호</td><td><%=rs.getString("PASSWORD") %></td>
	</tr>
	<tr>
		<td>전화번호</td><td><%=rs.getString("PHONE") %></td>
	</tr>
	<tr>
		<td>프로필</td><td><img src="<%=rs.getString("PICTURE") %>"></td>
	</tr>
</table>
<%
		}else{
%>
<%= memberID %> 에 해당하는 정보가 존재하지 않습니다.
<%
		}
	}catch(SQLException ex){
%>
에러 발생: <%= ex.getMessage() %>
<%
	}finally{
		if(rs!=null) try {rs.close();}catch(SQLException ex){}
		if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
		if(conn!=null)try{conn.close();}catch(SQLException ex){}
		
	}
%>
</body>
</html>