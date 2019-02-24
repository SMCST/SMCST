<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	<p style="text-align:center; ">header</p>
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
				<h4>Tutor, ���ش�</h4>
				<address>
					<p style="color: gray;"><img src="images/mail.png" style="width:15px; height:15px;"> aosladl@naver.com</p>
				</address>
			</div>
			<h3 style="border-bottom: 1px solid #ccc;"><a href="ClassParticipant.jsp">������ ���</a></h3>
				<p class="menu"><img class='SidePhoto' src="images/1.jpg"><a href="ClassParticipant.jsp#tutor">���ش�(Ʃ���ڸ�)</a></p>
				<p class="menu"><img class='SidePhoto' src="images/1.png"><a href="ClassParticipant.jsp#tutee1">������(ƩƼ1)</a></p>
				<p class="menu"><img class='SidePhoto' src="images/1.png"><a href="ClassParticipant.jsp#tutee2">��â��(ƩƼ2)</a></p>
			<h3 style="border-bottom: 1px solid #ccc;">�޴�</h3>
			<p class="menu"><a href="ClassRoomMain.jsp">���ǽ� Ȩ</a></p>
			<p class="menu"><a href="ClassNotify.jsp">��������</a></p>
			<p class="menu"><a href="ClassMeetingLog.jsp">ȸ�Ƿ�</a></p>
			<p class="menu"><a href="ClassResourceCenter.jsp">�ڷ��</a></p>
			<p class="menu"><a href="ClassReport.jsp">���� �Խ���</a></p>
			<p class="menu"><a href="ClassPetition.jsp">û�� �Խ���</a></p>
			<p class="menu"><a href="ClassReference.jsp">���� �޴�</a></p>
			<p class="menu"><a href="ClassEvaluation.jsp">Ʃ�͸� ��</a></p>
			<p class="menu"><a href="ClassGrade.jsp">Ʃ�͸� ������ȸ</a></p>
		</div>
		<div id="contents">
			<p class="ClassBoard">��������</p>
			<p style="text-align: right; margin-right: 80px; font-size: 18px; font-weight: bold;"><a href="ClassNotify.jsp">������</a></p>
			<table style="margin-left: 50px; text-indent:80px; text-align: left; line-height:2;">
					<tr>
						<td style="width: 450px;">Ʃ�͸��� ���۵Ǿ����ϴ�. ȯ���մϴ�!</td>
						<td>2019-02-22</td>
						<td>��ȸ 0</td>
					</tr>
					<tr>
						<td style="width: 450px;">Ʃ�͸��� ���۵Ǿ����ϴ�. ȯ���մϴ�!</td>
						<td>2019-02-22</td>
						<td>��ȸ 0</td>
					</tr>
			</table>
			<p class="ClassBoard">ȸ�Ƿ�</p>
			<p style="text-align: right; margin-right: 80px; font-size: 18px; font-weight: bold;"><a href="ClassMeetingLog.jsp">������</a></p>	
				<table style="margin-left: 50px; text-indent:80px; text-align: left; line-height:2;">
					<tr>
						<td colspan="3" style="width: 450px; text-align: center;">�ۼ��� ���� �����ϴ�.</td>	
					</tr>
			</table>
			<p class="ClassBoard">�ڷ��</p>
			<p style="text-align: right; margin-right: 80px; font-size: 18px; font-weight: bold;"><a href="ClassResourceCenter.jsp">������</a></p>
			<table style="margin-left: 50px; text-indent:80px; text-align: left; line-height:2;">
					<tr style="border-bottom: 1px solid #ccc;">
						<td style="width: 450px;">Ʃ�͸��� ���۵Ǿ����ϴ�. ȯ���մϴ�!</td>
						<td>2019-02-22</td>
						<td>��ȸ 0</td>			
					</tr>
					<tr style="border-bottom: 1px solid #ccc;">
						<td style="width: 450px;">Ʃ�͸��� ���۵Ǿ����ϴ�. ȯ���մϴ�!</td>
						<td>2019-02-22</td>
						<td>��ȸ 0</td>			
					</tr>
					<tr style="border-bottom: 1px solid #ccc;">
						<td style="width: 450px;">Ʃ�͸��� ���۵Ǿ����ϴ�. ȯ���մϴ�!</td>
						<td>2019-02-22</td>
						<td>��ȸ 0</td>			
					</tr>
			</table>
		</div>
		</div>
		<div id="footer">
		<p style="text-align:center; ">footer</p>
	</div>
</body>
</html>