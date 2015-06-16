<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<link href="css/getMessage.css" rel="stylesheet">
<body>
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
            <div class="box">
                <div class="box-icon">
                    <span class="fa fa-4x fa-html5"></span>
                </div>
                <div class="info">
                    <h4 class="text-center">Title</h4>
                    
                    <p>${message.contents}</p>
                 
                    <a href="listMessage.do" class="btn"><span class="glyphicon glyphicon-arrow-left"></span> 뒤로</a>
                    <a href="deleteMessage.do?messageNo=${message.messageNo }" class="btn"><span class="glyphicon glyphicon-trash"></span>삭제</a>
                    <a href="message/message.jsp?userName=<%=request.getParameter("userName")%>&userNo=<%=request.getParameter("userNo")%>" class="btn">답장하기 <span class="glyphicon glyphicon-arrow-right" ></span> </a>
                </div>
            </div>
        </div>
	</div>
</div>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</body>
</html>