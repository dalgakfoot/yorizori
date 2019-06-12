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
<td colspan="2">${view.nick }</td>
</tr>
<tr>
<td>제목</td>
<td colspan="2">${view.title }</td>
</tr>
<tr>
<td>내용</td>
<td colspan="2">${view.content}</td>
</tr>

<tr>
<td align="right" colspan="4">
<button type="button" onclick="location.href='board_write'">글작성</button>
<%--  <c:if test="sessionScope != null "> --%>
<button type="button" onclick="location.href='board_modify?num=${view.num}'">수정</button>
<button type="button" onclick="">삭제</button>
<%--  </c:if> --%>

</td>
</tr>
</table>

<c:import url="../reply/reply_write.jsp"/>

</body>
</html>