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
<h1>게시판</h1>
<table border="1">
<tr>
<td>번호</td><td>제목</td><td>작성자</td><td>조회수</td><td>작성시간</td>
</tr>


<tr>
<td><%-- ${dto.num } --%>테스트</td>
<td><%-- ${dto.title } --%>테스트</td>
<td><%-- ${dto.nick } --%>테스트</td>
<td><%-- ${dto.hit } --%>테스트</td>
<td><%-- ${dto.date } --%>테스트</td>
</tr>

<tr>
<td colspan="5"><button type="button" onclick="location.href='board_write'">글쓰기</button></td>
</table>


</body>
</html>