<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%--Login JSP --%>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
    src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<title>Insert title here</title>
<script>
        
    $(document).ready(function() {
        $('#login').click(function() {
            $.ajax({
                url : 'regCheck.jsp',
                type : 'get',
                dataType : 'text',
                data : {
                    email : $('#email').val(),
                    pwd : $('#pwd').val()
                },
                success : function(data) {
                    if (jQuery.trim(data) == "OK") {
                        document.forms["loginForm"].submit();
                    } else if (jQuery.trim(data) == "NO") {
                        alert("아이디 또는 패스워드를 확인하여 주십시오");
                    }
                }
            });
        });
    
<%--findIdTag 클릭시 감춰야할 부분 --%>
    $("#findIdATag").click(function() {
        $("#findId_1st").show();
        $("#findidmessage").hide();
        $("#footer_1st").show();
        
        $("#findIdName").val("");
        $("#findIdPhone").val("");
        $("#findId_2nd").hide();
        $("#footer_2nd").hide();
        $("#findidmessage2").hide();

    });
    
    
    $("#findId").click(function() { // 아이디 찾기 클릭이벤트
        alert("3");
        if($("#findIdName").val()=="" || $("#findIdPhone").val()==""){
            alert("asdf");
            $("#findidmessage2").text("아이디 또는 전화번호를 입력하세요.").css("color","red");
            $("#findidmessage2").show();
        }else if($("#findIdName").val()!="" && $("#findIdPhone").val()!=""){
            $.ajax({
                
                url : "findId.jsp", //아이디 중복 체크할 페이지 지정
                type : 'get',
                dataType : 'json',
                data : {
                    userName : $('#findIdName').val(),//파라메터로 userid 이름으로 값은 사용자가 입력한 사용자 아이디 지정
                    phone : $('#findIdPhone').val()//파라메터로 userid 이름으로 값은 사용자가 입력한 사용자 아이디 지정
                },
                success : function(map) {
    
                    if (map.userId != null) {
    
                        $("#findidmessage").text("회원님의 아이디는"+ map.userId+ "입니다.").css("color", "blue");
                        $("#findId_2nd").show();
                        $("#findidmessage").show();
                        $("#footer_2nd").show();
                        $("#findId_1st").hide();
                        $("#footer_1st").hide();
    
                    } else if (map.NO != null) {
                        $("#findidmessage2").html("<font color=red>아이디 또는 전화번호가 일치하지 않습니다. 다시 입력해 주세요. </font>");
                        $("#findidmessage2").show();
                    }
                }
            });
        }
    });//else 끝나는부분
});
<%--이부분 지우면 아이디 찾기 실행됨 --%>
    
</script>

</head>
<body>
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
                    <div class="container" id="login_1">
                        <h2>Login</h2>
                        <form class="form-horizontal" role="form" action="login.do"
                            method="post" name="loginForm" id="loginForm">
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
                        <div class="row">
                            <div class="col-md-5 col-sm-5">
                                <a style="color: gray; cursor: pointer;" data-toggle="modal"
                                    data-target="#myModal" id="findIdATag">아이디 찾기</a> | <a
                                    style="color: gray; cursor: pointer;" data-toggle="modal"
                                    data-target="#none">비밀번호 찾기</a>
                            </div>
                            <!-- Modal -->

                            <div>
                                <div class="col-md-1 col-sm-1 col-sm-offset-5">
                                    <button type="submit" class="btn btn-default"
                                        data-dismiss="modal" onclick="fncLogin()">로그인</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- findUserId -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
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
                <div class="modal-body" id="findId_1st">
                    <form class="form-horizontal" role="form" method="post"
                        name="findIdForm" id="findIdForm">
                        <div class="container" id="">
                            <div class="form-group">
                                <h2 style="text-align: left">아이디와 전화번호를 입력해주세요.</h2>
                                <label class="control-label col-sm-1" for="email">Name:</label>
                                <div class="col-sm-4">
                                    <input type="name" class="form-control" id="findIdName"
                                        name="userName" placeholder="Enter Name">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-1" for="phone">Phone:</label>
                                <div class="col-sm-4">
                                    <input type="name" class="form-control" id="findIdPhone"
                                        name="phone" placeholder="Enter Phone">
                                </div>
                            </div>
                            <div>
                                 <p id="findidmessage2" style="display: none"></p>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="modal-body" id="findId_2nd" style="display: none">
                    <div class="container">
                       <h1 style="visibility: hidden;">a</h1>
                        <div class="control-label col-sm-12" for="phone"
                            id="findidmessage" style="display: none;"></div>
                         <h1 style="visibility: hidden;">공</h1>
                         <h2 style="visibility: hidden;">백</h2>
                    </div>
                </div>


                <div class="modal-footer" id="footer_1st">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="findId">찾기</button>
                </div>
                <div class="modal-footer" id="footer_2nd" style="display: none">

                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
    <!-- findUserId -->

</body>
</html>