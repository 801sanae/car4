<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <%--날짜 포맷 라이브러리 --%>

<jsp:useBean id="toDay" class="java.util.Date" />


<!DOCTYPE html>
<html>
<head>
<!-- nav.jsp -->
<jsp:include page="../nav.jsp"></jsp:include> 
<!-- nav.jsp -->
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
		//alert(event.target.id);
		//$("#tabs").val(event.target.id);
		document.getElementById("tabs").value = event.target.id;
		//alert(document.getElementById("tabs").value);
		//$('#'+event.target.id).trigger('click');

		
		//tabs가 변하면 검색값들이 변경되어야한다.
		document.getElementById("currentPage").value = 1;
		//document.getElementById("searchCondition").value = -1;
	
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

<script>
	//$('.dropdown-toggle').dropdown();
</script>

<script>
	function OpenWindow() {
		window
				.open("message/message.jsp", "_blank",
						"top=250,left=600,width=470,height=250,resizable=1,scrollbars=no");
	}
</script>

<script>
	function OpenWindow(userName,userNo,userId) {
		/*  window.open("value","_blank","top=250,left=600,width=470,height=240,resizable=1,scrollbars=no");  */
		
		$('#userName').val(userName);
		$("#userNo").val(userNo);
		$("#userId").val(userId);
		
		
		window.open("쪽지 보내기", "value", "top=250,left=600,width=500,height=300");
		document.detailForm.target = "value"; //새창에서 지정한 value옵션으로 타겟을 지정
		document.detailForm.action = "message/message.jsp";
		/* ?userName="+userName+"&userNo="+userNo; //새창으로 띄울 jsp */
		document.detailForm.submit();
		

	}
</script>

</head>

<body>
	<fmt:formatDate value="${toDay}" pattern="yyyy-MM-dd" var="toDay"/> 
	<fmt:formatDate value="${auction.regDate}" pattern="yyyy-MM-dd" var="regDate" />  <!--  이건 안해도됨 원래 이런형식으로 출력되서 -->
	<form name="detailForm" action="listAuction.do" method="post">
		<input type="hidden" id="userName" name="userName"> 
		<input type="hidden" id="userNo" name="userNo"> 
		<input type="hidden" id="userId" name="userId">


<br><br><br><br>


		<div class="container">

			<!-- search/orderby -->
			<div class="row">

				<!-- search -->
				<div class="col-md-8" style="text-align: right;">
					<div id="hideSearch" style="display: none;">
						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							style="margin-top: 10px;">
							<tr>
								<c:if test="${ !empty search.searchCondition }">
									<td align="right"><select name="searchCondition"
										id="searchCondition" class="ct_input_g" style="width: 80px">
											<option value="-1"
												${ search.searchCondition eq '-1' ? "selected" : '' }>선택</option>
											<option value="0"
												${ search.searchCondition eq '0' ? "selected" : '' }>경매번호</option>
											<option value="1"
												${ search.searchCondition eq '1' ? "selected" : '' }>모델명</option>
											<option value="2"
												${ search.searchCondition eq '2' ? "selected" : '' }>-</option>
									</select> <input type="text" id="searchKeyword" name="searchKeyword"
										value="${!empty search.searchKeyword ? search.searchKeyword : "
										" }" class="ct_input_g" style="width: 200px; height: 19px" /></td>
								</c:if>
								<c:if test="${ empty search.searchCondition }">
									<td align="right"><select name="searchCondition"
										class="ct_input_g" style="width: 80px">
											<option value="-1">선택</option>
											<option value="0">경매번호</option>
											<option value="1">모델명</option>
											<option value="2">-</option>
									</select> <input type="text" name="searchKeyword"
										value="${!empty search.searchKeyword ? search.searchKeyword : "
										" }" class="ct_input_g" style="width: 200px; height: 19px" /></td>
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
				<div class="col-md-8" style="text-align: right;">
					<div id="hideOrderby" style="display: none;">
						<input type="radio" id="manyBid" name="orderby" value="1"
							onClick="javascript:fncGetList('1');"> 입찰자 많은 순 <input
							type="radio" id="manyCnt" name="orderby" value="2"
							onClick="javascript:fncGetList('1');"> 조회수 많은 순
					</div>
				</div>
				<!-- /orderby -->


				<!-- menu -->
				<div class="col-md-2" style="text-align: right">
					<div class="btn-group" role="group" aria-label="Basic example">
						<button type="button" id="search" class="btn btn-default"
							onclick="javascript:fncSearch();">검색</button>
						<button type="button" class="btn btn-default"
							onclick="javascript:fncOrderby();">정렬</button>
					</div>
				</div>
				<!-- /menu -->



			</div>

			<!--/search/orderby -->


			<!-- tabs -->
			<div class="row">
				<div class="col-md-12">
					<!-- <h3>경매현황게시판</h3> -->

					<input type="hidden" id="tabs" name="tabs" value=""/>

					<div class="tabbable-line">
						<ul class="nav nav-tabs">
							<li <c:if test="${search.tabs eq 0}">class="active"</c:if>><a href="#tab_default_1"  onclick="javascript:fncTabs(0);"
								data-toggle="tab" style="font-size: 15pt" id="0">전체</a></li>
							<li <c:if test="${search.tabs eq 1}">class="active"</c:if>><a href="#tab_default_2" data-toggle="tab" onclick="javascript:fncTabs(1);"
								style="font-size: 15pt" id="1">경매중</a></li>
							<li <c:if test="${search.tabs eq 2}">class="active"</c:if>><a href="#tab_default_3" data-toggle="tab" onclick="javascript:fncTabs(2);"
								style="font-size: 15pt" id="2">경매종료</a></li>
						</ul>
						<div class="tab-content"></div>
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
										
										<th class="col-md-1" id="tranCode">경매진행상태</th>
									    <c:if test="${!empty sessionScope.user}">
											<th class="col-md-1" id="bid">입찰여부</th>
											<th class="col-md-1" id="bidcnt">입찰수</th>
										</c:if>
									</tr>
								</thead>
	
								<tbody id="table">
								<c:set var="i" value="0" />
									<c:forEach var="auction" items="${list}">
										<c:set var="i" value="${i+1}" />									
										<tr>
											<td >${ ((resultPage.currentPage)*(resultPage.pageSize)) - (resultPage.pageSize - i) }</td>
											<td>${auction.model}</td>
											<td>
											<a href="getAuctionView.do?auctionNo=${auction.auctionNo }">${auction.title}</a>
											<c:choose>
												<c:when test="${toDay == auction.regDate}">
													&nbsp;&nbsp;
													<span class="label label-danger">new</span>
												</c:when>
												<c:otherwise>
											    </c:otherwise>
											</c:choose>
											</td>
											<td>${auction.user.userName}</td>
											<td>${auction.regDate}
											<%-- <c:choose>
												<c:when test="${toDay == auction.regDate}">
													<fmt:formatDate value="${auction.regDate}" pattern="MM-dd hh:mm"/>													
												</c:when>
												<c:otherwise>
													<fmt:formatDate value="${auction.regDate}" pattern="YYYY-MM-dd"/>													
											    </c:otherwise>
											</c:choose> --%>
											</td>
																						
											 <td>
												<c:if test="${!empty auction.successCar && (auction.successCar) eq '0'}">
													<button type="button" class="btn btn-primary">경매중</button>
												</c:if>
												<c:if test="${!empty auction.successCar && !( (auction.successCar) eq '0')}">
													<button type="button" class="btn btn-danger">경매종료</button>
												</c:if>
											</td>
											
										    <c:if test="${!empty sessionScope.user}">
												<td>
													<c:if test="${!empty auction.su && (auction.su) eq 0}">
														
													</c:if>
													<c:if test="${!empty auction.su && (auction.su) != 0}">
														<button type="button" class="btn btn-primary">입찰</button>
													</c:if>
													</td>
												<td>${auction.bidCnt}</td>
											</c:if>
											
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
						
	




	<script src="js/bootstrap-slider.js"></script>

</body>
</html>