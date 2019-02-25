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
			<p class="menu"><a href="ClassPetition.jsp">û��</a></p>
			<p class="menu"><a href="ClassReference.jsp">���� �޴�</a></p>
			<p class="menu"><a href="ClassEvaluation.jsp">Ʃ�͸� ��</a></p>
			<p class="menu"><a href="ClassGrade.jsp">Ʃ�͸� ������ȸ</a></p>
		</div>
		<div id="contents">

		<h1 style="text-indent: 50px; margin-top: 70px;">������ ���</h1>
		<fieldset style="margin-left: 50px; border: 1px solid lightgray;">
			<table style="margin-top:30px; margin-left: 50px;line-height:2; ">
				<tr style="background: #efefef">
					<td style="text-align: center; width: 50px;">��ȣ</td>
					<td style="text-align: center; width: 150px;">�̸�</td>
					<td style="text-align: center; width: 230px;">�̸���</td>
					<td style="text-align: center; width: 150px;">��ȭ��ȣ</td>
					<td style="text-align: center; width: 100px;">����</td>
				</tr>
				<tr>
					<td style="text-align: center;">1</td>
					<td style="text-align: center;">���ش�</td>
					<td style="text-indent: 20px;">aosladl@naver.com</td>
					<td style="text-align: center;">01090212219</td>
					<td style="text-align: center;">Ʃ��</td>
				</tr>
				<tr>
					<td style="text-align: center;">2</td>
					<td style="text-align: center;">��â��</td>
					<td style="text-indent: 20px;">irnak2085@gmail.com</td>
					<td style="text-align: center;">01012341234</td>
					<td style="text-align: center;">ƩƼ</td>
				</tr>
			</table>
			<fieldset style="margin-top: 50px; margin-left: 150px; height: 250px; width: 520px; background: #efefef; border:1px solid #dddddd;">
			<table>
				<tr>
					<td>
						<img src="images/1.jpg" width="200" height="200" style="margin:30px;" >
					</td>
					<td>
						<h3 style="text-align:center;"><a name="tutor">Ʃ��</a></h3>
						<p>�̸� : ���ش�</p>
						<p>email : aosladl@naver.com</p>
						<p>phone : 01090212219</p>
					</td>
				</tr>
			</table>
			</fieldset>
			<fieldset style="margin-top: 50px; margin-left: 150px; height: 250px; width: 520px; background: #efefef; border:1px solid #dddddd;">
			<table>
				<tr>
					<td>
						<img src="images/1.png" width="200" height="200" style="margin:30px;">
					</td>
					<td>
						<h4 style="text-align:center;"><a name="tutor">ƩƼ</a></h4>
						<p><a name="tutee1">�̸� : ������</a></p>
						<p>email : elenajso@gmail.com</p>
						<p>phone : 01012341234</p>
					</td>
				</tr>
			</table>
			</fieldset>
			
			<fieldset style="margin-top: 50px; margin-left: 150px; height: 250px; width: 520px; background: #efefef; border:1px solid #dddddd;">
			<table>
				<tr>
					<td>
						<img src="images/1.png" width="200" height="200" style="margin:30px;">
					</td>
					<td>
						<h4 style="text-align:center;"><a name="tutor">ƩƼ</a></h4>
						<p><a name="tutee2">�̸� : ��â��</a></p>
						<p>email : irnak2085@gmail.com</p>
						<p>phone : 01012341234</p>
					</td>
				</tr>
			</table>
			</fieldset>
			</fieldset>
		</div>
		<div id="footer">
		<p style="text-align:center; ">footer</p>
	</div>
</body>
</html>