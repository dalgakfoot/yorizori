<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<fmt:requestEncoding value="utf-8" />
	<div align="center">
	<form action="modiSave">
		<h1>게시글 수정</h1>
		<table border="1">
		<tr align="right">
		<input type="hidden" value="${view.num}" name="num">
				<th colspan="4" >조회수 &nbsp;[${view.hit}] &nbsp;|&nbsp; 등록 날짜 &nbsp;[${view.pdate }]</th>
			</tr>
			<tr>
				<th colspan="2">닉네임</th>
				<th colspan="2">${view.nick }</th>
			</tr>
			
			<tr>
				<th colspan="2">제목</th>
				<th colspan="2"><input type="text" name="title" value="${view.title}" size="55"></th>
			</tr>
			<tr>
				<th colspan="2">내용</th>
				<th colspan="2"><textarea name="content" cols="50" rows="50">${view.content}</textarea></th>
			</tr>
			<tr align="right">
				<th colspan="4"><input type="submit" value="게시글 수정"></th>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>