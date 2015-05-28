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

<style>
</style>
    
<!-- header -->
	<div class="container">
		<!-- Second nav
		bar for categories -->
		<div class="row">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="col-md-9" style="margin-top: 25px; margin-bottom: 25px;">

				<a href="#" style="font-size: 50px; padding-left: 20px;">Car4</a>
			</div>

			<div class="col-md-3"
				style="margin-top: 10px; padding-left: 100px; color: pink">
						
						
				<!-- Login 클릭 -->		
				<c:if test="${ empty user }">
			              <a style="color: gray" data-toggle="modal" data-target="#modalLogin">
						Login</a>
				<!--  회원가입 창 띄우기 -->
					<jsp:include page="/user/register.jsp"></jsp:include>
				<!--  회원가입 창 띄우기 -->
				</c:if>
			   <c:if test="${!empty sessionScope.user && (user.role) eq 'user' }">
					<a style="color: gray" href="user/getUser.jsp"> ${user.userName}님
						환영합니다 :)</a>
						
				</c:if>
				<!-- Login 클릭 -->
					
								
				
				
			</div>
		</div>
	</div>
	<!--/header End  -->


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
			<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp">index.jsp</a></li>
					<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Page<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu" style="display: none;">
                <li><a href="user/updateUser.jsp">회원정보 수정</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
              </ul>
            </li>
				</ul>

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- /navigation var -->
	
	