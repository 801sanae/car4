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
<%--ȸ������ JSP --%>

<title>Insert title here</title>

<script type="text/javascript">
$(document).ready(function() {
  $("#id_check").keyup(function() {
    $.ajax({
      url:"user/idcheck.jsp",
      data:({
        userid:$("input[id=id_check]").val()
      }),
      success:function(data){
        //$('#idmessage').html(data);
        //$('#idmessage').show();
        //alert(data);
        //console.log(data);
        if (jQuery.trim(data)=='YES'){  //alert('��밡��');
          
          $('#idmessage').html("<font color=green>��� �����մϴ�.</font>");
          $('#idmessage').show();
        
          // $('input[name=pwd]').focus();//�н������ �ڵ��̵�
        }else{
        //alert('���Ұ���');
          $('#idmessage').html("<font color=red>�̹� ������� ���̵��Դϴ�.</font>");
          $('#idmessage').show();
          //$("input[name=pwd]").val(""); //�Է��ߴ� ���̵� �ʱ�ȭ
          
          //$('input[name=pwd]').focus();//���̵� �ʵ�� �ڵ��̵�

          }
        
          }});
          });
   /*  $("loginclick").click(function(){
      $ajax({
        url:"logincheck.jsp",
        data:({
          userid:$("#input[id=userid]").val(),
          userpwd:$("#input[id=userpwd]").val()
        })  ,
        success:function(data){
          if ( data =='YES'){  //alert('��밡��');               
                alert("��ɼ�");                          
              }else{            
                $('#userPwdmessage').html("<font color=red>���̵� �Ǵ� ��й�ȣ�� �߸��Ǿ����ϴ�.</font>");
                $('#userPwdmessage').show();            
              }
        }
      });
      return false;
    }); */
    $('#loginclick').click(function() {
        if($('#userid').val()==""&&$('#userpwd').val()==""){
          $('#userPwdmessage').html("<font color=red>���̵� �Ǵ� ��й�ȣ�� �Է����ּ���.</font>");
          $('#userPwdmessage').show();
          $('input[name=userId]').focus();
        }else if($('#userid').val()==""){
          $('#userPwdmessage').html("<font color=red>���̵� �Է����ּ���.</font>");
          $('#userPwdmessage').show();
          $('input[name=password]').focus();
        }else if($('#userpwd').val()==""){
          $('#userPwdmessage').html("<font color=red>��й�ȣ�� �Է����ּ���.</font>");
          $('#userPwdmessage').show();
          $('input[name=password]').focus();
        }else{
     
          $("#loginForm").submit();
        }
      });
      
    $("#pwdcheck").keyup(function( pwd ){
        var pwd = $("#pwdcheck").val()
        
        if(6 > pwd.length || pwd.length > 12){
          $('#pwdmessage').html("<font color=red>��й�ȣ�� ����, ����, Ư�������� �������� 6~12�ڸ��� �Է����ּ���.</font>");
          $('#pwdmessage').show();
        }
        else if(! pwd.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/)){
          $('#pwdmessage').html("<font color=red>��й�ȣ�� ����, ����, Ư�������� �������� 6~12�ڸ��� �Է����ּ���.</font>");
          $('#pwdmessage').show();
        }
        else{
          $('#pwdmessage').html("<font color=green>��밡�� �մϴ�.</font>");
          $('#pwdmessage').show();
        }
      });
      
      $("#pwdchecks").keyup(function(){
        var pwd = $("#pwdcheck").val()
        var pwds = $("#pwdchecks").val()
        
        if( pwd == pwds){
          $('#pwdsmessage').html("<font color=green>��й�ȣ�� ��ġ�մϴ�.</font>");
          $('#pwdsmessage').show();
        }else{
          $('#pwdsmessage').html("<font color=red>��й�ȣ�� ��ġ���� �ʽ��ϴ�.</font>");
          $('#pwdsmessage').show();
        }
      });
      $("#phone2").keyup(function(){
        var phone2 = $("#phone2").val()
                  
        var check = $.isNumeric(phone2);
        
        if( check == false){
          alert("���ڸ��Է����ּ���.");
        }
        
      });
      $("#phone3").keyup(function(){
        var phone3 = $("#phone3").val()
        
        var check = $.isNumeric(phone3);
        
        if( check == false){
          alert("���ڸ��Է����ּ���.");
        }
        
      });
      $("#rclick").click(function(){
        if( $("#id_check").val() == "" ){
          $('#idmessage').html("<font color=red>�ʼ� �Է»����Դϴ�.</font>");
          $('#idmessage').show();
          $('input[name=userId]').focus();
          return false;
        }
        else if( $("#name").val() == ""){
          $('#namemessage').html("<font color=red>�ʼ� �Է»����Դϴ�.</font>");
          $('#namemessage').show();
          $('input[name=userName]').focus();
          return false;
        }
        else if( $("#pwdcheck").val() =="" ){
          $('#pwdmessage').html("<font color=red>�ʼ� �Է»����Դϴ�.</font>");
          $('#pwdmessage').show();
          $('input[name=password]').focus();
          return false;
        }
        else if( $("#addr").val() =="" ){
          $('#addrmessage').html("<font color=red>�ʼ� �Է»����Դϴ�.</font>");
          $('#addrmessage').show();
          $('input[name=addr]').focus();
          return false;
        }
      });
});     
</script>
</head>
<body>
				<!-- ȸ������ Ŭ�� -->
        <a style="margin-top: 15px;">|</a> <a style="color: gray"
          data-toggle="modal" data-target="#myModal"> Sign</a>
        <!-- Modal -->
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

                  <h2>ȯ���մϴ�!!</h2>

                  <form class="form-horizontal" role="form" name="registerForm"
                    method="post" action="addUser.do">

                    <div class="form-group">
                      <label class="control-label col-sm-1" for="email">Email:</label>
                      <div class="col-sm-4">
                        <input type="email" class="form-control" id="id_check"
                          name="userId" placeholder="Enter email">
                        
                        <!-- <button type="button" id="id_check">�ߺ�üũ</button><br/> -->
                        <div id="idmessage" style="display: none;"></div>
                      </div>
                    </div>

                    <div class="form-group">
                      <label class="control-label col-sm-1" for="name">Name:</label>
                      <div class="col-sm-4">
                        <input type="name" class="form-control" id="name"
                          name="userName" placeholder="Enter Name">
                        <div id="namemessage" style="display: none;"></div> 
                      </div>
                    </div>

                    <div class="form-group">
                      <label class="control-label col-sm-1" for="pwd">Password:</label>
                      <div class="col-sm-4">
                        <input type="password" class="form-control" id="pwdcheck"
                          name="password" placeholder="Enter password">
                          <div id="pwdmessage" style="display: none;"></div>
                      </div>
                    </div>

                    <div class="form-group">
                      <label class="control-label col-sm-1" for="pwdcheck">Password
                        Check:</label>
                      <div class="col-sm-4">
                        <input type="password" class="form-control" id="pwdchecks"
                          name="passwords" placeholder="Enter password">
                        <div id="pwdsmessage" style="display: none;"></div> 
                      </div>
                    </div>

                    <div class="form-group">
                      <label class="control-label col-sm-1" for="phone"
                        name="phone">Phone:</label>
                      <div class="col-sm-2" name="phone1">
                        <select class="form-control" name="phone1">
                          <option>����</option>
                          <option value="010">010</option>
                          <option value="011">011</option>
                          <option value="018">018</option>
                          <option value="019">019</option>
                        </select>
                      </div>
                      <div class="col-md-1" name="phone2">
                        <input class="form-control" id="phone2" placeholder="�Է�"
                          name="phone2">
                        <div id="phone2message" style="display: none;"></div>
                      </div>
                      <div class="col-md-1" name="phone3">
                        <input class="form-control" id="phone3" placeholder="�Է�"
                          name="phone3">
                        <div id="phone3message" style="display: none;"></div> 
                      </div>
                    </div>

                    <div class="form-group">
                      <label class="control-label col-sm-1" for="birth">ADDR:</label>
                      <div class="col-md-4">
                      <input type="" class="form-control" id="addr"
                          name="addr" placeholder="Enter address">
                     <!--  <div class="row">
                       <div class="col-md-3">
                          <input class="form-control" type="text" id="sample4_postcode1" style=""> 
                        </div>
                        <div class="col-md-1">
                          <h5>-</h5>
                        </div>
                        <div class="col-md-3">  
                          <input class="form-control" type="text" id="sample4_postcode2">
                        </div>
                        <div class="col-md-5">
                            <input class="form-control btn btn-primary" type="button"
                              onclick="sample4_execDaumPostcode()" value="�����ȣ ã��"><br>
                        </div>
                       </div>  
                        
                          <input class="form-control" type="text" id="sample4_roadAddress" placeholder="���θ��ּ�">
                          <input class="form-control" type="text" id="sample4_jibunAddress" placeholder="�����ּ�">
                          <span id="guide" style="color:#999"></span>-->
                        <div id="addrmessage" style="display: none;"></div>    
                      </div>
                    </div>

                    <div class="form-group">
                      <label class="control-label col-sm-1" for="gender" name="sex">Gender:</label>
                      <div class="col-sm-4" name="sex">
                        <select class="form-control" name="sex">
                          <option>����</option>
                          <option value="male">male</option>
                          <option value="female">female</option>
                        </select>
                      </div>
                    </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default"
                  data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" id="rclick" name="btn_is_alert"
                onclick="btn_is_alert_click();" value="�˸�â">���</button>
              </div>
            </div>
          </div>
        </div>
        </form>
        <!-- ȸ������ �� -->
</body>
</html>