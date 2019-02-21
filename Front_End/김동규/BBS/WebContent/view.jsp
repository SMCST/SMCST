<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width" , initial-scale="1.0">

<link rel="stylesheet" href="css/css/bootstrap.css">
<link rel="stylesheet" href="css/css/custom.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="js/js/common.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/js/bootstrap.min.js"></script>

<title>SMU 튜터링 시스템</title>

</head>

<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		int bbsBoardNumber = 0;
		if (request.getParameter("bbsBoardNumber") != null) {
			bbsBoardNumber = Integer.parseInt(request.getParameter("bbsBoardNumber"));
		}
		if(bbsBoardNumber == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다.')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
		Bbs bbs = new BbsDAO().getBbs(bbsBoardNumber);
	%>


	<nav class="navbar navbar-default">

		<div class="naver-header">

			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">


				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>


			</button>

			<a class="navbar-brand" href="main.jsp">SMU 튜터링 시스템</a>

		</div>


		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">

			<ul class="nav navbar-nav">

				<li><a href="main.jsp">메인</a>
				<li class="active"><a href="bbs.jsp">게시판</a>
			</ul>
			<%
				if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>


					<ul class="dropdown-menu">

						<li class="active"><a href="login.jsp">로그인</a></li>

						<li><a href="join.jsp">회원가입</a></li>

					</ul></li>

			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>


					<ul class="dropdown-menu">

						<li class="active"><a href="logoutAction.jsp">로그아웃</a></li>

					</ul></li>

			</ul>
			<%
				}
			%>


		</div>

	</nav>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3" style="background-color: #eeeeee; text-align: center;">게시판 글쓰기 보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2"><%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&rt").replaceAll("\n", "<br>") %></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2"><%= bbs.getBbsID() %></td>
					</tr>
					<tr>
						<td>작성 일자</td>
						<td colspan="2"><%= bbs.getBbsDate().substring(0, 4) + "년 " + bbs.getBbsDate().substring(5, 7) + "월 " + bbs.getBbsDate().substring(8, 10)+ "일 " %></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="height: 200px; min-height: 200px; text-align: left;"><%= bbs.getBbsContents().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&rt").replaceAll("\n", "<br>") %></td>
					</tr>
				</tbody>
			</table>
			<a href="bbs.jsp" class="btn btn-primary">목록</a>
			<%
				if(userID != null && userID.equals(bbs.getBbsID())) {
				
			%>
				<a href="update.jsp?bbsBoardNumber=<%= bbsBoardNumber %>" class="btn btn-primary">수정</a>
				<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?bbsBoardNumber=<%= bbsBoardNumber %>" class="btn btn-primary">삭제</a>
			<%
				}
			%>
			<input type="button" class="btn btn-primary pull-right" onclick="location.href='write.jsp'" value="글쓰기"></a>
		
		</div>
	</div>



</body>
</html>