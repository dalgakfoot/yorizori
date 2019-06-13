<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="replySave">
<input type="hidden" name="list_num" value="${view.num}">
<textarea rows="5" cols="50" name="content"></textarea>
<input type="submit" value="댓글 등록">
</form>

</body>
</html>