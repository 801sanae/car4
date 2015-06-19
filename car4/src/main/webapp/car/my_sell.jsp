<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 
<!DOCTYPE html>
<html>
<head>
   <jsp:include page="/common/attribute.jsp"></jsp:include>

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
    <!-- Second nav
    bar for categories -->
    <div class="row">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="col-md-8" style="margin-top: 25px; margin-bottom: 25px;">

        <a href="../index.jsp" style="font-size: 50px; padding-left: 20px;">Car4</a>
      </div>

      <div class="col-md-4"
        style="margin-top: 10px; padding-left: 100px; color: pink">
           
           
        <!-- Login í´ë¦­ --> 
        <c:if test="${ empty user }">
                    <a style="color: gray" data-toggle="modal" data-target="#modalLogin">
            Login</a>
        <!--  íìê°ì
 ì°½ ëì°ê¸° -->
          <jsp:include page="/user/register.jsp"></jsp:include>
        <!--  íìê°ì
 ì°½ ëì°ê¸° -->
        </c:if>
         <c:if test="${!empty sessionScope.user && (user.role) eq 'user' }">
          <a style="color: gray" href="user/getUser.jsp"> ${user.userName}ë
            íìí©ëë¤.||</a>
          <a style="color: gray" href="../logout.do">ë¡ê·¸ìì</a>
        </c:if>
        <!-- Login í´ë¦­ -->
         
               
        <!--  Login ì°½ ëì°ê¸° -->
        <jsp:include page="/user/login.jsp"></jsp:include>
        <!--  Login ì°½ ëì°ê¸° -->
       
       
      </div>
    </div>
  </div>
  <!--/header End  -->


 <!-- nav bar  -->
   
  <!--  nav end -->
 
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
                  <th class="col-md-3" id="carNum">차량번호</th>
                  <th class="col-md-2" id="title">제조국</th>
                  <th class="col-md-2" id="id">제조사</th>
                  <th class="col-md-2" id="regDate">모델명</th>
                  <th class="col-md-2">낙찰여부</th>				

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
                      <td>
            			  <c:if test="${!empty (car.tranCode) && (car.tranCode).trim() != '0' }">
                     	  <button type="button" class="btn btn-primary">낙찰</button>
                     	  </c:if>
                     	  <c:if test="${!empty (car.tranCode) && (car.tranCode).trim() eq '0' }">
                     	 
                     	  </c:if>
                     	</td>
                    
                    	<td>
                        <button type="button" class="btn btn-primary btn-sm hidden-xs" data-toggle="collapse" id="${car.carNo}" data-target=".${car.carNo}">
                                        <i class="glyphicon glyphicon-chevron-down"></i>
                                        <!-- <i class="glyphicon glyphicon-chevron-up"></i> -->
                                        
                          </button>
                        </td>
           
                    
                    	</tr>
						<c:set var="temp">${i-1}</c:set>
						
						<c:if test="${empty bidMapAll.get(temp)}">
						</c:if>
						<c:if test="${!empty bidMapAll.get(temp)}">
	                 	<tr class="${car.carNo} collapse" id="th" >
		                	<th class="col-md-1">No</th>
		                	<th class="col-md-1">제목</th>
		                	<th class="col-md-1">이름</th>
		            		<th class="col-md-1">경매번호</th>
		                	<th class="col-md-1">등록일</th>
		                	<th class="col-md-1">입찰가격</th>
	              		</tr>
	              		</c:if>
	              		
						<c:set var="j" value="0"/>
                   		<c:forEach var="auctionList" items="${bidMapAll.get(temp)}">
                   		<c:set var="j" value="${j+1}"/>
   
	                 	<tr class="${car.carNo} collapse" id="bidList">
	                 	
	                 		<c:if test="${auctionList.bidAuctionNo.successCar != 0}">
	              			<th style="color:red;">${j}</th>
	              			<th style="color:red;">${auctionList.bidAuctionNo.title}</th>
		             		<th style="color:red;">${auctionList.bidAuctionNo.mon}</th>	              	
		                	<th style="color:red;">${auctionList.bidAuctionNo.auctionNo}</th>
		                	<th style="color:red;">${auctionList.bidRegDate}</th>
		                	<th style="color:red;">${auctionList.bidPrice}</th> 
		                	</c:if>
		                	<c:if test="${auctionList.bidAuctionNo.successCar eq 0}">
	              			<th>${j}</th>
	              			<th>${auctionList.bidAuctionNo.title}</th>
		             		<th>${auctionList.bidAuctionNo.mon}</th>	              	
		                	<th>${auctionList.bidAuctionNo.auctionNo}</th>
		                	<th>${auctionList.bidRegDate}</th>
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