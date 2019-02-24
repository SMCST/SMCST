<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>

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
		<h1 style="text-indent: 50px; margin-top: 70px;">�����Խ���</h1>
		<fieldset style="margin-left: 50px; margin-right: 20px; margin-top: 20px; color:red;">
			<p>2019-02-25 02�� 20�� 22�� �������� �������� ������ 1�� �ֽ��ϴ�.</p>
			<p>[ GUI ���� �������� ]</p>
			<p>���� ����Ⱓ�� 5�� ���ҽ��ϴ�.</p>
		</fieldset>
		<p style="text-align: right; margin-right: 20px;">
		<select size="1" id="class">
				<option value="title">��������</option>
				<option value="contents">��������</option>
				<option value="titlecontents">����+����</option>
				<option value="titlecontents">�ۼ�����</option>
				<option value="titlecontents">����������</option>
			</select>
		<input type="text" id="ClassNotifySearch"><input type="button" value="�˻�" style="background: white; border: 1px solid black;">
		</p>
			<table style="margin-left: 50px; line-height:2; border: 1px solid lightgray;">
					<tr style="text-align: center; background: #EEEEEE;">
						<td>��ȣ</td>
						<td>���� ����</td>
						<td>�ۼ�����</td>
						<td>��ȸ��</td>
					</tr>
					<tr>
						<td style="text-align: center; width: 100px;">100</td>
						<td style="width: 500px; text-indent: 10px;">GUI ���� ��������</td>
						<td style="text-align: center; width: 100px;">2019-02-24</td>
						<td style="text-align: center; width: 100px;">0</td>				
					</tr>
			</table>
			<div style="text-align: center; margin-top: 50px; margin-left: 50px; margin-right: 50px;">
				<input type="button" value="����" style="background: white; border: 1px solid black;">
				<a href="#">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<a href="#">5</a>
				<input type="button" value="����" style="background: white; border: 1px solid black;">
			</div>
			<form action="ClassReportAdd.jsp" method="post">
			<p style="text-align: right; margin-right: 20px;">
				<input type="submit" value="���� �߰�" style="background: white; border: 1px solid black;">
			</p>
			</form>
		</div>
		</div>
		<div id="footer">
		<p style="text-align:center; ">footer</p>
	</div>
</body>
</html>