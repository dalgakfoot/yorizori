<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:import url="../default/header.jsp"/>
	<div align="center">
		<form action="register" method="post">
			<h2>회원가입</h2>
			id 입력 : <input type="text" placeholder="이메일을 입력해주세요"><br>
			pw 입력 : <input type="text" placeholder="비밀번호 입력"><br> 
			pw 확인 : <input type="text" placeholder="비밀번호 확인"><br> 
			<input type="submit" value="회원가입">
		</form>
	</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>