<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="user.User" %>
<%@ page import="user.UserDAO" %>

<%@ page import="java.io.PrintWriter" %>

<%@ page import="java.util.Enumeration" %>

<%@ page import="java.io.File, java.io.IOException, com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>

<% request.setCharacterEncoding("UTF-8");

	String uploadPath = request.getRealPath("img");
	
	int size = 10*1024*1024;
	
	String userID = "";
	String userName = "";
	String userPassword = "";
	int userPhone = 0;
	int userBirth = 0;
	String userPicture = "";
	
	MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
	
	Enumeration files = multi.getFileNames();
	String file1 = (String)files.nextElement();
	userPicture = multi.getFilesystemName(file1);
	
	userID = multi.getParameter("userID");
	userName = multi.getParameter("userName");
	userPassword = multi.getParameter("userPassword");
	userPhone = Integer.parseInt(multi.getParameter("userPhone"));
	userBirth = Integer.parseInt(multi.getParameter("userBirth"));
	
	User user = new User();
	user.setUserID(userID);
	user.setUserName(userName);
	user.setUserPassword(userPassword);
	user.setUserPhone(userPhone);
	user.setUserBirth(userBirth);
	user.setUserPicture(userPicture);
%>
 
<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

 

<title>회원가입 중입니다.</title>

</head>

<body>

<%
if(session.getAttribute("userID") != null) {
	userID = (String) session.getAttribute("userID");
}
if (userID != null) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('이미 로그인이 되어있습니다.')");
	script.println("location.href = 'main.jsp'");
	script.println("</script>");
}
	System.out.println(userID);
	System.out.println(userPassword);
	System.out.println(userName);
	System.out.println(userPhone);

if(userID == null || userPassword == null || userName == null || userPhone == 0){

PrintWriter script = response.getWriter();

script.println("<script>");

script.println("alert('입력이 안된 사항이 있습니다')");

script.println("history.back()");

script.println("</script>");

}else{

UserDAO userDAO = new UserDAO();

int result = userDAO.join(user);

if(result == -1){

PrintWriter script = response.getWriter();

script.println("<script>");

script.println("alert('이미 존재하는 아이디입니다')");

script.println("history.back()");

script.println("</script>");

}

else{

PrintWriter script = response.getWriter();

script.println("<script>");

script.println("location.href='main.jsp'");

//script.println("history.back()");

script.println("</script>");

}


}


%>

</body>

</html> 