<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="user.UserDAO" %>
<%@ page import ="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="ID"/>
<jsp:setProperty name="user" property="password"/>
<jsp:setProperty name="user" property="name"/>
<jsp:setProperty name="user" property="phone"/>
<jsp:setProperty name="user" property="birth"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String ID = null;
	if(session.getAttribute("ID")!=null){
		ID = (String)session.getAttribute("ID");
	}
	if(ID != null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인이 되어있습니다.')");
		script.println("location.href='hello.jsp'");
		script.println("</script>");
	}
	if(user.getID()==null || user.getPassword()==null || user.getName()==null || user.getPhone()==null 
	|| user.getBirth()==null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}else{
		UserDAO userDAO = new UserDAO();
		int result = userDAO.insert(user);
		
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 존재하는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			session.setAttribute("ID",user.getID()); //session값 넣어주기
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'hello.jsp'");
			script.println("</script>");
		}
	}
	
%>
</body>
</html>