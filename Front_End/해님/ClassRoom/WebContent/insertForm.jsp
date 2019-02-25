<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>회원가입</title>
<script>
function enterNo(){
	   if(document.form1.ID.value.length==0){
	      alert('아이디를 입력해 주세요.');
	      document.form1.ID.focus();
	      return;
	   }
	   
	   if(event.keyCode==13){
	      document.form1.password.focus();
	   }   
	   return false;   
	}

	function enterPass(){
	   
	   if(document.form1.ID.value.length==0){
	      alert('아이디를 입력해 주세요.');
	      document.form1.ID.focus();
	      return;
	   }
	   
	   if(document.form1.password.value.length==0){
	      alert('비밀번호를 입력해 주세요.');
	      document.form1.password.focus();
	      return;
	   }   
	     
	   return false;   
	}
	
function doLogin(){


	   if(document.form1.ID.value.length==0){
	      alert('아이디를 입력해 주세요.');
	      document.form1.ID.focus();
	      return;
	   }
	   
	   if(document.form1.password.value.length==0){
	      alert('비밀번호를 입력해 주세요.');
	      document.form1.password.focus();
	      return;
	   }

	   //document.form1.target='_self';
	   //document.form1.action='/haksa/loginProc.jsp';
	   //document.form1.submit();   
	}
</script>
</head>
<body>

<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="insert.jsp">
					<h3 style="text-align: center;">회원가입 화면</h3>
					<div class="form-group">
						아이디<input type="email" class="form-control" placeholder="email 주소 입력" name="ID" maxlength="20" onkeydown="if(event.keyCode==13){return enterNo();}"></label>
			<small style="color:red;">email형식을 입력해주세요.</small>
					</div>
					<div class="form-group">
						비밀번호<input type="password" class="form-control" placeholder="특문 포함 8자 이상" name="password" maxlength="20" onkeydown="if(event.keyCode==13){return enterPass();}">
					</div>
					<div class="form-group">
						비밀번호 확인<input type="password" class="form-control" name="password2" maxlength="20" onkeydown="if(event.keyCode==13){return enterPass();}">
					</div>
					<div class="form-group">
						이름<input type="text" class="form-control" name="name" maxlength="20" onkeydown="if(event.keyCode==13){return enterPass();}">
					</div>
					<div class="form-group">
						생년월일<input type="text" class="form-control" name="birth" maxlength="20" onkeydown="if(event.keyCode==13){return enterPass();}">
					</div>
					<div class="form-group">
						전화번호<input type="text" class="form-control" name="phone" maxlength="20" onkeydown="if(event.keyCode==13){return enterPass();}">
					</div>
					<div class="form-group">
						프로필사진<input type="file" class="form-control" name="picture" maxlength="20" onkeydown="if(event.keyCode==13){return enterPass();}">
					</div>
					
					
					<input type="submit" class="btn btn-primary form-control" value="회원가입">
				</form>
		</div>
	</div>
	</div>
	
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>

</body>
</html>