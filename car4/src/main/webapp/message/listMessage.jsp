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
		document.detailForm.submit();
	}
</script>

<script>
	$('.dropdown-toggle').dropdown();
</script>

<script language="javascript">
	function OpenWindow() {
		window.open("message/message.jsp", "_blank",
						"top=250,left=600,width=470,height=240,resizable=1,scrollbars=no");
	}
</script>
</head>
<body>
	<div class="container">
		<form name="detailForm" action="listMessage.do" method="post">
			<!-- search/orderby -->
			<div class="row">

				<!-- 역경매 게시글 리스트 -->
				<div class="col-md-12">
					<div class="row">
						<div class="table-responsive">
							<table id="mytable" class="table table-bordred table-striped">

								<thead>
									<tr>
										<th class="col-sm-1" id="name">No</th>
										<th class="col-sm-1" id="name">보낸이</th>
										<th class="col-sm-3" id="contents" align="center">내용</th>
										<th class="col-sm-1" id="regDate">보낸시간</th>
									</tr>
								</thead>

								<tbody id="table">
									<c:set var="i" value="0" />
									<c:forEach var="message" items="${list}">
										<c:set var="i" value="${i+1}" />
										<tr>
											<td>${ ((resultPage.currentPage)*(resultPage.pageSize)) - (resultPage.pageSize - i) }</td>
											<td>${message.temp}</td>
											<td><c:if test="${message.tranCode eq '1'}">
													<b><a
														href="getMessage.do?messageNo=${message.messageNo}&userName=${message.temp}&userNo=${message.sendUser}">${message.contents}</a></b>
												</c:if> <c:if test="${message.tranCode eq '2'}">
													<a
														href="getMessage.do?messageNo=${message.messageNo}&userName=${message.temp}&userNo=${message.sendUser}">${message.contents}</a>
												</c:if></td>
											<td>${message.regDate}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

							<!-- 페이지네이션 -->
							<input type="hidden" id="currentPage" name="currentPage" value="" />

							<div class="clearfix"></div>
							<ul class="pagination pull-right">
								<!-- 아무기능없는 이전버튼 -->
								<c:if test="${ resultPage.currentPage <= resultPage.pageUnit }">
									<li class="disabled"><span
										class="glyphicon glyphicon-chevron-left"> </span></li>
								</c:if>
								<!-- 페이지유닛수를 넘어갈때 링크기능이 있는 이전버튼 -->

								<c:if test="${ resultPage.currentPage > resultPage.pageUnit }">
									<li class="disabled"><a
										href="javascript:fncGetList('${ resultPage.currentPage-1}')">
											<span class="glyphicon glyphicon-chevron-left"> </span>
									</a></li>
								</c:if>

								<!-- 가운데 보여질 페이지들 -->
								<c:forEach var="i" begin="${resultPage.beginUnitPage}"
									end="${resultPage.endUnitPage}" step="1">
									<li><a href="javascript:fncGetList('${ i }');">${ i }
									</a></li>
								</c:forEach>
								<!-- 아무기능없는 다음버튼 -->
								<c:if test="${ resultPage.endUnitPage >= resultPage.maxPage }">
									<li><span class="glyphicon glyphicon-chevron-right">
									</span></li>
								</c:if>

								<!-- 페이지유닛수를 넘어갈때 링크기능이 있는 다음버튼 -->
								<c:if test="${ resultPage.endUnitPage < resultPage.maxPage }">
									<li><a
										href="javascript:fncGetList('${resultPage.endUnitPage+1}')">
											<span class="glyphicon glyphicon-chevron-right"> </span>
									</a></li>
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
	<script src="js/title.js"></script>
	<script src="js/bootstrap-slider.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

</body>
</html>