<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function checkMail() {
		var email = document.getElementById("email").value;
		
		if(email == "") {
			alert("메일을 입력해 주세요")
			return false;
		}	
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function (){
			if(xhttp.readyState == 4){
				sendMail(email);
			}
		};
		xhttp.open("POST", 'checkMail/', true);
		xhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
		xhttp.send('email=' + email);
		return false;
	}
	
	function sendMail(email){
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function (){
			if(xhttp.readyState == 4){
				if(xhttp.states == 200)
					alert("메일을 정상적으로 보냈습니다.");
				else
					alert("올바른 메일 형식이 아닙니다.");
			}
		};
		xhttp.open("POST", "sendMail/", true);
		xhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charest=utf-8");
		xhttp.send('email=' + email);
		return false;
	}
	
</script>
</head>
<body>
	<input type="email" name="email" id="email" aria-describedby="emailHelp">
		<br>
	<input type="button" value="인증" onclick="checkMail()">
</body>
</html>