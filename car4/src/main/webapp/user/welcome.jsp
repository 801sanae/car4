<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" trimDirectiveWhitespaces="true"%>
<%@ page import="com.model2.mvc.service.user.*" %>    
<%@ page import="com.model2.mvc.service.user.impl.*" %>
<%UserDao user = new UserDao();%> 
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/welcome.css" />
<link rel="stylesheet" type="text/css" href="../css/bootstrap1.min.css" />
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="error-template">
                <h1>
                    ${user.userName}님 Welcome!</h1>
                <h2>환영합니다.</h2>
                <div class="error-details">
                    
                </div>
                <div class="error-actions">
                    <a href="../index.jsp" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>
                        Home으로  </a><a href="http://www.jquery2dotnet.com" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-envelope"></span> 내 정보확인 </a>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>