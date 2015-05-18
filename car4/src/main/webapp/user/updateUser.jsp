<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>UpdateUser</title>
<!-- UpdateUser.do -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


</head>

<body>

	<form name="updateUserform" action="updateUser.do" method="post">


	<!-- header -->
	<div class="container">
		<!-- Second navbar for categories -->
		<div class="row">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="col-md-9" style="margin-top: 25px; margin-bottom: 25px;">

				<a href="main2.jsp"
					style="font-size: 50px; padding-left: 20px; color: gray;">Car4</a>
			</div>

			<div class="col-md-3" style="margin-top: 10px; padding-left: 100px;">
				<a href="#" style="color: gray;"> 님 환영합니다.</a> &nbsp; <a
					style="margin-top: 15px;">|</a> &nbsp; <a href="#"
					style="color: gray;"> 고객센터</a>
			</div>
		</div>

	</div>
	<!--/header -->


	<!-- navigation var -->
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid" style="margin-left: 48px">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
				<ul class="nav navbar-nav">
					<li><a href="#">MyList</a></li>
					<li class="dropdown mega-dropdown active"><a href="#"
						style="background-color: #f8f8f8;" class="dropdown-toggle"
						data-toggle="dropdown">등록하기</a> <!-- Sub menu -->
						<div class="dropdown-menu mega-dropdown-menu">
							<div align="center">
								<span> <a href="#" style="color: gray;" data-toggle="tab">국산차</a>&nbsp;&nbsp;
								</span> <span> <a href="#" style="color: gray;"
									data-toggle="tab">수입차</a></span>
							</div>
						</div> <!-- /.Sub menu --></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- /navigation var -->

	<h3 style="margin-left: 100px">내 정보 수정</h3>



	<div class="container" align="center">

		<table class="table table-hover">

			<thead>
				<tr>
					<th></th>
					<th></th>
				</tr>
			</thead>
			

				<tbody>
					<tr>
						<td>Email:</td>
						<td>
							<div class="col-md-4">
								<input type="email" class="form-control" name="userId" id="userId"
									value="${user.userId}" readonly>
							</div>
						</td>
					</tr>
					<tr>
						<td>Name:</td>
						<td>
							<div class="col-md-4">
								<input type="name" class="form-control" name="userName" id="userName"
									value="${user.userName}">
							</div>
						</td>
					</tr>
					<tr>
						<td>Password:</td>
						<td>
							<div class="col-md-4">
								<input type="password" class="form-control" name="password" id="password"
									value="${user.password }">
							</div>
						</td>
					</tr>
					<tr>
						<td>PasswordCheck:</td>
						<td>
							<div class="col-md-4">
								<input type="password" class="form-control" name="passwordCheck" id="passwordCheck"
									value="${user.password }">
							</div>
						</td>
					</tr>
					<tr>
						<td>Phone:</td>
						<td>
							<div class="col-md-1">
								<select class="form-control" name="phone" id="phone">
										<option value="010" <c:if test="${user.phone eq '010' }">selected</c:if> >010</option>
										<option value="011" <c:if test="${user.phone eq '011' }">selected</c:if> >011</option>
										<option value="018" <c:if test="${user.phone eq '018' }">selected</c:if> >018</option>
										<option value="019" <c:if test="${user.phone eq '019' }">selected</c:if> >019</option>
								</select>
							</div>

							<div class="col-md-1">
								<input class="form-control" name="phone2" id="phone2" value="${user.phone2}">
							</div>
							<div class="col-md-1">
								<input class="form-control" name="phone3" id="phone3" value="${user.phone3}">
							</div>
						</td>
					</tr>
					<tr>
						<td>Address:</td>
						<td>
							<div class="col-md-4">
								<input type="text" class="form-control" name="addr" id="addr"
									value="${user.addr}">
							</div>
						</td>
					</tr>
					<tr>
						<td>sex:</td>
						<td>
							<div class="col-md-4">
								<select class="form-control" name="sex" id="sex">
										<option value="0" <c:if test="${user.sex eq '0' }">selected</c:if> >male</option>
										<option value="1" <c:if test="${user.sex eq '1' }">selected</c:if> >female</option>
										
								</select>
							</div>
						</td>
					</tr>
				</tbody>
		</table>

		<div class="col-md-offset-5" style="padding-top: 20px">
			<button type="submit" style="border-radius: 4px">수정</button>
			<button type="reset" style="border-radius: 4px">Cancel</button>
		</div>

	</div>
	</form>

</body>
</html>