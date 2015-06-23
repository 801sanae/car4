<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <%--날짜 포맷 라이브러리 --%>
<jsp:useBean id="toDay" class="java.util.Date" />


<%-- <%@ page import="java.util.List"  %>


<%@ page import="com.model2.mvc.common.Search" %>
<%@page import="com.model2.mvc.common.Page"%>
<%@page import="com.model2.mvc.common.util.CommonUtil"%>

<%
	List<ProductVO> list= (List<ProductVO>)request.getAttribute("list");
	Page resultPage=(Page)request.getAttribute("resultPage");
	
	Search search = (Search)request.getAttribute("search");
	//==> null 을 ""(nullString)으로 변경
	String searchCondition = CommonUtil.null2str(search.getSearchCondition());
	String searchKeyword = CommonUtil.null2str(search.getSearchKeyword());
	//if(search.getSearchKeyword()==null) search.setSearchKeyword("");
%>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/info.css" rel="stylesheet">

<script type="text/javascript">
	
function fncGetProductList(currentPage){
	document.getElementById("currentPage").value = currentPage;
	document.detailForm.submit();
}
</script>
<script type="text/javascript">
	function pageMove(){
		alert("차량 등록을 완료하셔야 경매 참여 가능합니다.");
	}
</script>

<style>
th {
    border: 1px solid black;
    border-collapse: collapse;
    background-color: white;
    vertical-align: middle;
}
td, tr {
    padding: 3px;
    vertical-align: middle;
}
</style>

<title>Insert title here</title>
</head>
<body>
<fmt:formatDate value="${toDay}" pattern="yyyy-MM-dd" var="toDay"/> <%--${toDay} 값에 toDay 세팅 var 지우면 toDay확인가능 --%>
<jsp:include page="../nav.jsp"></jsp:include>
<br><br><br><br>
<div class="container">
<!--  1번 Table 시작  -->
<div class="container-fluid" id="#container-info">
		<div class="row">
			<div class="col-lg-12 toggle-header" align="center">구매상세정보</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<img src="img/${auction.manuCo }/${auction.model }.jpg" style="width: 100%;">
			</div>
			<div class="col-md-8">
	
				<table class="table table-hover" style="text-align:center; height: 235px">
						<tr>
					
							<td width="15%">차량명</td>
							<td>${auction.manuCountry} > ${auction.manuCo} > ${auction.model } </td> <!-- Action만 넣으삼 -->
						</tr>
						<tr>
							<td>연료</td>
							<td>${auction.fuel }</td> <!-- Action 값만 넣으삼 -->
						</tr>
						<tr>
							<td>변속기</td>
							<td>${auction.transmission}</td> <!-- Action 값만 넣으삼 -->
						</tr>
						
						<c:set var="year" value="${auction.year}" />
						
						<tr>
							<td>주행거리&nbsp;&nbsp;|&nbsp;&nbsp;연식 </td>
							<td>${auction.mileage} km&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;${fn:substring(year,0,2)}년 ${fn:substring(year,2,4)}월 ~  ${fn:substring(year,5,7)}년 ${fn:substring(year,7,9)}월<td> <!-- Action 값만 넣으삼 -->
						</tr>
						<tr>
							<td>설명글</td>
							<td>${auction.carDetail}</td> <!-- Action 값만 넣으삼 -->
						</tr>
				
				</table>
				<!-- <div id="list">차량종류</div>
				<div id="list">브랜드명</div>
				<div id="list">모델명</div>
				<div id="list">색상</div>
				<div id="list2">연식</div>
				 -->
			</div>
		</div>
	</div>
<!--  1번 Table 끝  -->

<hr/>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>
		<%--
		<td colspan="11" >전체  <%= resultPage.getTotalCount() %> 건수,	현재 <%= resultPage.getCurrentPage() %> 페이지</td>--%>
		<td colspan="11" >
			전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
		</td>
	
	</tr>
	<tr>
		<td class="ct_list_b" width="100" align="center">No</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">상품명</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">가격</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150">등록일</td>
		<td class="ct_line02"></td>
		<td class="ct_list_b" width="150"></td>
		
		
			
	</tr>
	<tr>
		<td colspan="11" bgcolor="808285" height="1"></td>
	</tr>

	<c:set var="i" value="0" />
	<c:forEach var="auctionList" items="${auctionList}">
		<c:set var="i" value="${i+1}" />
		<fmt:formatDate value="${auctionList.bidRegDate}" pattern="yyyy-MM-dd" var="auctionDay"/>
		<tr class="ct_list_pop">
			<td align="center">${ i }</td>
			<td align="center"></td>
			<c:if test="${user.userNo eq auction.user.userNo}">
				<td><a href="getSeller.do?auctionNo=${auctionList.bidAuctionNo.auctionNo}&carNo=${auctionList.bidCarNo.carNo}">
					${auctionList.bidCarNo.model}</a></td>	
			</c:if>
			
			<c:if test="${user.userNo != auction.user.userNo}">
				<td>${auctionList.bidCarNo.model}</td>	
			</c:if>
		
		
		
		
		
				
			<td align="left"></td>
			<td align="left">
			
			
			<!-- bidPrice보여주기 -->
			
			<!-- 등록자가 아닌 사람&자기차 제외 입찰가격 못보기  -->
			<c:if test="${user.userNo != auction.user.userNo && auctionList.bidCarNo.user.userNo != user.userNo }">
			
				<!-- *로 바꿔 넣기 -->
				<c:set var="bidPrice">${auctionList.bidPrice}</c:set> <!-- 숫자를 문자로 변환하는 식 -->
				<c:set var="bpf" value=""/>
	
				<c:forEach var="i"  begin="1" end="${fn:length(bidPrice)-2}" step="1">
	
					<c:set var="bpf" value="${bpf}*"/>			
				</c:forEach>

				<fmt:formatNumber type="currency" currencySymbol="￦" value="${fn:substring(bidPrice,0,2)}"/>${bpf}
			</c:if>
			<!-- /등록자가 아닌 사람이 가격보기 -->
			
			<!-- 등록자&입찰자(자기가격)만 가격보기 -->
			<c:if test="${user.userNo eq auction.user.userNo || auctionList.bidCarNo.user.userNo eq user.userNo}">
			<fmt:formatNumber type="currency" currencySymbol="￦" value="${auctionList.bidPrice}"/>
			</c:if>
			<!-- /등록자만 가격보기 -->
			
			<!-- /bidPrice보여주기 -->
			</td>
			<td align="left"></td>
			<td align="left">
				<c:choose>
					<c:when test="${toDay < auctionDay}">
 						<fmt:formatDate value="${auctionList.bidRegDate}" pattern="MM-dd hh:mm"/>
     				</c:when>
					<c:otherwise>
        				<fmt:formatDate value="${auctionList.bidRegDate}" pattern="YYYY-MM-dd"/>
    				</c:otherwise>
				</c:choose>
			</td>		
			<td align="left"></td>
			<td align="left">
				<c:if test="${!empty (auctionList.bidCarNo.carNo) && (auctionList.bidCarNo.carNo) != (auction.successCar)}">
				</c:if>
				<c:if test="${!empty (auctionList.bidCarNo.carNo) && (auctionList.bidCarNo.carNo) == (auction.successCar)}">
					<span class="label label-warning">낙찰</span>

				</c:if>
			</td>

		</tr>
		
		<tr>
		<td colspan="11" bgcolor="D6D7D6" height="1"></td>
		</tr>
		
	</c:forEach>	
</table>

<!-- PageNavigation Start... -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top:10px;">
	<tr>
		<td align="center">
		   <input type="hidden" id="currentPage" name="currentPage" value=""/>
		<%--	<% if( resultPage.getCurrentPage() <= resultPage.getPageUnit() ){ %>
					◀ 이전
			<% }else{ %>
					<a href="javascript:fncGetProductList('<%=resultPage.getCurrentPage()-1%>')">◀ 이전</a>
			<% } %>

			<%	for(int i=resultPage.getBeginUnitPage();i<= resultPage.getEndUnitPage() ;i++){	%>
					<a href="javascript:fncGetProductList('<%=i %>');"><%=i %></a>
			<% 	}  %>
	
			<% if( resultPage.getEndUnitPage() >= resultPage.getMaxPage() ){ %>
					이후 ▶
			<% }else{ %>
					<a href="javascript:fncGetProductList('<%=resultPage.getEndUnitPage()+1%>')">이후 ▶</a>
			<% } %> --%>
			<%--<jsp:include page="../common/pageNavigator1.jsp"/>--%>
	<c:if test="${ resultPage.currentPage <= resultPage.pageUnit }">
			◀ 이전
	</c:if>
	<c:if test="${ resultPage.currentPage > resultPage.pageUnit }">
			<a href="javascript:fncGetProductList('${ resultPage.currentPage-1}')">◀ 이전</a>
	</c:if>
	
	<c:forEach var="i"  begin="${resultPage.beginUnitPage}" end="${resultPage.endUnitPage}" step="1">
		<a href="javascript:fncGetProductList('${ i }');">${ i }</a>
	</c:forEach>
	
	<c:if test="${ resultPage.endUnitPage >= resultPage.maxPage }">
			이후 ▶
	</c:if>
	<c:if test="${ resultPage.endUnitPage < resultPage.maxPage }">
			<a href="javascript:fncGetProductList('${resultPage.endUnitPage+1}')">이후 ▶</a>
	</c:if>
    	</td>
	</tr>
</table>
<!-- PageNavigation End... -->

<div class="row">
<c:if test="${user.userNo eq auction.user.userNo}">	
</c:if>
			<c:if test="${user.userNo != auction.user.userNo}">
				<c:if test="${auction.successCar ==0}">
				<c:choose>
				<c:when test="${car.carNo !=null }">
				<a class="btn btn-primary col-md-2 col-md-offset-10 col-xs-12" href="auctionInfo.do?auctionNo=${auction.auctionNo}">
					경매 참여하기</a>
				</c:when>
				<c:when test="${car.carNo == null }">
					<a class="btn btn-primary col-md-2 col-md-offset-10 col-xs-12" onclick="pageMove()" >
					경매 참여하기</a>
				</c:when>	
				</c:choose>
				
				</c:if>
				<c:if test="${auction.successCar != 0}">
				</c:if>
			</c:if>
</div>
</div><!-- Container 끝 -->
<br><br>

</div>
</body>
</html>