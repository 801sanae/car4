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
                
                url : 'user/findId.jsp', //아이디 중복 체크할 페이지 지정
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
    
    $("#passwordclick").click(function() {
        var userid = $("input[id=puserid]").val();
        $('#hideUserId').val(userid);
        alert($("#hideUserId").val());
        
        if ( $("#puserid").val() != null){
          alert( $("#puserid").val() );   
          $.ajax({
                  url:"emailAuth.do",
                      data:({
                        email:$("#puserid").val()
                      }),
                      dataType: 'json',
                      success:function(result){
                    
                        if (result.status == "YES"){ 
                          $('#hideNum').val(result.authNum);
                          $('#pnamemessage').html("<font color=green>인증번호가 발송되었습니다.</font>");
                          $('#pnamemessage').show();
                        }else{
                  
                          $('#pnamemessage').html("<font color=red>인증번호 발송 실패.</font>");
                          $('#pnamemessage').show();
                          }
                        
                          }});
        }
      });
      
    $("#authnumclick").click(function() {
        alert($("#hideNum").val());
        
        if( $("#hideNum").val() == $("#authnum").val() ){
          $("#beforeauthnum").hide();
          $("#afterauthnum").show();
        }else{
          alert("인증번호를 다시 입력해주세요.");
        }
    });
    
     $("#rpassword").keyup(function( pwd ){
            var pwd = $("#rpassword").val()
            
            if(6 > pwd.length || pwd.length > 12){
              $('#rpasswordmessage').html("<font color=red>비밀번호는 문자, 숫자, 특수문자의 조합으로 6~12자리로 입력해주세요.</font>");
              $('#rpasswordmessage').show();
            }
            else if(! pwd.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/)){
              $('#rpasswordmessage').html("<font color=red>비밀번호는 문자, 숫자, 특수문자의 조합으로 6~12자리로 입력해주세요.</font>");
              $('#rpasswordmessage').show();
            }
            else{
              $('#rpasswordmessage').html("<font color=green>사용가능 합니다.</font>");
              $('#rpasswordmessage').show();
            }
          });
     
    $("#rpassword1").keyup(function(){
            var pwd = $("#rpassword").val()
            var pwds = $("#rpassword1").val()
            
            if( pwd == pwds){
              $('#rpassword1message').html("<font color=green>비밀번호가 일치합니다.</font>");
              $('#rpassword1message').show();
            }else{
              $('#rpassword1message').html("<font color=red>비밀번호가 일치하지 않습니다.</font>");
              $('#rpassword1message').show();
            }
          });
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
                                    data-target="#findIdModal" id="findIdATag">아이디 찾기</a> | <a
                                    style="color: gray; cursor: pointer;" data-toggle="modal"
                                    data-target="#modalPassword">비밀번호 찾기</a>
                            </div>
                            <!-- Modal -->

                            <div>
                                <div class="col-md-1 col-sm-1 col-sm-offset-5">
                                    
										<button class="btn btn-default"
											id="login" type="submit">로그인</button>
								
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- PasswordFind start -->
    <div class="modal fade" id="modalPassword" tabindex="-1" role="dialog"
          aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">비밀번호찾기</h4>
              </div>
              <div class="modal-body">
                <div class="container">
                  <h2>찾기</h2>
                  
                  <div name="beforeauthnum" id="beforeauthnum">
                  <form class="form-horizontal" role="form" method="post"
                    action="emailAuth.do" name="authenform">
                    <div class="form-group">
                      <label class="control-label col-sm-1" for="email"
                        name="userId">Email:</label>
                      <div class="col-sm-2">
                        <input type="email" class="form-control" id="puserid"
                          name="userId" placeholder="Enter email">
                        <div id="pnamemessage" style="display: none;"></div> 
                      </div>
                      <div class="col-sm-2">
                      <button type="button" class="btn btn-primary" id="passwordclick" name=""
                        value="알림창">인증번호보내기</button> 
                      </div>
                    </div>
                    </form>
                                                           
                    <form class="form-horizontal" role="form" method="post"
                    action="" name="">
                    <div class="form-group">
                      <label class="control-label col-sm-1" for="pwd">인증번호:</label>
                      <div class="col-sm-2">
                        <input type="" class="form-control" id="authnum"
                          name="authnum" placeholder="Enter authnum">       
                      </div>
                       <div class="col-sm-2">
                       <button type="button" class="btn btn-primary" id="authnumclick" name=""
                        value="알림창">확인</button>
                       </div>
                    </div>
                      </form>                  
                    </div>
                
                <div name="afterauthnum" id="afterauthnum" style="display: none;">
                  <form class="form-horizontal" role="form" method="post"
                    action="updatePassword.do" name="">
                    <div class="form-group">
                      <label class="control-label col-sm-1" for="pwd">비밀번호:</label>
                      <div class="col-sm-3">
                        <input type="password" class="form-control" id="rpassword"
                          name="password" placeholder="Enter password">
                        <div id="rpasswordmessage" style="display: none;"></div>
                        <!-- <div name="hideUserId" id="hideUserId" style="display: none;"></div> -->
                        <input name="hideUserId"  id="hideUserId"  type="hidden">
                      </div>
                     </div>
                        <div class="form-group">
                      <label class="control-label col-sm-1" for="pwd">비밀번호확인:</label>
                      <div class="col-sm-3">
                        <input type="password" class="form-control" id="rpassword1"
                          name="rpassword1" placeholder="Enter password">       
                      <div id="rpassword1message" style="display: none;"></div>
                      </div>
                      <div class="col-sm-1">
                       <button type="submit" class="btn btn-primary" id="rpasswordclick" name=""
                        value="알림창">확인</button>
                       </div>
                       <div id="hideNum" style="display: none;"></div>
                      
                     </div>  
                   </form>
                </div>                
                  
                </div>
            
                <!-- container -->
              </div>
             
              <!-- modal body -->

              <div class="modal-footer">
                
                   <button type="button" class="btn btn-default"
                  data-dismiss="modal"><a href="email.jsp">비밀번호찾기</a></button>
            
                    <button type="" class="btn btn-primary" id="loginclick" name=""
                value="알림창">로그인</button>
                  
                </form>
            
              </div>
            
            
            </div>
          </div>
        </div>
<!-- PasswordFind end -->
    
    <!-- findUserId -->
    <div class="modal fade" id="findIdModal" tabindex="-1" role="dialog"
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