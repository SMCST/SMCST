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
				<h4>Tutor, ���ش�</h4>
				<address>
					<p style="color: gray;"><img src="images/mail.png" style="width:15px; height:15px;"> aosladl@naver.com</p>
				</address>
			</div>
			<h3 style="border-bottom: 1px solid #ccc;"><a href="ClassParticipant.jsp">������ ���</a></h3>
				<p class="menu"><img class='SidePhoto' src="images/1.jpg"><a href="ClassParticipant.jsp#tutor">���ش�(Ʃ���ڸ�)</a></p>
				<p class="menu"><img class='SidePhoto' src="images/1.png">������(ƩƼ1)</p>
				<p class="menu"><img class='SidePhoto' src="images/1.png">��â��(ƩƼ2)</p>
			<h3 style="border-bottom: 1px solid #ccc;">ƩƼ/Ʃ�͸޴�</h3>
			<p class="menu"><a href="ClassRoomMain.jsp">���ǽ� Ȩ</a></p>
			<p class="menu"><a href="ClassNotify.jsp">��������</a></p>
			<p class="menu"><a href="ClassMeetingLog.jsp">ȸ�Ƿ�</a></p>
			<p class="menu"><a href="ClassResourceCenter.jsp">�ڷ��</a></p>
			<p class="menu"><a href="ClassReportSubmit.jsp">�������� ����</a></p>
			<p class="menu"><a href="ClassEvaluation.jsp">Ʃ�͸� ��</a></p>
			<p class="menu"><a href="ClassPetition.jsp">û�� �Խ���</a></p>
			<p class="menu"><a href="ClassReference.jsp">���� �޴�</a></p>
			<p class="menu"><a href="ClassReportCheck.jsp">�������� ��ȸ</a></p>
			<p class="menu"><a href="ClassGrade.jsp">������ȸ</a></p>
		</div>
		<div id="contents">
		<h1 style="text-indent: 50px; margin-top: 70px;">������ȸ</h1>
		<p style="text-indent: 50px; color: gray;">'�ڹٸ� �ڹٹ�'�� ������?</p>
		<div style="text-align:center;">
		<img src='<%=response.encodeURL("getchart.jsp?"+chart1URL)%>' usemap="#map1" border="0">
		<map name="map1"><%=imageMap1%></map>
		</div>
		<hr color="#000080" style="margin-left: 50px;">
		<br>
		<table style="margin-left: 50px; margin-top: 20px; line-height:2;">
					<tr>
						<td style="width:110px; text-align: center;"> <!-- �̸��� 4������ ����� ���� 110���� ���� -->
							<p><img class='SidePhoto' src="images/1.png">������</p>
						</td>
						<td style="width: 200px; text-align: center;">
							���� ������
						</td>
						<td style="stext-align: left; width: 400px;">
							������ �� �ǰ� �ʹ� ��վ �������� ���� �����̾����ϴ�. ������ �ٸ� Ʃ�͸����� �� �˰� �;��.
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