<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>����������</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script>

    /*jquery ����*/
    $(document).ready(function () {

      $("#click").click(function () {
        $('#search').slideDown(500);
      });

      $("#close").click(function () {
        $("#search").slideUp(500);
      });

    });
    /*jquery ��*/

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
<!--�˻� â ��-->

<!--Carousel �κ�-->
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
<!--Carosel ��-->
<br>
<br>
<!--���� �ؽ�Ʈ-->
<div class="container text-left">
  <h3><b>�丮���� �α� �޴�</b></h3><br>
  <div class="container text-right" style="padding-right: 30px; padding-bottom: 10px;">
    <button class="btn btn-success">������</button>
  </div>
  <div class="row">
    <div class="col-sm-4">
      <img src="img/yori1.jpeg" class="img-responsive" style="size: auto;height: 270px;" alt="Image">
      <div class="container-fluid text-center">
      <p>���ִ� �Ұ�� �������� ^^</p>
      <p>by ��������</p>
      </div>
    </div>
    <div class="col-sm-4">
      <img src="img/yori2.jpg" class="img-responsive" style="size: auto;height: 270px;" alt="Image">
      <div class="container-fluid text-center">
      <p>���̰� ���� �����ϴ� ��ġ���</p>
      <p>by �����</p>
      </div>
    </div>
    <div class="col-sm-4">
      <img src="img/yori3.jpg" class="img-responsive" style="size: auto;height: 270px;" alt="Image">
      <div class="container-fluid text-center">
      <p>��� ���ִ� ���߸��̾�!</p>
      <p>by ��������</p>
      </div>
    </div>
  </div>
</div><!--���� �ؽ�Ʈ ��-->

<br>

<!--footer �κ�-->
<footer class="container-fluid text-center">
  <p>��ǥ : ���� / E : captainjoe@yorijori.com / F : 02) 777-7777
    ���� ���α� �ݼ��� 5�� 502ȣ
    ���� : 010-0000-0000 (��ð�-����10:00~����5:00)</p>
</footer>
<!--footer �κ� ��-->

</body>
</html>
