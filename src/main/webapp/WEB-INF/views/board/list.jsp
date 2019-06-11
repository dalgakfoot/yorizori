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
<c:set var="userId" value="TEST" scope="session"/>
<c:set var="list" value="${list}"/>
<h1>게시판</h1>
<table border="1">
<tr>
<td>번호</td><td>제목</td><td>작성자</td><td>조회수</td><td>작성시간</td>
</tr>

<c:forEach var="dto" items="${list}">
<tr>
<td>${dto.num }</td>
<td><a href="view?num=${dto.num}">${dto.title }</a></td>
<td>${dto.nick }</td>
<td>${dto.hit }</td>
<td>${dto.pdate }</td>
</tr>
</c:forEach>
<tr>
<td colspan="5"><button type="button" onclick="location.href='board_write'">글쓰기</button></td>
</table>


</body>
</html>