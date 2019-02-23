<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>
<%@page import="ChartDirector.*" %>
<%
// The data for the chart
int sincerity=90;
int kind=80;
int curriculum=85;
int interest=100;
int delivery=83;

double[] data = {sincerity, kind, curriculum, interest, delivery};

// The labels for the chart
String[] labels = { "Sincerity",
        "Kind",
        "Curriculum",
        "Interest",
        "Delivery"};

// Create a PolarChart object of size 450 x 350 pixels
PolarChart c = new PolarChart(450, 350);

// Set center of plot area at (225, 185) with radius 150 pixels
c.setPlotArea(225, 185, 150);

// Add an area layer to the polar chart
c.addAreaLayer(data, 0x9999ff);

// Set the labels to the angular axis as spokes
c.angularAxis().setLabels(labels);

// Output the chart
String chart1URL = c.makeSession(request, "chart1");

// Include tool tip for the chart
String imageMap1 = c.getHTMLImageMap("", "", "title='{label}: score = {value}'");
%>

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
</head>
<body>
	<p style="text-align:center; ">header</p>
	<div id="container">
		<div id="header">
			<table>
				<tr>
					<td rowspan="3">
			 			<img src="images/title.jpg" style="	float: left; height: 150px; width: 240px; padding: 20px;"/>
  				 	</td>
  				 		<td valign=bottom style="text-indent:20px; font-weight: bold; font-size:20px;">Tutoring Title</td>
  				 </tr>
  				 <tr>
  				 		<td valign=middle style="text-indent:20px; font-weight: bold; font-size:20px;">Subject</td>
  				 </tr>
  				 <tr> 
  				 		<td valign=top style="text-indent:20px; font-weight: bold; font-size:20px;">tutor name</td>
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
				<p class="menu"><img class='SidePhoto' src="images/1.jpg"><a href="ClassParticipant.jsp#tutor">김해님(튜터자리)</a></p>
				<p class="menu"><img class='SidePhoto' src="images/1.png">정성옥(튜티1)</p>
				<p class="menu"><img class='SidePhoto' src="images/1.png">김창성(튜티2)</p>
			<h3 style="border-bottom: 1px solid #ccc;">튜티/튜터메뉴</h3>
			<p class="menu"><a href="ClassRoomMain.jsp">강의실 홈</a></p>
			<p class="menu"><a href="ClassNotify.jsp">공지사항</a></p>
			<p class="menu"><a href="ClassMeetingLog.jsp">회의록</a></p>
			<p class="menu"><a href="ClassResourceCenter.jsp">자료실</a></p>
			<p class="menu"><a href="ClassReportSubmit.jsp">수업보고서 제출</a></p>
			<p class="menu"><a href="ClassEvaluation.jsp">튜터링 평가</a></p>
			<p class="menu"><a href="ClassPetition.jsp">청원 게시판</a></p>
			<p class="menu"><a href="ClassReference.jsp">참고 메뉴</a></p>
			<p class="menu"><a href="ClassReportCheck.jsp">수업보고서 조회</a></p>
			<p class="menu"><a href="ClassGrade.jsp">평점조회</a></p>
		</div>
		<div id="contents">
		<h1 style="text-indent: 50px; margin-top: 70px;">평점조회</h1>
		<p style="text-indent: 50px; color: gray;">'자바를 자바바'의 점수는?</p>
		<div style="text-align:center;">
		<img src='<%=response.encodeURL("getchart.jsp?"+chart1URL)%>' usemap="#map1" border="0">
		<map name="map1"><%=imageMap1%></map>
		</div>
		<hr color="#000080" style="margin-left: 50px;">
		<br>
		<table style="margin-left: 50px; margin-top: 20px; line-height:2;">
					<tr>
						<td style="width:110px; text-align: center;"> <!-- 이름이 4글자인 사람을 위해 110으로 맞춤 -->
							<p><img class='SidePhoto' src="images/1.png">정성옥</p>
						</td>
						<td style="width: 200px; text-align: center;">
							작은 오각형
						</td>
						<td style="stext-align: left; width: 400px;">
							집중이 잘 되고 너무 재밌어서 지루하지 않은 수업이었습니다. 다음에 다른 튜터링으로 또 뵙고 싶어요.
						</td>
						<td style="text-align: right; width: 100px;">
							2019-02-24
						</td>
					</tr>
			</table>
			<br>
			<hr color="#000080" style="margin-left: 50px;">
		
			</div>
		</div>
		<div id="footer">
		<p style="text-align:center; ">footer</p>
	</div>
</body>
</html>