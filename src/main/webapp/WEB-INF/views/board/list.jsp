<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <title>자유게시판</title>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }

    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }

    .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
    }

    /* Hide the carousel text when the screen is less than 600 pixels wide */
    @media (max-width: 600px) {
      .carousel-caption {
        display: none;
      }
    }

  </style>
</head>
<body>
<c:set var="userId" value="TEST" scope="session"/>
<c:set var="list" value="${list}"/>
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
<!--검색 창 끝-->
<br>
<br>

<div class="table-responsive">
<table class="table">
<tr>
<td>번호</td><td>제목</td><td>작성자</td><td>조회수</td><td>작성시간</td>
</tr>

<c:forEach var="dto" items="${list}">
<tr>
<td>${dto.num }</td>
<td><a href="view?num=${dto.num}">${dto.title }</a></td>
<td>${dto.nick }</td>
<td>${dto.hit }</td>
<td>${dto.pdate }</td>
</tr>
</c:forEach>
<tr>
<td colspan="5"><button type="button" onclick="location.href='board_write'">글쓰기</button></td>
</table>
</div>


</body>
</html>