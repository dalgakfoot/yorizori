<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<form action="#">
		<h1>게시글 수정</h1>
		<table border="1">
		<tr align="right">
				<th colspan="4" >조회수 &nbsp;[조회수] &nbsp;|&nbsp; 등록 날짜 &nbsp;[등록날짜]</th>
			</tr>
			<tr>
				<th colspan="2">닉네임</th>
				<th colspan="2">NICKNAME</th>
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
				<th colspan="4"><input type="submit" value="게시글 수정"></th>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>