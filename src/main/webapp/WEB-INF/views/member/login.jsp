<%@ page language="java" contentType="text/html; charset=EUC-KR"
<<<<<<< HEAD
    pageEncoding="EUC-KR"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
=======
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
>>>>>>> 19d30086b35c5dfbefda8a4fd278f5c59e2c736c
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<<<<<<< HEAD

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

=======
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
>>>>>>> 19d30086b35c5dfbefda8a4fd278f5c59e2c736c
</body>
</html>