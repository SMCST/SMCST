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
<%
/*
ȸ���� Ʃ�͸� ���������� ������ ������ ���������ϱ��� �ڽ��� ������ Ʃ�͸��� �����ڸ�Ʈ �ۼ��� �Բ� ģ����, ���Ǽ�, Ŀ��ŧ��, ���, ���޷��� ���� ���� �Ű� ���� �� �ִ�.
�򰡱Ⱓ�� �ƴҶ� ���˸�==> Ʃ�͸� �� �Ⱓ�� �ƴմϴ�.
*/
%>
		<h1 style="text-indent: 50px; margin-top: 70px;">Ʃ�͸� ��</h1>
		<fieldset style="margin-left: 50px; border: 1px solid black;">
			<h3 style="text-align: center; height: 50px; margin-top: 50px;">Ʃ�͸��Ⱓ ���� ��� �����̽��ϴ�!</h3>
			<ul>
				<li>�� Ʃ�͸� �� ������ Ʃ�͸� ���� ���࿡ ���� ƩƼ���� ������ �ǰ��� �ľ��Ͽ�, ������ ���� ���� Ʃ�͸��� �ϱ� ���� �������� �ǽ��ϴ� ���Դϴ�. ���� ƩƼ �������� �� �� ���׿� ���Ͽ� �����ϰ� �����ϰ� �亯�� �ֽñ� �ٶ��ϴ�.</li>
				<li>�� ������ ��ô���� 5������ �����Ǿ� ������, 1���� �����ƴϴ� 5���� �ſ� �׷��� �� �ǹ��ϸ�, ������ Ŭ���� �������� ���� ���� �ǹ��մϴ�. �ش���� üũǥ ���ֽʽÿ�.</li>
			</ul>
			<br>
			<hr style="border: dotted;">
			<table style="margin-top:30px; margin-left: 50px;line-height:2; ">
				<tr>
					<td colspan="5">1. Ʃ�ʹ� ƩƼ���� ������ ������ �����Ͽ��� ģ���ϰ� �����Ͽ����ϱ�?</td>
				</tr>
				<tr>
					<td style="width:150px;"><label><input type="radio" name="score" value="kind5">�ſ�ģ��</label></td>
					<td style="width:150px;"><label><input type="radio" name="score" value="kind4">ģ��</label></td>
					<td style="width:150px;"><label><input type="radio" name="score" value="kind3">����</label></td>
					<td style="width:150px;"><label><input type="radio" name="score" value="kind2">��ģ��</label></td>
					<td style="width:150px;"><label><input type="radio" name="score" value="kind1">�ſ��ģ��</label></td>
				</tr>
				<tr>
					<td colspan="5">2. Ʃ�ʹ� �����غ� ����� �ϰ� �����ð��� �� �ؼ��ϸ� �����ϰ� Ʃ�͸��Ͽ����ϱ�?</td>
				</tr>
				<tr>
					<td><label><input type="radio" name="score" value="sincerity5">�ſ켺��</label></td>
					<td><label><input type="radio" name="score" value="sincerity4">����</label></td>
					<td><label><input type="radio" name="score" value="sincerity3">����</label></td>
					<td><label><input type="radio" name="score" value="sincerity2">�Ҽ���</label></td>
					<td><label><input type="radio" name="score" value="sincerity1">�ſ�Ҽ���</label></td>
				</tr>
				<tr>
					<td colspan="5">3. �� Ʃ�͸��� Ŀ��ŧ���� �����Ͻʴϱ�?</td>
				</tr>
				<tr>
					<td><label><input type="radio" name="score" value="curriculum5">�ſ츸��</label></td>
						<td><label><input type="radio" name="score" value="curriculum4">����</label></td>
					<td><label><input type="radio" name="score" value="curriculum3">����</label></td>
					<td><label><input type="radio" name="score" value="curriculum2">�Ҹ���</label></td>
					<td><label><input type="radio" name="score" value="curriculum1">�ſ�Ҹ���</label></td>
				</tr>
				<tr>
					<td colspan="5">4. �� Ʃ�͸��� �󸶳� ����־����ϱ�?</td>
				</tr>
				<tr>
					<td><label><input type="radio" name="score" value="interest5">�ſ��������</label></td>
					<td><label><input type="radio" name="score" value="interest4">�������</label></td>
					<td><label><input type="radio" name="score" value="interest3">����</label></td>
					<td><label><input type="radio" name="score" value="interest2">��̾���</label></td>
					<td><label><input type="radio" name="score" value="interest1">�ſ���̾���</label></td>
				</tr>
				<tr>
					<td colspan="5">5. ���������� �����ϱ� �������� ȿ�������� ���޵Ǿ����ϱ�?</td>
				</tr>
				<tr>
					<td><label><input type="radio" name="score" value="delivery5">�ſ�׷���</label></td>
					<td><label><input type="radio" name="score" value="delivery4">�׷���</label></td>
					<td><label><input type="radio" name="score" value="delivery3">����</label></td>
					<td><label><input type="radio" name="score" value="delivery2">�׷����ʴ�</label></td>
					<td><label><input type="radio" name="score" value="delivery1">�ſ�׷����ʴ�</label></td>
				</tr>
				<tr>
					<td colspan="5">6. �� Ʃ�͸��� ���� ���ǻ����̳� ������ ���� �ִٸ� �����Ӱ� �ǰ��� ������ �ֽʽÿ�.</td>
				</tr>
				<tr>
					<td colspan="5"><textarea cols="100" rows="2" id="memo" placeholder="���� ���� ������ �� �ּ���."></textarea></td>
				</tr>
			</table>
			
			<p style="text-align: right;">
				<input type="button" value="�����ϱ�" style="background: white; border: 1px solid black;">
				<input type="button" value="�ٽþ���" style="background: white; border: 1px solid black;">
			</p>
			</fieldset>
		</div>
		<div id="footer">
		<p style="text-align:center; ">footer</p>
	</div>
	</div>
</body>
</html>