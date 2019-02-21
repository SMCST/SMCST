
function doLogin(){


	if(document.form1.userID.value.length==0){
		alert('아이디를 입력해 주세요.');
		document.form1.userID.focus();
		return false;
	}
	if(document.form1.userPassword.value.length==0){
		alert('비밀번호를 입력해 주세요.');
		document.form1.userPassword.focus();
		return false;
	}
	
	document.form1.action='./loginAction.jsp';
	document.form1.submit();	
}


function doJoin(){


	if(document.form1.userID.value.length==0){
		alert('아이디를 입력해 주세요.');
		document.form1.userID.focus();
		return false;
	}
	if(document.form1.userPassword.value.length==0){
		alert('비밀번호를 입력해 주세요.');
		document.form1.userPassword.focus();
		return false;
	}
	if(document.form1.userPassword2.value.length==0){
		alert('비밀번호재확인을 입력해 주세요.');
		document.form1.userPassword2.focus();
		return false;
	}
	if(document.form1.userPassword.value!=document.form1.userPassword2.value){
		alert('비밀번호가 일치한지 확인해주세요.');
		document.form1.userPassword2.focus();
		return false;
	}
	if(document.form1.userName.value.length==0){
		alert('이름을 입력해 주세요.');
		document.form1.userName.focus();
		return false;
	}
	if(document.form1.userBirth.value.length==0){
		alert('생년월일을 입력해 주세요.');
		document.form1.userBirth.focus();
		return false;
	}
	if(document.form1.userPhone.value.length==0){
		alert('전화번호를 입력해 주세요.');
		document.form1.userPhone.focus();
		return false;
	}
	
	var phoneValue = document.form1.userPhone.value;
	phoneValue = phoneValue.replace(/\-/g, ''); //특정문자 제거
	phoneValue = phoneValue.replace(/^\s+/, ''); //앞의 공백 제거
	phoneValue = phoneValue.replace(/\s+$/, ''); //뒤의 공백 제거
	phoneValue = phoneValue.replace(/\s/g, ''); //문자열 내의 공백 제거
	phoneValue = phoneValue.replace(/\n/g, ''); //개행제거
	phoneValue = phoneValue.replace(/\r/g, ''); //엔터제거
	
	document.form1.userPhone.value = phoneValue;
	
	document.form1.action='./joinAction.jsp';
	document.form1.submit();	
}
