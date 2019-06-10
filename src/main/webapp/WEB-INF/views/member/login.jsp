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
<h2>로그인 페이지</h2>
<form action="#">
<input type="text" placeholder="이메일 입력"><br>
<input type="text" placeholder="비밀번호 입력"><br>
<input type="submit" value="로그인">
</form>
</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>