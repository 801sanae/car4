<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<%--회원가입 JSP --%>

<title>Insert title here</title>

<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function() {
	$('#check1').click(function(){
		$.ajax({
			url : 'duplicate.jsp',
			type : 'get',
			dataType:'text',
			data : {
				name1 : $('#duplicate').val()
			},
			success : function(data){
				alert(data);
				if(jQuery.trim(data) == 'O'){
					alert("있는 아이디");
				}else{
					alert("없는 아이디");
				}
			}
		});
	});
});
</script>
<script type="text/javascript">
$(document).ready(function() {
	$('#submit').click(function(){
		$.ajax({
			url : 'welcome.jsp',
			type : 'get',
			dataType:'text',
			data : {
				name1 : $('#duplicate').val()
			},
			success : function(data){
				alert(data);
			}
		});
	});
});
</script>

</head>
<body>
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					
					<div class="modal-dialog">
						
						<div class="modal-content">
						
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">Join Page</h4>
							</div>
							<div class="modal-body">
								<div class="container">

									<h2>환영합니다!!</h2>

									<form class="form-horizontal" action="addUser.do" method="post" id="region">

										<div class="form-group">
											<label class="control-label col-sm-1" for="email">Email:</label>
											<div class="col-sm-4">
												<input type="email" class="form-control" name="userId" id="duplicate"
													placeholder="Enter email">
												<button type="button" id="check1">중복확인</button>
											</div>
											
										</div>

										<div class="form-group">
											<label class="control-label col-sm-1" for="name">Name:</label>
											<div class="col-sm-4">
												<input type="name" class="form-control" name="userName"
													placeholder="Enter Name">
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-1" for="pwd">Password:</label>
											<div class="col-sm-4">
												<input type="password" class="form-control" name="password"
													placeholder="Enter password">
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-1" for="pwdcheck">Password
												Check:</label>
											<div class="col-sm-4">
												<input type="password" class="form-control" name="pwdcheck"
													placeholder="Enter password">
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-1" for="phone">Phone:</label>
											<div class="col-md-1">
												<select class="form-control" name ="phone1">
													<option>010</option>
													<option>011</option>
													<option>018</option>
													<option>019</option>
												</select>
											</div>
											<div class="col-md-1">
												<input class="form-control" name="phone2" placeholder="1234">
											</div>
											<div class="col-md-1">
												<input class="form-control" name="phone3" placeholder="5678">
											</div>
										</div>

					

										<div class="form-group">
											<label class="control-label col-sm-1" for="gender">Gender:</label>
											<div class="col-sm-4">
												<select class="form-control" name="sex">
													<option>male</option>
													<option>female</option>
												</select>
											</div>
										</div>
							
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
										<button  id="submit" type="submit" class="btn btn-primary">Save
											changes</button>
									
									</form>
								</div>
							</div>
							
						</div>

					</div>
					
				</div>
				<!-- 회원가입 끝 -->
</body>
</html>