<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>�� ����</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="/yorizori/src/main/webapp/smarteditor/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js"></script>

</head>
<body>
<fmt:requestEncoding value="utf-8" />
<!--�޴��� ����-->
<div class="row">
  <nav class="navbar navbar-default">
    <div class="container-fluid" >
      <div class="col-xs-3">
        <ul class="nav navbar-nav" style="padding-top:25px;">
          <li><a href="#">������</a></li>
          <li><a href="#">�����Խ���</a></li>
          <li><a href="#">?.?</a></li>
        </ul>
      </div>

      <div class="col-xs-6" align="center">
        <img src="img/yorijori.png" style="height: 100%; padding-top: 10px; padding-bottom: 10px; cursor: pointer" onclick="location.href='#'">
      </div>

      <div class="col-xs-3">
        <ul class="nav navbar-nav navbar-right" style="padding-top:25px;">
          <li><a href="#"><span class="glyphicon glyphicon-user"></span> ȸ������</a></li>
          <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> �α���</a></li>
        </ul>
      </div>

    </div>
  </nav>
</div>
<!--�޴��� ��-->

<!--�˻� â-->
<div align="center" style="padding-top: 20px">
  <form class="form-inline">
    <div class="form-group row">
      <input type="text" class="form-control" style="width:1000px">
    </div>
    <button type="submit" class="btn btn-success">�˻�</button>
  </form>
</div>

<br>

<!--�˻� â ��-->

<!-- �Խñ� ��� ������, �г��� ���� ���� ��ȸ�� ��¥ -->
<div class="container-fluid">
	<div class="table-responsive">
	<form action="modiSave" id="form">
	<input type="hidden" value="${view.num}" name="num">
		<table class="table">
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