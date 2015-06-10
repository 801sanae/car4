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
    <!-- Second nav
    bar for categories -->
    <div class="row">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="col-md-8" style="margin-top: 25px; margin-bottom: 25px;">

        <a href="../index.jsp" style="font-size: 50px; padding-left: 20px;">Car4</a>
      </div>

      <div class="col-md-4"
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
            환영합니다.||</a>
          <a style="color: gray" href="../logout.do">로그아웃</a>
        </c:if>
        <!-- Login 클릭 -->
          
                
        <!--  Login 창 띄우기 -->
        <jsp:include page="/user/login.jsp"></jsp:include>
        <!--  Login 창 띄우기 -->
        
        
      </div>
    </div>
  </div>
  <!--/header End  -->


 <!-- nav bar  -->
    <jsp:include page="nav.jsp"></jsp:include>
  <!--  nav end -->
  
  <!-- 역경매 게시글 리스트 -->
  <div class="container">
    <div class="col-md-12">
      <form name="detailForm" action="" method="post">
      
          
          <h4>판매리스트</h4>
          <div class="row">
            <div class="table-responsive">
              <table id="mytable" class="table table-bordred table-striped">
                <thead>
                  <th id="no">No</th>
                  <th id="carNum">차량번호</th>
                  <th id="title">제조국</th>
                  <th id="id">제조사</th>
                  <th id="regDate">모델명</th>
                  
                  <th id="cnt">조회수</th> 
                  <th id="tranCode">경매진행상태</th>
                  <th id="bid">입찰여부</th>
                  <th id="bidcnt">입찰수</th>
                </thead>
  
                <tbody id="table">
                <c:set var="i" value="0" />
                  <c:forEach var="car" items="${list}">
                    <c:set var="i" value="${i+1}" />                  
                    <tr>
                      <td>${ ((resultPage.currentPage)*(resultPage.pageSize)) - (resultPage.pageSize - i) }</td>
                      <td><a href="getCars.do?carNo=${car.carNo}" >${car.carNum}</a></td>
                                        
                      <td>${car.manuCountry}</td>
                      <td>${car.manuCo}</td>
                      <td>${car.model}</td>
                      
                      <td>cnt</td>
                      
                       <%-- <td>
                        <c:if test="${!empty auction.tranCode && auction.tranCode eq '0'}">
                          <button type="button" class="btn btn-primary">경매중</button>
                        </c:if>
                        <c:if test="${!empty auction.tranCode && auction.tranCode eq '1'}">
                          <button type="button" class="btn btn-danger">경매종료</button>
                        </c:if>
                      </td>
                      <td>
                        <c:if test="${!empty auction.bid && auction.bid eq '0'}">
                          -
                        </c:if>
                        <c:if test="${!empty auction.bid && auction.bid eq '1'}">
                          <button type="button" class="btn btn-primary">입찰</button>
                        </c:if>
                        </td>
                      <td>bidcnt</td> --%>
                      
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