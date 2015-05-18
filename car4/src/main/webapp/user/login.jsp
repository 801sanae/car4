<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--Login JSP --%>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<script>
$(document).ready(function() {
	$('#login').click(function(){
		$.ajax({
			url : 'regCheck.jsp',
			data : {
				email : $('#email').val(),
				pwd : $('#pwd').val()
			},
			success : function(data){
				alert(data);
				if(jQuery.trim(data) == "OK"){
					document.forms["loginForm"].submit();
				}else if(jQuery.trim(data)=="NO"){
					alert("아이디 또는 패스워드를 확인하여 주십시오");
				}
			}
		});
	});
});
</script>
<script>
function fncFindId() {
	document.findIdForm.action = '/findUser.do';
	document.findIdForm.method = 'post';
	document.findIdForm.submit();
}
</script>
</head>
<body>
$
<div class="modal fade" id="modalLogin" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">환영합니다.</h4>
							</div>
							<div class="modal-body">
								<div class="container">
									<h2>Login</h2>
									<form class="form-horizontal" role="form" action="login.do" method="post" name="loginForm" id="loginForm">
										<div class="form-group">
											<label class="control-label col-sm-1" for="email">Email:</label>
											<div class="col-sm-4">
												<input type="email" class="form-control" id="email"
													name="userId" placeholder="Enter email">
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-1" for="pwd">Password:</label>
											<div class="col-sm-4">
												<input type="password" class="form-control" id="pwd"
													name="password" placeholder="Enter password">
											</div>
										</div>
									</form>
								</div>
							<!--  container  -->
							</div>
							<!--  modal body  -->

							<div class="modal-footer">
								<div class="form-group">
									<a style="color: gray; cursor: pointer;" data-toggle="modal"
										data-target="#myModal1">아이디 찾기</a> | <a
										style="color: gray; cursor: pointer;" data-toggle="modal"
										data-target="#none">비밀번호 찾기</a>
									<div class="col-sm-12">
										<button class="btn btn-default"
											id="login" type="submit">로그인</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
<!-- findUserId -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"
aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
<h4 class="modal-title" id="myModalLabel">아이디 찾기</h4>
</div>
<div class="modal-body">
<form class="form-horizontal" role="form" name="findIdForm" id="findIdForm">
<div class="container">
<div class="form-group">

<p style="color: black; text-align: left">아이디와 전화번호를 입력해주세요.</p>

<label class="control-label col-sm-1" for="email">Name:</label>
<div class="col-sm-4">
<input type="name" class="form-control" id="findName"
name="userName" placeholder="Enter Name">
</div>
</div>

<div class="form-group">
<label class="control-label col-sm-1" for="phone">Phone:</label>
<div class="col-sm-4">
<input type="name" class="form-control" id="findPhone" name="phone"
placeholder="Enter Phone">
</div>
</div>
</div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
<button type="button" class="btn btn-primary" onclick="fncFindId()">찾기</button>
</div>
</div>
</div>
</div>
<!-- findUserId -->
</body>
</html>