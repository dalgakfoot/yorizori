<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../default/header.jsp" />
	<div align="center">
		<h2>�α��� ������</h2>
		<form action="#">
			<table border="1">
				<tr>
					<th><input type="text" placeholder="�̸��� �Է�"></th>
					<th rowspan="2"><input type="submit" value="�α���" style="height: 60px;"></th>
				</tr>
				<tr>
					<th>
						<input type="text" placeholder="��й�ȣ �Է�">
					</th>
				</tr>

</table>
���� ȸ���� �ƴϽŰ���? <button type="button" onclick="location='register.jsp'">ȸ������</button>
</form>
</div>
<c:import url="../default/footer.jsp" />
</body>
</html>