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
<title>글 수정</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="/yorizori/src/main/webapp/smarteditor/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js"></script>

</head>
<body>
<fmt:requestEncoding value="utf-8" />
<!--메뉴바 시작-->
<div class="row">
  <nav class="navbar navbar-default">
    <div class="container-fluid" >
      <div class="col-xs-3">
        <ul class="nav navbar-nav" style="padding-top:25px;">
          <li><a href="#">레시피</a></li>
          <li><a href="#">자유게시판</a></li>
          <li><a href="#">?.?</a></li>
        </ul>
      </div>

      <div class="col-xs-6" align="center">
        <img src="img/yorijori.png" style="height: 100%; padding-top: 10px; padding-bottom: 10px; cursor: pointer" onclick="location.href='#'">
      </div>

      <div class="col-xs-3">
        <ul class="nav navbar-nav navbar-right" style="padding-top:25px;">
          <li><a href="#"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
          <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
        </ul>
      </div>

    </div>
  </nav>
</div>
<!--메뉴바 끝-->

<!--검색 창-->
<div align="center" style="padding-top: 20px">
  <form class="form-inline">
    <div class="form-group row">
      <input type="text" class="form-control" style="width:1000px">
    </div>
    <button type="submit" class="btn btn-success">검색</button>
  </form>
</div>

<br>

<!--검색 창 끝-->

<!-- 게시글 등록 페이지, 닉네임 제목 내용 조회수 날짜 -->
<div class="container-fluid">
	<div class="table-responsive">
	<form action="modiSave" id="form">
	<input type="hidden" value="${view.num}" name="num">
		<table class="table">
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