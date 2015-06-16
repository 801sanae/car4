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
${auctionList[0].auctionListNo }<!--  1번 Table 시작  -->
<div class="container-fluid" id="#container-info">
		<div class="row">
			<div class="col-lg-12 toggle-header" align="center">구매상세정보</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<img src="img/${auction.manuCo }/${auction.model }.jpg" style="width: 100%;">
			</div>
			<div class="col-md-8">
			<button type="button" class="btn btn-success">차량정보</button>
			<br>
				<table class="table table-hover" style="text-align:center; height: 235px">
						<tr>
						<br>
							<td width="15%">제조사</td>
							<td>${auction.manuCountry}</td> <!-- Action만 넣으삼 -->
						</tr>
						<tr>
							<td>모델</td>
							<td>${auction.model }</td> <!-- Action 값만 넣으삼 -->
						</tr>
						<tr>
							<td>연식</td>
							<td>${auction.year }</td> <!-- Action 값만 넣으삼 -->
						</tr>
						<tr>
							<td>연료</td>
							<td>${auction.fuel }</td> <!-- Action 값만 넣으삼 -->
						</tr>
						<tr>
						
							<td>주행거리</td>
							<td>${auction.mileage }</td> <!-- Action 값만 넣으삼 -->
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
		<td class="ct_list_b">현재상태</td>
			
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
			<td align="left"><fmt:formatNumber type="currency" currencySymbol="￦" value="${auctionList.bidPrice }"/></td>
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
			<td align="left">${empty auctionList.bidCarNo.tranCode ? "안팔림" : "팔림"  }</td>
		
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
			<a class="btn btn-primary col-md-2 col-md-offset-10 col-xs-12" href="auctionInfo.do?auctionNo=${auction.auctionNo}">
		경매 참여하기</a>	
			</c:if>
</div>
</div><!-- Container 끝 -->
<br><br>

</div>
</body>
</html>