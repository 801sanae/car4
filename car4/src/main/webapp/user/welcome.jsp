<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
body {
  text-align: center;
  color: #fff;
  background-attachment: scroll;
  background-image: url(../img/2.png);
  background-position: center center;
  background-repeat: none;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  background-size: cover;
  -o-background-size: cover;
}
</style>
</head>

<body>
<jsp:include page="../common/attribute.jsp"></jsp:include>
<nav class="navbar navbar-default navbar-fixed-top navbar-shrink">
         <div class="container-fluid" style="margin-left: 48px">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="../index.do">Car4</a>
            </div>
        </div>
        <!-- /.container-fluid -->
    </nav>
<jsp:include page="/user/login.jsp"></jsp:include>
<br><br><br><br><br><br><br>

<div class="container">
    <div class="row">
        <div class="col-md-12">
        	<div class="intro-text">
              <h1 style="color: white">${user.userName}님 Welcome!</h1>
              <br>
                <a href="../index.jsp" class="service page-scroll btn btn-xl"><span class="glyphicon glyphicon-home">&nbsp;</span>Service 시작하기!</a>
            </div>
        </div>
    </div>
</div>


</body>
</html>