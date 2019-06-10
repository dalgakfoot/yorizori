<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 게시글 등록 페이지, 닉네임 제목 내용 조회수 날짜 -->
	<div align="center">
	<form action="#">
		<h1>게시글 등록</h1>
		<table border="1">
		<tr align="right">
				<th colspan="4" >조회수
				<input type="text" name="hit" placeholder="조회수 받아오는 곳">
				등록 날짜
				<input type="text" placeholder="날짜 받아오는 곳입니다."></th>
			</tr>
			<tr>
				<th colspan="2">닉네임</th>
				<th colspan="2"><input type="text" name="nick" placeholder="닉네임 받아오는 곳" size="55"></th>
			</tr>
			
			<tr>
				<th colspan="2">제목</th>
				<th colspan="2"><input type="text" name="title" placeholder="제목을 입력해주세요." size="55"></th>
			</tr>
			<tr>
				<th colspan="2">내용</th>
				<th colspan="2"><textarea name="content" cols="50" rows="50"></textarea></th>
			</tr>
			<tr align="right">
				<th colspan="4"><input type="submit" value="게시글 등록"></th>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>