<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="java.net.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" ; charset="UTF-8" />
<title>Insert title here</title>
<script type="text/javascript"
	src="/yorizori/src/main/webapp/resources/SE2/js/HuskyEZCreator.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="/yorizori/src/main/webapp/resources/SE2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js"
	charset="utf-8"></script>
<link href="style.css" rel="stylesheet">
</head>
<fmt:requestEncoding value="utf-8" />

<body>
	<!-- 게시글 등록 페이지, 닉네임 제목 내용 조회수 날짜 -->
	<div align="center" class="content-modiwrite">
		<form action="writeSave" id="form">
			<h1>게시글 등록</h1>
			<table border="1">
				<tr align="right">

					<th colspan="4">조회수 <input type="text" name="hit"
						placeholder="조회수 받아오는 곳"> 등록 날짜 <input type="text"
						placeholder="날짜 받아오는 곳입니다."></th>
				</tr>
				<tr>
					<th colspan="2">닉네임</th>
					<th colspan="2"><input type="text" name="nick"
						placeholder="닉네임 받아오는 곳" size="55"></th>
				</tr>

				<tr>
					<th colspan="2">제목</th>
					<th colspan="2"><input type="text" name="title"
						placeholder="제목을 입력해주세요." size="55"></th>
				</tr>
				<tr>
					<th colspan="2">내용</th>
					<th colspan="2"><textarea name="content" id="content" cols="50" rows="50"></textarea></th>
				</tr>
				<tr align="right">
					<th colspan="4"><input type="button"
						onclick="submitContents();" id="save" value="게시글 등록"></th>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "content", //textarea에서 지정한 id와 일치해야 합니다.
		sSkinURI: "/yorizori/src/main/webapp/resources/SE2/SmartEditor2Skin.html",
		htParams : {
			bUseToolbar : true,	
			bUseVerticalResizer : true,	
			bUseModeChanger : true,	
			fOnBeforeUnload : function(){
			} }, 
		fCreator: "createSEditor2"
		});
		
		function submitContents() {
		    oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용됨
		   	document.getElementById("form").submit();}
		
		function pasteHTML(filepath){
			var sHTML = '<img src="<%=request.getContextPath()%>/fileUpDown/'+filepath+'">';
					oEditors.getById["content"].exec("PASTE_HTML", [ sHTML ]);
				}
	</script>
</body>
</html>