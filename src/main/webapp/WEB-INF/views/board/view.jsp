<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<td>작성자</td>
<td colspan="2"><input type="text" value="${view.nick }"></td>
</tr>
<tr>
<td>제목</td>
<td colspan="2"><input type="text" value="${view.title }"></td>
</tr>
<tr>
<td>내용</td>
<td colspan="2"><textarea rows="4">${view.content}</textarea>
</tr>

<tr>
<td>닉네임</td>
<td><input type="text"></td>
<td><button type="button">쓰기</button></td>
<td><button type="button" onclick="location.href='board_modify?num=${view.num}'">수정</button>
<button type="button" onclick="">삭제</button></td>
</tr>
</table>
</body>
</html>