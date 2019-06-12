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
		<h1>�Խñ� ����</h1>
		<table border="1">
		<tr align="right">
		
				<th colspan="4" >��ȸ�� &nbsp;[${view.hit}] &nbsp;|&nbsp; ��� ��¥ &nbsp;[${view.pdate }]</th>
			</tr>
			<tr>
				<th colspan="2">�г���</th>
				<th colspan="2" style="width: 100px">${view.nick }</th>
			</tr>
			
			<tr>
				<th colspan="2">����</th>
				<th colspan="2"><input type="text" name="title" value="${view.title}" size="100"></th>
			</tr>
			<tr>
				<th colspan="2">����</th>
				<th colspan="2"><textarea name="content" id="content" cols="100" rows="20">${view.content}</textarea></th>
			</tr>
			<tr align="right">
				<th colspan="4"><input type="button" onclick="submitContents();" id="save" value="�Խñ� ����"></th>
			</tr>
		</table>
		</form>
	</div>

	<script type="text/javascript">

var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
oAppRef: oEditors,
elPlaceHolder: "content", //textarea���� ������ id�� ��ġ�ؾ� �մϴ�.
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
    oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []); // �������� ������ textarea�� �����
   	document.getElementById("form").submit();
    console.log("�����Ϸ�");
    
    }


function pasteHTML(filepath){
	var sHTML = '<img src="<%=request.getContextPath()%>/resources/fileUpDown/'+filepath+'">';
			oEditors.getById["content"].exec("PASTE_HTML", [ sHTML ]);
		}
	</script>


</body>
</html>