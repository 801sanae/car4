<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	
<!DOCTYPE html>
<html>
<head>
<link href="css\bootstrap.css" rel="stylesheet">
<link href="css\bootstrap-theme.min.css" rel="stylesheet">
<link href="css\tabs.css" rel="stylesheet">



<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript">

	function fncGetList(currentPage) {
		//받아온 currentPage를 현재페이지로.
		document.getElementById("currentPage").value = currentPage;
		//currentPage를 변경해도 tab는 유지되어야 한다.
		document.getElementById("tabs").value = ${search.tabs};
	   	document.detailForm.submit();		
	}
	
	function fncTabs() {
		alert(event.target.id);
		//$("#tabs").val(event.target.id);
		document.getElementById("tabs").value = event.target.id;
		$('#event.target.id').trigger('click');
		
		//tabs가 변하면 검색값들이 변경되어야한다.
		document.getElementById("currentPage").value = 1;
		document.getElementById("searchCondition").value = -1;
		$("#searchKeyword").val('');
	
		
		document.detailForm.submit();		
	}


	
	function fncSearch() {
		$("#hideSearch").css('display', 'block');
	}
	
	function fncOrderby() {
		$("#hideOrderby").css('display', 'block');
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
	

	

	
	<div class="container">
		<form name="detailForm" action="listAuction.do" method="post">
		
	
		<!-- search/orderby -->
			<div class="row">
			   			
			   	<!-- search -->
				<div class="col-md-8" style="text-align:right;">
					<div id="hideSearch" style="display:none;">		   
					  <table width="100%" border="0" cellspacing="0" cellpadding="0"
						style="margin-top: 10px;">
						<tr>
							<c:if test="${ !empty search.searchCondition }">
								<td align="right">
								<select name="searchCondition" id="searchCondition"
									class="ct_input_g" style="width: 80px">
										<option value="-1" ${ search.searchCondition eq '-1' ? "selected" : '' }>선택</option>
										<option value="0"
											${ search.searchCondition eq '0' ? "selected" : '' }>경매번호</option>
										<option value="1"
											${ search.searchCondition eq '1' ? "selected" : '' }>모델명</option>
										<option value="2"
											${ search.searchCondition eq '2' ? "selected" : '' }>-</option>
								</select> <input type="text"  id="searchKeyword" name="searchKeyword" value="${!empty search.searchKeyword ? search.searchKeyword : "" }" class="ct_input_g"
									style="width: 200px; height: 19px" /></td>
							</c:if>
							<c:if test="${ empty search.searchCondition }">
								<td align="right"><select name="searchCondition"
									class="ct_input_g" style="width: 80px">
										<option value="-1">선택</option>
										<option value="0">경매번호</option>
										<option value="1">모델명</option>
										<option value="2">-</option>
								</select> 
								<input type="text" name="searchKeyword"  value="${!empty search.searchKeyword ? search.searchKeyword : "" }" class="ct_input_g"
									style="width: 200px; height: 19px" /></td>
							</c:if>
							<td align="right" width="70">
								<table border="0" cellspacing="0" cellpadding="0">
									<tr>
										
										<button type="button" onClick="javascript:fncGetList('1');">검색</button>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<!-- search -->
			
			<!-- orderby -->
			<div class="col-md-8" style="text-align:right;">
				<div id="hideOrderby" style="display:none;">		   
					<input type="radio" id="manyBid" name="orderby" value="1" onClick="javascript:fncGetList('1');"> 입찰자 많은 순 
					<input type="radio" id="manyCnt" name="orderby" value="2" onClick="javascript:fncGetList('1');"> 조회수 많은 순
				</div>
			</div>
			<!-- /orderby -->
			

			<!-- menu -->
				<div class="col-md-2" style="text-align:right">
					<div class="btn-group" role="group" aria-label="Basic example">
					  <button type="button" id="search" class="btn btn-default" onclick="javascript:fncSearch();">검색</button>
					  <button type="button" class="btn btn-default" onclick="javascript:fncOrderby();">정렬</button>
					</div>
				</div>
			<!-- /menu -->
				
				
				
		</div>

		<!--/search/orderby -->
	

		<!-- tabs -->
    <div class="row">
		<div class="col-md-12">
			<!-- <h3>경매현황게시판</h3> -->

				<input type="hidden" id="tabs" name="tabs" />
				
				<div class="tabbable-line">
					<c:if test="${ !empty search.tabs }">
						<ul class="nav nav-tabs"  onclick="javascript:fncTabs();">
							<li class="active">
								<a href="#tab_default_1" data-toggle="tab" style="font-size:15pt" id="0">전체</a>
							</li>
							<li>
								<a href="#tab_default_2" data-toggle="tab" style="font-size:15pt" id="1">경매중</a>
							</li>
							<li>
								<a href="#tab_default_3" data-toggle="tab" style="font-size:15pt" id="2">경매종료</a>
							</li>
						</ul>
					</c:if>
					<c:if test="${ empty search.tabs }">
					<ul class="nav nav-tabs"  onclick="javascript:fncTabs();">
							<li class="active">
								<a href="#tab_default_1" data-toggle="tab" style="font-size:15pt" id="0">전체</a>
							</li>
							<li>
								<a href="#tab_default_2" data-toggle="tab" style="font-size:15pt" id="1">경매중</a>
							</li>
							<li>
								<a href="#tab_default_3" data-toggle="tab" style="font-size:15pt" id="2">경매종료</a>
							</li>
						</ul>
					</c:if>
					
					
					<div class="tab-content">
						
					</div>
				</div>
			</div>
		</div>

	
	<!-- /tabs -->
	
	
	
	
	
<!-- 역경매 게시글 리스트 -->
		<div class="col-md-12">
			
					
					<div class="row">
						<div class="table-responsive">
							<table id="mytable" class="table table-bordred table-striped">
								<thead>
									<tr>
										<th class="col-md-1" id="no" align="center">No</th>
										<th class="col-md-1" id="model">모델명</th>
										<th class="col-md-3" id="title" align="center">제목</th>
										<th class="col-md-1" id="id">이름</th>
										<th class="col-md-1" id="regDate">등록일</th>
										
										<th class="col-md-1" id="cnt">조회수</th>	
										<th class="col-md-1" id="tranCode">경매진행상태</th>
										<th class="col-md-1" id="bid">입찰여부</th>
										<th class="col-md-1" id="bidcnt">입찰수</th>
									</tr>
								</thead>
	
								<tbody id="table">
								<c:set var="i" value="0" />
									<c:forEach var="auction" items="${list}">
										<c:set var="i" value="${i+1}" />									
										<tr>
											<td >${ ((resultPage.currentPage)*(resultPage.pageSize)) - (resultPage.pageSize - i) }</td>
											<td>${auction.model}</td>
											<td><a href="getAuctionView.do?auctionNo=${auction.auctionNo }">${auction.title}</a></td>
											<td>${auction.user.userName}</td>
											<td>${auction.regDate}</td>
											
											<td>${auction.cnt}</td>
											
											 <td>
												<c:if test="${!empty auction.successCar && (auction.successCar) eq '0'}">
													<button type="button" class="btn btn-primary">경매중</button>
												</c:if>
												<c:if test="${!empty auction.successCar && !( (auction.successCar) eq '0')}">
													<button type="button" class="btn btn-danger">경매종료</button>
												</c:if>
											</td>
											<td>
												<c:if test="${!empty auction.temp && (auction.temp) eq 0}">
													-
												</c:if>
												<c:if test="${!empty auction.temp && (auction.temp) != 0}">
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
									</li>
								</c:if>
								
						<!-- 페이지유닛수를 넘어갈때 링크기능이 있는 다음버튼 -->
								<c:if test="${ resultPage.endUnitPage < resultPage.maxPage }">
									<li>
										<a href="javascript:fncGetList('${resultPage.endUnitPage+1}')">
										<span class="glyphicon glyphicon-chevron-right">
										</span>
										</a>
										
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