<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<!-- updateuserView.do -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>UpdateUserView</title>
</head>

<body>
<jsp:include page="/nav.jsp"></jsp:include>
<br><br><br><br>

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
							<div class="col-md-3">${user.phone}</div>
							<div class="col-md-3">${user.phone2 }</div>
							<div class="col-md-3">${user.phone3}</div>
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