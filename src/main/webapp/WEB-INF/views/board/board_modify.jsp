<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="/yorizori/src/main/webapp/smarteditor/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js"></script>

</head>
<body>
<fmt:requestEncoding value="utf-8" />

	<div align="center">
	<form action="modiSave" id="form">
	<input type="hidden" value="${view.num}" name="num">
		<h1>게시글 수정</h1>
		<table border="1">
		<tr align="right">
		
				<th colspan="4" >조회수 &nbsp;[${view.hit}] &nbsp;|&nbsp; 등록 날짜 &nbsp;[${view.pdate }]</th>
			</tr>
			<tr>
				<th colspan="2">닉네임</th>
				<th colspan="2" style="width: 100px">${view.nick }</th>
			</tr>
			
			<tr>
				<th colspan="2">제목</th>
				<th colspan="2"><input type="text" name="title" value="${view.title}" size="100"></th>
			</tr>
			<tr>
				<th colspan="2">내용</th>
				<th colspan="2"><textarea name="content" id="content" cols="100" rows="20">${view.content}</textarea></th>
			</tr>
			<tr align="right">
				<th colspan="4"><input type="button" onclick="submitContents();" id="save" value="게시글 수정"></th>
			</tr>
		</table>
		</form>
	</div>

	<script type="text/javascript">

var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
oAppRef: oEditors,
elPlaceHolder: "content", //textarea에서 지정한 id와 일치해야 합니다.
sSkinURI: "<%= request.getContextPath() %>/smarteditor/SmartEditor2Skin.html",
htParams : {bUseToolbar : true,	
	bUseVerticalResizer : true,	
	bUseModeChanger : true,	
	fOnBeforeUnload : function(){ } }, 
	/* fOnAppLoad : function() {
		oEditors.getById["content"].exec("PASTE_HTML",[""]);}, */
fCreator: "createSEditor2"
});

function submitContents() {
    oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용됨
   	document.getElementById("form").submit();
    console.log("수정완료");
    
    }


function pasteHTML(filepath){
	var sHTML = '<img src="<%=request.getContextPath()%>/resources/fileUpDown/'+filepath+'">';
			oEditors.getById["content"].exec("PASTE_HTML", [ sHTML ]);
		}
	</script>


</body>
</html>