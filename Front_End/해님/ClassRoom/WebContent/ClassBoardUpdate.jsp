<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="application.ApplicationDAO" %>
<%@ page import="application.Application" %>
<%@ page import="tclass.Tclass" %>
<%@ page import="tclass.TclassDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import ="board.Board" %>
<%@ page import ="board.BoardDAO" %>
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
    	a, a:hover{
		color: #000000;
		text-decoration: none;
	}
	</style>
	<% String ctx = request.getContextPath(); %>
	<!-- SmartEditor를 사용하기 위해서 다음 js파일을 추가 (경로 확인) -->
<script type="text/javascript" src="<%=ctx %>/SE2/js/HuskyEZCreator.js" charset="utf-8"></script>
<!-- jQuery를 사용하기위해 jQuery라이브러리 추가 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.min.js"></script>

<script type="text/javascript">
var oEditors = [];
$(function(){
      nhn.husky.EZCreator.createInIFrame({
          oAppRef: oEditors,
          elPlaceHolder: "ir1", //textarea에서 지정한 id와 일치해야 합니다. 
          //SmartEditor2Skin.html 파일이 존재하는 경로
          sSkinURI: "SE2/SmartEditor2Skin.html",  
          htParams : {
              // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseToolbar : true,             
              // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseVerticalResizer : true,     
              // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
              bUseModeChanger : true,         
              fOnBeforeUnload : function(){
                   
              }
          }, 
          fOnAppLoad : function(){
              //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
              oEditors.getById["ir1"].exec("PASTE_HTML", [""]);
          },
          fCreator: "createSEditor2"
      });
      
      //저장버튼 클릭시 form 전송
      $("#save").click(function(){
          oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
          $("#frm").submit();
      });    
});
 
 
 
</script>
</head>
<body>

	<%
		int code= 1;
		if(request.getParameter("code")!=null){
			code = Integer.parseInt(request.getParameter("code"));
		}
		String ID = null;
		if (session.getAttribute("ID")!=null){
			ID = (String) session.getAttribute("ID");
		}
		if (ID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		}
		int BoardNumber = 0;
		if (request.getParameter("BoardNumber") != null){
			BoardNumber = Integer.parseInt(request.getParameter("BoardNumber"));
		}
		if (BoardNumber == 0 ){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않는 글입니다.')");
			script.println("</script>");
			
			%>
			<script>
			location.href = 'ClassBoard.jsp?code=<%=code%>';
			</script>
			<%
		}
		Board board = new BoardDAO().getBoard(BoardNumber);
		if (!ID.equals(board.getID())){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("</script>");
			%>
			<script>
			location.href = 'ClassBoard.jsp?code=<%=code%>';
			</script>
			<%
			}
	%>
	
	<nav class="navbar navbar-default">
			
			<ul>
				<li><a href="logoutAction.jsp">로그아웃</a></li>
			</ul>
		
	</nav>
	
	<div id="container">
				<div id="header">
		<%
				TclassDAO tclassDAO = new TclassDAO();
				ArrayList<Tclass> tutoring = tclassDAO.getTclass();
		%>
			<table>
				<tr>
					<td rowspan="3">
			 			<img src="images/title.jpg" style="	float: left; height: 150px; width: 240px; padding: 20px;"/>
  				 	</td>
  				 		<td valign=bottom style="text-indent:20px; font-weight: bold; font-size:20px;">
  				 		<a href="ClassIntroduceTutoring.jsp"><%= tutoring.get(0).getTutoringtitle() %></a></td>
  				 </tr>
  				 <tr>
  				 		<td valign=middle style="text-indent:20px; font-weight: bold; font-size:20px;"><%= tutoring.get(0).getSubject() %></td>
  				 </tr>
  				 <tr> 
  				 		<td valign=top style="text-indent:20px; font-weight: bold; font-size:20px;"><a href="ClassParticipant.jsp#tutor">튜터이름</a></td>
				</tr>
			</table>
		</div>
		<div id="sidebar">
			<div style="text-align: center; border: none;">
				<img src="images/1.jpg" style="	width: 100px; height: 100px; object-fit: cover; border-radius: 50%;"/>
				<h4>Tutor, 튜터이름</h4>
				<address>
					<p style="color: gray;"><img src="images/mail.png" style="width:15px; height:15px;"><%= tutoring.get(0).getID() %></p>
				</address>
			</div>
			<h3 style="border-bottom: 1px solid #ccc;"><a href="ClassParticipant.jsp">참여자 목록</a></h3>
				<p class="menu"><img class='SidePhoto' src="images/1.jpg"><a href="ClassParticipant.jsp#tutor">튜터이름</a></p>
				<p class="menu"><img class='SidePhoto' src="images/1.png"><a href="ClassParticipant.jsp#tutee1">튜티이름</a></p>
				<p class="menu"><img class='SidePhoto' src="images/1.png"><a href="ClassParticipant.jsp#tutee2">튜티이름</a></p>
			<h3 style="border-bottom: 1px solid #ccc;">메뉴</h3>
			<p class="menu"><a href="ClassRoomMain.jsp">강의실 홈</a></p>
			<p class="menu"><a href="ClassBoard.jsp?code=1">공지사항</a></p>
			<p class="menu"><a href="ClassBoard.jsp?code=3">회의록</a></p>
			<p class="menu"><a href="ClassBoard.jsp?code=10">자료실</a></p>
			<p class="menu"><a href="ClassReport.jsp">과제 게시판</a></p>
			<p class="menu"><a href="ClassPetition.jsp">청원</a></p>
			<p class="menu"><a href="ClassReference.jsp">참고 메뉴</a></p>
			<p class="menu"><a href="ClassEvaluation.jsp">튜터링 평가</a></p>
			<p class="menu"><a href="ClassGrade.jsp">튜터링 평점조회</a></p>
		</div>
		
		<div id="contents">
		<%
		if(code==1){
		%>
		<h1 style="text-indent: 50px; margin-top: 70px;">공지사항 수정</h1>
		<%	
		}
		%>
		<%
		if(code==3){
		%>
		<h1 style="text-indent: 50px; margin-top: 70px;">회의록 수정</h1>
		<%	
		}
		%>
		<%
		if(code==10){
		%>
		<h1 style="text-indent: 50px; margin-top: 70px;">자료 수정</h1>
		<%	
		}
		%>
		<%
		if(code==2){
		%>
		<h1 style="text-indent: 50px; margin-top: 70px;">과제 수정</h1>
		<%	
		}
		%>
		<fieldset style="margin-left: 30px; border: 1px solid lightgray;">
		<form name="frm" action="ClassBoardUpdateAction.jsp?code=<%=code%>&BoardNumber=<%=BoardNumber %>" method="post">
			<table style="margin-top:30px; margin-left:30px;line-height:2; ">
				<tr>
					<td style="background: #efefef; text-align:center;">제목</td>
					<td><input type="text" name="title" value="<%=board.gettitle()%>" style="width: 670px; maxlength: 50;"> </td>
				</tr>
				<tr>
					<td style="background: #efefef; text-align:center;">내용</td>
					<td><textarea cols="97" rows="30" id="ir1" name="contents"><%=board.getcontents() %></textarea></td>
				</tr>
				<tr>
					<td style="background: #efefef; text-align:center;">첨부파일</td>
					<td><input type="file"></td>
				</tr>
				<tr>
					<td style="background: #efefef; text-align:center;">첨부파일</td>
					<td><input type="file"></td>
				</tr>
				<tr>
					<td style="background: #efefef; text-align:center;">첨부파일</td>
					<td><input type="file"></td>
				</tr>
			</table>
			<p style="text-align: right; margin-right: 50px;">
				<input type="submit" value="수정" id="save" style="background: white; border: 1px solid black;">
				<input type="button" value="취소"  onClick="history.go(-1)" style="background: white; border: 1px solid black;">
			</p>
			</form>
		</fieldset>
		
		</div>
		</div>
		<div id="footer">
		<p style="text-align:center; ">footer</p>
	</div>
</body>
</html>