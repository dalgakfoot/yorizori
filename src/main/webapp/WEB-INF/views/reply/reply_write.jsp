<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<form action="replySave">
			<input type="hidden" name="list_num" value="${view.num}">
			<table>
				<tr>
					<th>답글작성</th>
					<th><textarea rows="5" cols="50" name="content"></textarea></th>
					<th><input type="submit" value="댓글 등록"></th>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>