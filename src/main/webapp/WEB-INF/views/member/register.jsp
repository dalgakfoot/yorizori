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
<c:import url="../default/header.jsp"/>
	<div align="center">
		<form action="register" method="post">
			<h2>ȸ������</h2>
			id �Է� : <input type="text" placeholder="�̸����� �Է����ּ���"><br>
			pw �Է� : <input type="text" placeholder="��й�ȣ �Է�"><br> 
			pw Ȯ�� : <input type="text" placeholder="��й�ȣ Ȯ��"><br> 
			<input type="submit" value="ȸ������">
		</form>
	</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>