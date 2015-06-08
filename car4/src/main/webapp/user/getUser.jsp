<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<!-- updateuserView.do -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 합쳐지고 최소화된 최신 CSS -->
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.min.css" rel="stylesheet">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../js/bootstrap.min.js"></script>

<title>UpdateUserView</title>
</head>

<body>


	<!-- header -->
	<div class="container">
		<!-- Second navbar for categories -->
		<div class="row">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="col-md-8" style="margin-top: 25px; margin-bottom: 25px;">

				<a href="../index.jsp"
					style="font-size: 50px; padding-left: 20px; color: gray;">Car4</a>
			</div>

			<div class="col-md-4" style="margin-top: 10px; padding-left: 100px;">
				<a href="#" style="color: gray;">${user.userName} 님 환영합니다.</a>
			|| <a style="color: gray" href="../logout.do">로그아웃</a>		
			</div>
		</div>

	</div>
	<!--/header -->

 <!-- nav bar  -->
    <jsp:include page="../nav.jsp"></jsp:include>
  <!--  nav end -->

	<h3 style="margin-left: 100px">내 정보 수정</h3>


	<form name="form" action="../updateUserView.do" method="post">
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
							<div class="col-md-4" >${user.userId }</div>
						</td>
					</tr>
					<tr>
						<td>Name:</td>
						<td>
							<div class="col-md-4">${user.userName }</div>
						</td>
					</tr>
					<tr>
						<td>Phone:</td>
						<td>
							<div class="col-md-1">${user.phone}</div>
							<div class="col-md-1">${user.phone2 }</div>
							<div class="col-md-1">${user.phone3}</div>
						</td>
					</tr>
					<tr>
						<td>Address:</td>
						<td>
							<div class="col-md-4">${user.addr }</div>
						</td>
					</tr>
					<tr>
						<td>sex:</td>
						<td>
							<div class="col-md-4">${user.sex }</div>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="col-md-offset-5" style="padding-top: 20px">
				<button type="submit" name="submit" style="border-radius: 4px">수정</button>
				<button type="button" style="border-radius: 4px">확인</button>
			</div>
		</div>
	</form>

</body>
</html>