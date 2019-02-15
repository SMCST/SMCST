
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import ="java.io.Reader" %>
<%@ page import = "java.io.IOException" %>
<%
	String memberID = request.getParameter("memberID");
	System.out.println("확인: "+memberID);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원이 들었던 튜터링정보</title>
</head>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver");

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try{
		String jdbcDriver = "jdbc:mysql://localhost:3306/tutoring?"+
						"useUnicode=true&characterEncoding=utf8";
		String dbUser="root";
		String dbPass="root";
		String query="select distinct tutoring.tutoringtitle from tutoring, application where application.id='"+memberID+"'";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		
		if(rs.next()){
%>
<table border="1">
	<tr>
		<td>
			아이디
		</td>
		<td>
		<%=memberID %>
		</td>
	</tr>
	<tr>
		<td>
			튜터링 이름
		</td>
		<td>
		<%do{ %>
			<%= rs.getString("tutoringtitle") %>
			<br>
		<%}while(rs.next()); %>
		</td>
	</tr>
</table>
<%
		}else{
%>
<%= memberID %>의 튜터링 히스토리가 없습니다.
<%
	}
}catch(SQLException ex){
%>	
에러발생: <%= ex.getMessage() %>
<%
	} finally{
		if (rs!=null)try{rs.close();}catch(SQLException ex){}
		if(stmt!=null)try{stmt.close();}catch(SQLException ex){}
		if(conn!=null)try{conn.close();}catch(SQLException ex){}
	}
%>
</body>
</html>