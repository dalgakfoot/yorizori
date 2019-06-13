<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>답글 리스트</h1>
		<table>
			<c:forEach var="dto" items="${dto}">
				<tr align="left">
					<td>작성자&nbsp;|&nbsp;${dto.nick}</td>
					<td>등록날짜&nbsp;|&nbsp;</td>
				</tr>
				<tr>
					<td>${dto.reply_content}<br>
					<hr></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>