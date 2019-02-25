<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="board.BoardDAO" %>
<%@ page import="board.Board" %>
<%@ page import="java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<style>
	#container{
		width: 1200px;
		margin: 0 auto;
		border: none;
	}
	#header{
		text-align: left;
		height: 200px;
		border: 1px solid #E4E5E7;
	}
	#contents{
		width: 888px;
		padding: 20px;
		float: left;
		margin-bottom: 20px;
	}
	#sidebar{
		width: 220px;
		padding: 20px;
		float: left;
		margin-bottom: 20px;
		background: #F5F8FD;
		border: 1px solid #E4E5E7;
	}
	#footer{
		clear: both;
		padding: 20px;
		background: white;
		text-align: center;
	}	
    .SidePhoto{
    	width: 40px; height: 40px;
    	object-fit: cover;
    	border-radius: 50%;
    }
    .menu{
    	text-indent: 20px;
    	line-height:2; 
    }
    .ClassBoard{
    	text-indent: 60px;
    	font-size: 22px;
    	font-weight: bold;
    	margin-top: 60px;
    }
    	a, a:hover{
		color: #000000;
		text-decoration: none;
	}
	</style>
</head>
<body>
	<%
		String ID = null;
		if (session.getAttribute("ID")!=null){
			ID = (String) session.getAttribute("ID");
		}
		int pageNumber= 1; //기본 1페이지
		if(request.getParameter("pageNumber")!=null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
	<nav class="navbar navbar-default">
			<%
				if(ID==null){
			%>
					<ul>
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="insertForm.jsp">회원가입</a></li>
					</ul>
			<%		
				}else{
			%>
			<ul>
				<li><a href="logoutAction.jsp">로그아웃</a></li>
			</ul>
			<%		
				}
			%>
			
	</nav>
	<div id="container">
		<div id="header">
			<table>
				<tr>
					<td rowspan="3">
			 			<img src="images/title.jpg" style="	float: left; height: 150px; width: 240px; padding: 20px;"/>
  				 	</td>
  				 		<td valign=bottom style="text-indent:20px; font-weight: bold; font-size:20px;">
  				 		<a href="ClassIntroduceTutoring.jsp">Tutoring Title</a></td>
  				 </tr>
  				 <tr>
  				 		<td valign=middle style="text-indent:20px; font-weight: bold; font-size:20px;">Subject</td>
  				 </tr>
  				 <tr> 
  				 		<td valign=top style="text-indent:20px; font-weight: bold; font-size:20px;"><a href="ClassParticipant.jsp#tutor">tutor name</a></td>
				</tr>
			</table>
		</div>
		<div id="sidebar">
			<div style="text-align: center; border: none;">
				<img src="images/1.jpg" style="	width: 100px; height: 100px; object-fit: cover; border-radius: 50%;"/>
				<h4>Tutor, 김해님</h4>
				<address>
					<p style="color: gray;"><img src="images/mail.png" style="width:15px; height:15px;"> aosladl@naver.com</p>
				</address>
			</div>
			<h3 style="border-bottom: 1px solid #ccc;"><a href="ClassParticipant.jsp">참여자 목록</a></h3>
				<p class="menu"><img class='SidePhoto' src="images/1.jpg"><a href="ClassParticipant.jsp#tutor">김해님</a></p>
				<p class="menu"><img class='SidePhoto' src="images/1.png"><a href="ClassParticipant.jsp#tutee1">정성옥</a></p>
				<p class="menu"><img class='SidePhoto' src="images/1.png"><a href="ClassParticipant.jsp#tutee2">김창성</a></p>
			<h3 style="border-bottom: 1px solid #ccc;">메뉴</h3>
			<p class="menu"><a href="ClassRoomMain.jsp">강의실 홈</a></p>
			<p class="menu"><a href="ClassNotify.jsp">공지사항</a></p>
			<p class="menu"><a href="ClassMeetingLog.jsp">회의록</a></p>
			<p class="menu"><a href="ClassResourceCenter.jsp">자료실</a></p>
			<p class="menu"><a href="ClassReport.jsp">과제 게시판</a></p>
			<p class="menu"><a href="ClassPetition.jsp">청원</a></p>
			<p class="menu"><a href="ClassReference.jsp">참고 메뉴</a></p>
			<p class="menu"><a href="ClassEvaluation.jsp">튜터링 평가</a></p>
			<p class="menu"><a href="ClassGrade.jsp">튜터링 평점조회</a></p>
		</div>
		<div id="contents">
			<p class="ClassBoard">공지사항</p>
			<p style="text-align: right; margin-right: 80px; font-size: 18px; font-weight: bold;"><a href="ClassNotify.jsp">더보기</a></p>
			<table style="margin-left: 50px; text-indent:80px; text-align: left; line-height:2;">
					<%
						BoardDAO boardDAO = new BoardDAO();
					ArrayList<Board> list = boardDAO.getClassMainNotify();
					for(int i=0; i<list.size();i++){
					%>
					<tr>
						<td style="width: 450px;"><a href="ClassNotifyView.jsp?BoardNumber=<%= list.get(i).getBoardNumber() %>"><%=list.get(i).gettitle().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></a></td>
						<td><%= list.get(i).getDate().substring(0,11) %></td>
						<td>조회 <%= list.get(i).getViews() %></td>
					</tr>
					<%
					}
					%>
			</table>
			<p class="ClassBoard">회의록</p>
			<p style="text-align: right; margin-right: 80px; font-size: 18px; font-weight: bold;"><a href="ClassResourceCenter.jsp">더보기</a></p>
			<table style="margin-left: 50px; text-indent:80px; text-align: left; line-height:2;">
					<%
						BoardDAO boardDAO1 = new BoardDAO();
					ArrayList<Board> list1 = boardDAO1.getClassMainMeetingLog();
					for(int i=0; i<list1.size();i++){
					%>
					<tr>
						<td style="width: 450px;"><a href="ClassMeetingLogView.jsp?BoardNumber=<%= list1.get(i).getBoardNumber() %>"><%=list1.get(i).gettitle().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></a></td>
						<td><%= list1.get(i).getDate().substring(0,11) %></td>
						<td>조회 <%= list1.get(i).getViews() %></td>
					</tr>
					<%
					}
					%>
			</table>
			<p class="ClassBoard">자료실</p>
			<p style="text-align: right; margin-right: 80px; font-size: 18px; font-weight: bold;"><a href="ClassMeetingLog.jsp">더보기</a></p>	
				<table style="margin-left: 50px; text-indent:80px; text-align: left; line-height:2;">
					<%
						BoardDAO boardDAO2 = new BoardDAO();
					ArrayList<Board> list2 = boardDAO2.getClassMainResourceCenter();
					for(int i=0; i<list2.size();i++){
					%>
					<tr>
						<td style="width: 450px;"><a href="ClassResourceCenterView.jsp?BoardNumber=<%= list2.get(i).getBoardNumber() %>"><%=list2.get(i).gettitle().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></a></td>
						<td><%= list2.get(i).getDate().substring(0,11) %></td>
						<td>조회 <%= list2.get(i).getViews() %></td>
					</tr>
					<%
					}
					%>
			</table>
		</div>
		</div>
		<div id="footer">
		<p style="text-align:center; ">footer</p>
	</div>
</body>
</html>