<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div>
		
		<form action="user_check" method="post">
		<table>
			
			<tr>
				<td><input type="text" name="id" id="id"></td>
				<td rowspan="2"><input type="submit" value="�α���"></td>
			</tr>
			
			<tr>
				<td><input type="text" name="pw" id="pw"></td>
			</tr>
			
			<tr>
				<td colspan="2"><a href="">ȸ�� ����</a></td>
			</tr>
		
		</table>
		</form>
	
	</div>

</body>
</html>