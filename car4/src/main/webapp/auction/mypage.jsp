<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <%--날짜 포맷 라이브러리 --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script>
	function conf(auctionNo) {
		if (confirm("삭제하겠습니까?")) {
			location.href = "deleteAuction.do?auctionNo=" + auctionNo;
		} else {
			history.go(1);
		}
	}
</script>

</head>
<body>

<jsp:include page="../nav.jsp"></jsp:include>
<br><br><br><br>


<div class="container">
<div class="row">
<div class="col-md-12">
<!-- mySellList -->
<h4>구매 리스트</h4>
<div class="row">
<div class="table-responsive">
<table class="table table-bordred table-striped" align="left">
<thead >
<%--
<td colspan="11" >전체  <%= resultPage.getTotalCount() %> 건수,현재 <%= resultPage.getCurrentPage() %> 페이지</td>--%>
<th colspan="11">전체 ${resultPage.totalCount } 건수, 현재
${resultPage.currentPage} 페이지</th>

</thead>
<thead align="center">
<th >No</td>
<th align="center">모델명</td>
<th >등록일</td>
<th >제목</td>
<th >낙찰여부</td>
<th align="center">삭제여부</th>
</thead>

<c:set var="i" value="0" />
<c:forEach var="auction" items="${auction}">
<c:set var="i" value="${i+1}" />
<tr align="left">
<td >${ i }</td>
<td >${auction.model }</td>
<td><fmt:formatDate value="${auction.regDate}" pattern="MM / dd"></fmt:formatDate>
</td>
<td ><a href="getAuctionView.do?auctionNo=${auction.auctionNo}">${auction.title } </td>
<td >
<c:if test="${auction.successCar == '0' }"><a type="button" class="btn btn-primary"
href="getAuctionView.do?auctionNo=${auction.auctionNo }">경매중</a></c:if>
<c:if test="${auction.successCar != '0' }"><button type="button" class="btn btn-danger"
disabled="disabled">낙찰</button></c:if>
</td>
<td>
									<a onclick="conf(${auction.auctionNo})"><span class="glyphicon glyphicon-trash"></span></a>
									</td>
</tr>
</c:forEach>
</table>
<!-- mySellList -->
</div>
</div>
</div>
</div>
</div>

</body>

</html>