<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>메인페이지</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script>

    /*jquery 시작*/
    $(document).ready(function () {

      $("#click").click(function () {
        $('#search').slideDown(500);
      });

      $("#close").click(function () {
        $("#search").slideUp(500);
      });

    });
    /*jquery 끝*/

  </script>
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

<!--Carousel 부분-->
<div class="row">
  <div class="col-lg-2">
  </div>

  <div class="col-lg-8">
    <div align="center">
      <h1></h1>
    </div>
    <div id="myCarousel" class="carousel slide" data-ride="carousel" >
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>

      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox" style="size: auto; max-height: 400px;">
        <div class="item active">
          <img src="img/yorievent.jpg" class="img-responsive">
          <div class="carousel-caption">

          </div>
        </div>





      </div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>
  <div class="col-sm-2">
  </div>
</div>
<!--Carosel 끝-->
<br>
<br>
<!--메인 텍스트-->
<div class="container text-left">
  <h3><b>요리조리 인기 메뉴</b></h3><br>
  <div class="container text-right" style="padding-right: 30px; padding-bottom: 10px;">
    <button class="btn btn-success">더보기</button>
  </div>
  <div class="row">
    <div class="col-sm-4">
      <img src="img/yori1.jpeg" class="img-responsive" style="size: auto;height: 270px;" alt="Image">
      <div class="container-fluid text-center">
      <p>맛있는 소고기 버섯전골 ^^</p>
      <p>by 김지선님</p>
      </div>
    </div>
    <div class="col-sm-4">
      <img src="img/yori2.jpg" class="img-responsive" style="size: auto;height: 270px;" alt="Image">
      <div class="container-fluid text-center">
      <p>아이가 정말 좋아하는 참치김밥</p>
      <p>by 조비님</p>
      </div>
    </div>
    <div class="col-sm-4">
      <img src="img/yori3.jpg" class="img-responsive" style="size: auto;height: 270px;" alt="Image">
      <div class="container-fluid text-center">
      <p>우와 맛있는 배추말이야!</p>
      <p>by 정혜현님</p>
      </div>
    </div>
  </div>
</div><!--메인 텍스트 끝-->

<br>

<!--footer 부분-->
<footer class="container-fluid text-center">
  <p>대표 : 조비 / E : captainjoe@yorijori.com / F : 02) 777-7777
    서울 종로구 금성사 5층 502호
    문의 : 010-0000-0000 (운영시간-오전10:00~오후5:00)</p>
</footer>
<!--footer 부분 끝-->

</body>
</html>
