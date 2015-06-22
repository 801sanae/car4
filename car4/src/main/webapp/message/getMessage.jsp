<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<link href="css/getMessage.css" rel="stylesheet">
<script>
	function conf(msgNo) {
		if (confirm("삭제하겠습니까?")) {
			location.href = "deleteMessage.do?messageNo=" + msgNo;
		} else {
			history.go(1);
		}
	}
</script>
<body>
	<div class="container">
		<div class="row">
			<div class="info">
				<center>
					<img src="img/micons.png">
				</center>
				<h4 class="text-center"><%=request.getParameter("userName") %></h4>
				<p>
				<center>${message.contents}</center>
				</p>
				<center><form name="deleteMsg">
					<a href="listMessage.do" class="btn btn-info"> <span
						class="glyphicon glyphicon-arrow-left"></span> 뒤로
					</a> 
						 <a class="btn btn-info confrim" onclick="conf(${message.messageNo })"> 
						<span class="glyphicon glyphicon-trash"></span>삭제</a>
					<a href="message/message.jsp?userName=<%=request.getParameter("userName")%>&userNo=<%=request.getParameter("userNo")%>"
						class="btn btn-info">답장하기 <span class="glyphicon glyphicon-arrow-right"></span>
					</a>
					</form>
				</center>
			</div>
		</div>
	</div>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet"
		href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</body>
</html>