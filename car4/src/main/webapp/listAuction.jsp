<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	
<!DOCTYPE html>
<html>
<head>
<link href="css\bootstrap.css" rel="stylesheet">
<link href="css\bootstrap-theme.min.css" rel="stylesheet">


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript">

	function fncGetList(currentPage) {
		document.getElementById("currentPage").value = currentPage;
	   	document.detailForm.submit();		
	}

</script>

</head>

<body>

	
	<!-- header -->
	<div class="container">
		<!-- Second navbar for categories -->
		<div class="row">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="col-md-9" style="margin-top: 25px; margin-bottom: 25px;">

				<a href="#"
					style="font-size: 50px; padding-left: 20px; color: gray;">Brand</a>
			</div>

			<div class="col-md-3" style="margin-top: 10px; padding-left: 100px;">
				<a href="#" style="color: gray;">Logout</a> &nbsp; <a
					style="margin-top: 15px;">|</a> &nbsp; <a href="#"
					style="color: gray;"> 고객센터</a>
			</div>
		</div>

	</div>
	<!--/header -->


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
					<li><a href="#">MyList</a></li>
					<li class="dropdown mega-dropdown active"><a href="#"
						style="background-color: #f8f8f8;" class="dropdown-toggle"
						data-toggle="dropdown">등록하기</a> <!-- Sub menu -->
						<div class="dropdown-menu mega-dropdown-menu">
							<div align="center">
								<span> <a href="#" style="color: gray;" data-toggle="tab">국산차</a>&nbsp;&nbsp;
								</span> <span> <a href="#" style="color: gray;"
									data-toggle="tab">수입차</a></span>
							</div>
						</div> <!-- /.Sub menu --></li>
				</ul>

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- /navigation var -->
	
	<!-- 역경매 게시글 리스트 -->
	<div class="container">
		<div class="col-md-12">
			<form name="detailForm" action="listAuction.do" method="post">
			
					
					<h4>경매현황게시판</h4>
					<div class="row">
						<div class="table-responsive">
							<table id="mytable" class="table table-bordred table-striped">
								<thead>
									<th class="col-md-1" id="no" align="center">No</th>
									<th class="col-md-1" id="model">모델명</th>
									<th class="col-md-3" id="title" align="center">제목</th>
									<th class="col-md-1" id="id">이름</th>
									<th class="col-md-1" id="regDate">등록일</th>
									
									<th class="col-md-1" id="cnt">조회수</th>	
									<th class="col-md-1" id="tranCode">경매진행상태</th>
									<th class="col-md-1" id="bid">입찰여부</th>
									<th class="col-md-1" id="bidcnt">입찰수</th>
								</thead>
	
								<tbody id="table">
								<c:set var="i" value="0" />
									<c:forEach var="auction" items="${list}">
										<c:set var="i" value="${i+1}" />									
										<tr>
											<td >${ ((resultPage.currentPage)*(resultPage.pageSize)) - (resultPage.pageSize - i) }</td>
											<td>${auction.model}</td>
											<td>${auction.title}</td>
											<td>${auction.userNo.userName}</td>
											<%-- <td>${userName}</td> --%>
											<td>${auction.regDate}</td>
											
											<td>${auction.cnt}</td>
											
											 <td>
												<c:if test="${!empty auction.tranCode && (auction.tranCode).trim() eq '0'}">
													<button type="button" class="btn btn-primary">경매중</button>
												</c:if>
												<c:if test="${!empty auction.tranCode && (auction.tranCode).trim() eq '1'}">
													<button type="button" class="btn btn-danger">경매종료</button>
												</c:if>
											</td>
											<td>
												<c:if test="${!empty auction.bid && (auction.bid).trim() eq '0'}">
													-
												</c:if>
												<c:if test="${!empty auction.bid && (auction.bid).trim() eq '1'}">
													<button type="button" class="btn btn-primary">입찰</button>
												</c:if>
												</td>
											<td>${auction.bidCnt}</td>
											
										</tr>
										
									</c:forEach>
	
									
								</tbody>
	
							</table>
	
	
					<!-- 페이지네이션 -->
							   <input type="hidden" id="currentPage" name="currentPage" value=""/>
					
							<div class="clearfix"></div>
								 <ul class="pagination pull-right">
				 		<!-- 아무기능없는 이전버튼 -->
								<c:if test="${ resultPage.currentPage <= resultPage.pageUnit }">
									<li class="disabled">
										<span class="glyphicon glyphicon-chevron-left">
										</span>
									</li>
								</c:if> 
						<!-- 페이지유닛수를 넘어갈때 링크기능이 있는 이전버튼 -->
								 
								<c:if test="${ resultPage.currentPage > resultPage.pageUnit }">
									<li class="disabled">
										<a href="javascript:fncGetList('${ resultPage.currentPage-1}')">
											<span class="glyphicon glyphicon-chevron-left">
											</span>
										</a>
									</li>
								</c:if>
								
						<!-- 가운데 보여질 페이지들 -->
								<c:forEach var="i"  begin="${resultPage.beginUnitPage}" end="${resultPage.endUnitPage}" step="1">
									<li>
										<a href="javascript:fncGetList('${ i }');">${ i }
										</a>
									</li>
								</c:forEach>
						<!-- 아무기능없는 다음버튼 -->
								<c:if test="${ resultPage.endUnitPage >= resultPage.maxPage }">
									<li>
											<span class="glyphicon glyphicon-chevron-right">
											</span>
										</a>
									</li>
								</c:if>
								
						<!-- 페이지유닛수를 넘어갈때 링크기능이 있는 다음버튼 -->
								<c:if test="${ resultPage.endUnitPage < resultPage.maxPage }">
									<li>
										<a href="javascript:fncGetList('${resultPage.endUnitPage+1}')">
										<span class="glyphicon glyphicon-chevron-right">
										</span>
									</li>
								</c:if>
							</ul> 
					<!-- /페이지네이션 -->
							
						</div>
					</div>
					
					</form>
					
				</div>
			</div>
	
	<!-- /역경매 게시글 리스트 -->
	
	
	
	

	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<!--  <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
	<script src="js/title.js"></script>
	<script src="js/bootstrap-slider.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

</body>
</html>