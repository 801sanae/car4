<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(document).ready(function() {
   $(".dropdown").hover(function() {
      $('.dropdown-menu', this).stop(true, true).slideDown("fast");
      $(this).toggleClass('open');
   }, function() {
      $('.dropdown-menu', this).stop(true, true).slideUp("fast");
      $(this).toggleClass('open');
   });
   
});

$("[data-toggle=tooltip]").tooltip();
</script>

   <!-- navigation var -->
   <nav class="navbar navbar-default" role="navigation">
      <div class="container-fluid" style="margin-left: 48px">
         <!-- Brand and toggle get grouped for better mobile display -->
         <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"
               data-toggle="collapse" data-target="#bs-megadropdown-tabs">
               <span class="sr-only">Toggle navigation</span> <span
                  class="icon-bar"></span> <span class="icon-bar"></span> <span
                  class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"></a>
         </div>

         <!-- Collect the nav links, forms, and other content for toggling -->
         <div class="container">
         <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
            
            <ul class="nav navbar-nav">
               <li><a href="../getUserInfo.do">판매</a></li>
               <li><a href="buy.jsp">구매</a></li>
            </ul>
        
        <ul class="nav navbar-nav navbar-right">
          <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Page<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu" style="display: none;">
                      <li><a href="../user/getUser.jsp">회원정보 수정</a></li>
                      <li><a href="#">구매리스트</a></li>
                      <li><a href="../listUserSell.do">판매리스트</a></li>
                      <li class="divider"></li>
                      <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
        </ul>
         </div>
         </div>
         <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
   </nav>
   <!-- /navigation var -->
   
   