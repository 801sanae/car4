<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script>
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<!-- <link rel="stylesheet" type="text/css" href="css/test.css" />
<link rel="stylesheet" type="text/css" href="css/button.css" /> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<title>Insert title here</title>
<!-- <script src="http://code.jquery.com/jquery-1.10.2.js"></script> -->

</head>
<body>
<!-- header -->
	<div class="container">
		<!-- Second nav
		bar for categories -->
		<div class="row">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="col-md-9" style="margin-top: 25px; margin-bottom: 25px;">

				<a href="#" style="font-size: 50px; padding-left: 20px;">Car4</a>
			</div>

			<div class="col-md-3"
				style="margin-top: 10px; padding-left: 100px; color: pink">
						
						
				<!-- Login 클릭 -->		
				<c:if test="${ empty user }">
			              <a style="color: gray" data-toggle="modal" data-target="#modalLogin">
						Login</a>
				<!--  회원가입 창 띄우기 -->
					<jsp:include page="/user/register.jsp"></jsp:include>
				<!--  회원가입 창 띄우기 -->
				</c:if>
			   <c:if test="${!empty sessionScope.user && (user.role) eq 'user' }">
					<a style="color: gray" href="user/getUser.jsp"> ${user.userName}님
						환영합니다 :)</a>
						
				</c:if>
				<!-- Login 클릭 -->
					
								
				<!--  Login 창 띄우기 -->
				<jsp:include page="/user/login.jsp"></jsp:include>
				<!--  Login 창 띄우기 -->
				
				
			</div>
		</div>
	</div>
	<!--/header End  -->

	<div class="container-fluid"
		style="padding-left: 500px; padding-right: 500px; margin-top: 150px;">

		<div class="top" id="top">
			<div class="top_left">

				<!-- <a href=""><h3>³»Â÷ »ç±â</h3></a> -->

				<!-- <button type="button" class="btn btn-hot text-uppercase btn-lg">hot button</button>
            <button type="button" class="btn btn-sunny text-uppercase btn-lg">Sunny button</button> -->
				<a href="main2.jsp"><button type="button"
						class="btn btn-fresh text-uppercase btn-lg" onclick="">사러갑시다</button></a>
				<!-- <button type="button" class="btn btn-sky text-uppercase btn-lg">Sky button</button> -->


			</div>

			<div class="top_right">

          <form class="form-horizontal" role="" name="getForm"
                    method="post" action="getUserInfo.do">
				<button type="submit" class="btn btn-sunny text-uppercase btn-lg">팔러갑시다</button>
				<input name="userId"  id="hideUserId1"  type="hidden">    
        </form> 
			</div>
		</div>
		<br>





		<div>
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class=""></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"
						class=""></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item active left">
						<a href=""> <img
							data-src="holder.js/1140x500/auto/#777:#555/text:First slide"
							alt="First slide [1140x500]" src="img/car1.jpg"
							data-holder-rendered="true">
							<div class="carousel-caption">
								<h3>BMW</h3>
							</div>
						</a>
					</div>
					<div class="item next left">
						<a href=""><img
							data-src="holder.js/1140x500/auto/#666:#444/text:Second slide"
							alt="Second slide [1140x500]" src="img/car2.jpg"
							data-holder-rendered="true">
							<div class="carousel-caption">
								<h3>Ferrari</h3>
							</div> </a>
					</div>
					<div class="item">
						<a href=""><img
							data-src="holder.js/1140x500/auto/#555:#333/text:Third slide"
							alt="Third slide [1140x500]" src="img/car3.jpg"
							data-holder-rendered="true">
							<div class="carousel-caption">
								<h3>Mercedes Benz</h3>
							</div> </a>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>