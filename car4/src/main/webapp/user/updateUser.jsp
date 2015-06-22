<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>UpdateUser</title>
<!-- UpdateUser.do -->


</head>

<body>
<jsp:include page="/nav.jsp"></jsp:include>

	<form name="updateUserform" action="updateUser.do" method="post">



<br><br><br><br>
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
							<div class="col-md-2">
								<select class="form-control" name="phone" id="phone">
										<option value="010" <c:if test="${user.phone eq '010' }">selected</c:if> >010</option>
										<option value="011" <c:if test="${user.phone eq '011' }">selected</c:if> >011</option>
										<option value="018" <c:if test="${user.phone eq '018' }">selected</c:if> >018</option>
										<option value="019" <c:if test="${user.phone eq '019' }">selected</c:if> >019</option>
								</select>
							</div>

							<div class="col-md-2">
								<input class="form-control" name="phone2" id="phone2" value="${user.phone2}">
							</div>
							<div class="col-md-2">
								<input class="form-control" name="phone3" id="phone3" value="${user.phone3}">
							</div>
						</td>
					</tr>
					<tr>
						<td>Address:</td>
						<td>
							<div class="col-md-6">
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