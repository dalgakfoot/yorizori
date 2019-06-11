<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

>>>>>>> 5c47eae00c640b3d9eced1ce91b8e898fab161e7
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
<<<<<<< HEAD
=======

>>>>>>> 5c47eae00c640b3d9eced1ce91b8e898fab161e7

	<div>
		
		<form action="user_check" method="post">
		<table>
			
			<tr>
				<td><input type="text" name="id" id="id"></td>
				<td rowspan="2"><input type="submit" value="로그인"></td>
			</tr>
			
			<tr>
				<td><input type="text" name="pw" id="pw"></td>
			</tr>
			
			<tr>
<<<<<<< HEAD
				<td colspan="2"><a href="register_form">ȸ�� ����</a></td>
=======
				<td colspan="2"><a href="">회원 가입</a></td>
>>>>>>> 5c47eae00c640b3d9eced1ce91b8e898fab161e7
			</tr>
		
		</table>
		</form>
	
	</div>

<<<<<<< HEAD
=======

	<c:import url="../default/header.jsp" />
	<div align="center">
		<h2>로그인 페이지</h2>
		<form action="#">
			<table border="1">
				<tr>
					<th><input type="text" placeholder="이메일 입력"></th>
					<th rowspan="2"><input type="submit" value="로그인" style="height: 60px;"></th>
				</tr>
				<tr>
					<th>
						<input type="text" placeholder="비밀번호 입력">
					</th>
				</tr>

</table>
아직 회원이 아니신가요? <button type="button" onclick="location.href='register'" class="btn btn-primary">회원가입</button>
</form>
</div>
<c:import url="../default/footer.jsp" />

>>>>>>> 5c47eae00c640b3d9eced1ce91b8e898fab161e7
</body>
</html>