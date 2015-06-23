<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <%--날짜 포맷 라이브러리 --%>

 
<!DOCTYPE html>
<html>
<head>
   

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script>
	function conf(carNo) {
		if (confirm("삭제하겠습니까?")) {
			location.href = "deleteCar.do?carNo=" + carNo;
		} else {
			history.go(1);
		}
	}
</script>

 <script type="text/javascript">

 function fncGetList(currentPage) {
   document.getElementById("currentPage").value = currentPage;
     document.detailForm.submit();  
}
 
//collapse 클릭했을 때 아이콘모양 변경

$(document).ready(function() {
	$("button").click(function (event) {
	
		var str = '#'+event.target.id;
		/* if( $("#bidList").legnth ) */
				
		
		if($(str+"  >  i").hasClass('glyphicon-chevron-down'))
			{
				console.log(str);
			    $(this).html('<i class="glyphicon glyphicon-chevron-up"></i>'); 
			}
		else
			{      
				console.log(str);
			    $(this).html('<i class="glyphicon glyphicon-chevron-down"></i>'); 
			}
	});
}); 

</script>
</head>
<body>
<jsp:include page="../nav.jsp"></jsp:include>
  <br><br><br><br>



  <!-- ì­ê²½ë§¤ ê²ìê¸ ë¦¬ì¤í¸ -->
  <div class="container">
    <div class="col-md-12">
      <form name="detailForm" action="" method="post">
     
         
          <h4>내 차 목록</h4>
          <div class="row">
            <div class="table-responsive">
              <table id="mytable" class="table">
                <thead>
                  <th class="col-md-1" id="no">No</th>
                  <th class="col-md-2" id="carNum">차량번호</th>
                  <th class="col-md-2" id="title">제조국</th>
                  <th class="col-md-2" id="id">제조사</th>
                  <th class="col-md-2" id="regDate">모델명</th>
                  <th class="col-md-2">낙찰여부</th>				
				  <th class="col-md-2">삭제여부</th>			
                </thead>
 
                <tbody id="table">
                <c:set var="i" value="0" />
                  <c:forEach var="car" items="${myCarList}">
                    <c:set var="i" value="${i+1}"/>
                  
                    <tr style="background-color:#f9f9f9;">
                      <td>${ ((resultPage.currentPage)*(resultPage.pageSize)) - (resultPage.pageSize - i) }</td>
                      <td><a href="getCars.do?carNo=${car.carNo}" >${car.carNum}</a></td>
                                       
                      <td><c:if test="${!empty (car.manuCountry) &&car.manuCountry eq '2-1'}">
                      	  국산차
                      	  </c:if>
                      	  <c:if test="${!empty (car.manuCountry) &&car.manuCountry eq '2-2'}">
                      	  수입차
                      	  </c:if>
                      	  </td>
                      <td>${car.manuCo}</td>
                      <td>${car.model}</td>
                      <td><a onclick="conf(${car.carNo})"><span
												class="glyphicon glyphicon-trash"></span></a></td>
                      <td>
            			  <c:if test="${!empty (car.tranCode) && (car.tranCode).trim() != '0' }">
                     	  <button type="button" class="btn btn-primary">낙찰</button>
                     	  </c:if>
                     	  <c:if test="${!empty (car.tranCode) && (car.tranCode).trim() eq '0' }">
                     	 
                     	  </c:if>
                     	</td>
                    
                    	<td>
                    	<c:set var="temp">${i-1}</c:set>
                        <button type="button" class="btn btn-primary btn-sm hidden-xs" data-toggle="collapse" id="${car.carNo}" data-target=".${car.carNo}"
                        	<c:if test="${empty bidMapAll.get(temp)}" > disabled </c:if> >
                          <i class="glyphicon glyphicon-chevron-down"></i>
                                      
                          </button>
                         		
                        </td>
           
                    
                    	</tr>
						
						
						<c:if test="${!empty bidMapAll.get(temp)}">
	                 	<tr class="${car.carNo} collapse" id="th" >
		                	<th class="col-md-1">No</th>
		                	<th class="col-md-1">제목</th>
		                	<th class="col-md-1">이름</th>
		            		<th class="col-md-1">경매번호</th>
		                	<th class="col-md-1">등록일</th>
		                	<th class="col-md-1">경매진행상태</th>
		                	<th class="col-md-1">입찰가격</th>
	              		</tr>
	              		</c:if>
	              		
						<c:set var="j" value="0"/>
                   		<c:forEach var="auctionList" items="${bidMapAll.get(temp)}">
                   		<c:set var="j" value="${j+1}"/>
   
	                 	<tr class="${car.carNo} collapse" id="bidList">
	                 	
	                 		<c:if test="${auctionList.bidAuctionNo.successCar == car.carNo}">
		              			<th style="color:red;">${j}</th>
		              			<th><a href="getAuctionView.do?auctionNo=${auctionList.bidAuctionNo.auctionNo}" style="color:red;">${auctionList.bidAuctionNo.title}</a></th>
			             		<th style="color:red;">${auctionList.bidAuctionNo.mon}</th>	              	
			                	<th style="color:red;">${auctionList.bidAuctionNo.auctionNo}</th>
			                	<th style="color:red;">
			                		<fmt:formatDate value="${auctionList.bidRegDate}" pattern="YYYY-MM-dd" />
								</th>
			                	<th style="color:red;">
				                	<c:if test="${auctionList.bidAuctionNo.successCar == 0}">
				                	경매중
				                	</c:if>
				                	<c:if test="${auctionList.bidAuctionNo.successCar != 0}">
				                	경매종료
				                	</c:if>
			                	</th> 
			                	<th style="color:red;">${auctionList.bidPrice}</th> 
		                	</c:if>
		                	
		                	<c:if test="${auctionList.bidAuctionNo.successCar eq 0}">
		              			<th>${j}</th>
		              			<th><a href="getAuctionView.do?auctionNo=${auctionList.bidAuctionNo.auctionNo}">${auctionList.bidAuctionNo.title}</a></th>
			             		<th>${auctionList.bidAuctionNo.mon}</th>	              	
			                	<th>${auctionList.bidAuctionNo.auctionNo}</th>
			                	<th>
								<fmt:formatDate value="${auctionList.bidRegDate}" pattern="YYYY-MM-dd" />
								</th>
			                	<th>
				                	<c:if test="${auctionList.bidAuctionNo.successCar == 0}">
				                	경매중
				                	</c:if>
				                	<c:if test="${auctionList.bidAuctionNo.successCar != 0}">
				                	경매종료
				                	</c:if>
			                	</th> 
			                	<th>${auctionList.bidPrice}</th> 
		                	</c:if>
		               	
	              		</tr>
	              		
	              		
	              		</c:forEach>         	
	              	
	              	</c:forEach>
                </tbody>
 
              </table>
              
              
 
 
          <!-- íì´ì§ë¤ì´ì
 -->
                 <input type="hidden" id="currentPage" name="currentPage" value=""/>
         
              <div class="clearfix"></div>
                 <ul class="pagination pull-right">
            <!-- ìë¬´ê¸°ë¥ìë ì´ì ë²í¼ -->
                <c:if test="${ resultPage.currentPage <= resultPage.pageUnit }">
                  <li class="disabled">
                    <span class="glyphicon glyphicon-chevron-left">
                    </span>
                  </li>
                </c:if>
            <!-- íì´ì§ì ëìë¥¼ ëì´ê°ë ë§í¬ê¸°ë¥ì´ ìë ì´ì ë²í¼ -->
                
                <c:if test="${ resultPage.currentPage > resultPage.pageUnit }">
                  <li class="disabled">
                    <a href="javascript:fncGetList('${ resultPage.currentPage-1}')">
                      <span class="glyphicon glyphicon-chevron-left">
                      </span>
                    </a>
                  </li>
                </c:if>
               
            <!-- ê°ì´ë° ë³´ì¬ì§ íì´ì§ë¤ -->
                <c:forEach var="i"  begin="${resultPage.beginUnitPage}" end="${resultPage.endUnitPage}" step="1">
                  <li>
                    <a href="javascript:fncGetList('${ i }');">${ i }
                    </a>
                  </li>
                </c:forEach>
            <!-- ìë¬´ê¸°ë¥ìë ë¤ìë²í¼ -->
                <c:if test="${ resultPage.endUnitPage >= resultPage.maxPage }">
                  <li>
                      <span class="glyphicon glyphicon-chevron-right">
                      </span>
                    </a>
                  </li>
                </c:if>
               
            <!-- íì´ì§ì ëìë¥¼ ëì´ê°ë ë§í¬ê¸°ë¥ì´ ìë ë¤ìë²í¼ -->
                <c:if test="${ resultPage.endUnitPage < resultPage.maxPage }">
                  <li>
                    <a href="javascript:fncGetList('${resultPage.endUnitPage+1}')">
                    <span class="glyphicon glyphicon-chevron-right">
                    </span>
                  </li>
                </c:if>
              </ul>
          <!-- /íì´ì§ë¤ì´ì
 -->
             
            </div>
          </div>
         
          </form>
         
        </div>
      </div>
 
  <!-- /ì­ê²½ë§¤ ê²ìê¸ ë¦¬ì¤í¸ -->
 
 
 


</body>
</html>