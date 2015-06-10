<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>

<link href="css\bootstrap.css" rel="stylesheet">
<link href="css\bootstrap-theme.min.css" rel="stylesheet">
<link href="css\sell.css" rel="stylesheet">
<!-- image upload -->
<link href="css\jasny-bootstrap.css" rel="stylesheet">
<link href="css\jasny-bootstrap.css.map" rel="stylesheet">
<script src="https://code.jquery.com/jquery.js"></script>
<script src="js\sell-title2.js"></script>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
   src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<!--  <script src="js/sell.js"></script>-->
<script src="js/jasny-bootstrap.min.js"></script>


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
               <a style="color: gray" data-toggle="modal"
                  data-target="#modalLogin"> Login</a>
               <!--  회원가입 창 띄우기 -->
               <jsp:include page="/user/register.jsp"></jsp:include>
               <!--  회원가입 창 띄우기 -->
            </c:if>
            <c:if test="${!empty sessionScope.user && (user.role) eq 'user' }">
               <a style="color: gray" href="user/getUser.jsp">
                  ${user.userName}님 환영합니다.||</a>
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

   <!--  다섯번째 시작  -->
   <form class="form-horizontal" role="form" id="" action="updateCar.do" method="post" enctype="multipart/form-data">
   <div class="container">
      <div class="container-fluid">
            <div class="row">
               <div class='list-group gallery form-group'>
         
                  <div class="row">

                     <hgroup class="mb20">
                        <h1>판매자 등록</h1>
                        <h2 class="lead">
                           <strong class="text-danger">!</strong> 판매자 등록페이지 확인 <strong
                              class="text-danger">상세정보</strong>
                        </h2>
                     </hgroup>

                  <div class="col-xs-12 col-sm-12 col-md-12">
                     <h3>
                        <a href="#" title="">차량 세부 사항</a>
                     </h3>



                     <div class="row">


                        <div class="form-group">
                           <label class="control-label col-md-1">차량번호 |</label>

                           <div class="col-md-2">
                              <input type="text" class="form-control" id="carNum"
                                 name="carNum" placeholder="입력" value="${car.carNum }">
                    <input type="hidden" class="form-control" id="" name="carNo" value="${car.carNo }" />
                           </div>

                           <input type="checkbox" class="checkthis" />&nbsp;임시번호/직수입등록
                        </div>

                        <!-- message DIV  -->
                        <div class="form-group">
                           <div class=" col-md-12">

                              <!-- carNummessage 보여줄 곳  -->
                              <div id="carNummessage" class="col-md-offset-1"
                                 style="font-size: 12px; padding-left: 8px; margin-top: -1%; display: none;">
                              </div>

                           </div>
                        </div>
               
                        <!-- /message DIV  -->



                        <!-- 차량명 선택 리스트 -->
                        <div class="form-group">
                           <label class="control-label col-md-1" for="phone">차량명 |</label>

                           <!-- '제조국' 선택 리스트  -->
                           <div class="col-md-2">

                              <select class="form-control country" id="list1"
                                 name="manuCountry">
                                 <option>${car.manuCountry }</option>
                                 <option value="2-1">국산차</option>
                                 <option value="2-2">수입차</option>
                              </select>
                           </div>
                           <!-- /'제조국' 선택 리스트  -->
                           
                           <!-- '제조사' 선택 리스트  -->
                           <div class="col-md-2">

                              <select class="form-control company" id="list2" name="manuCo">

                                 <option>${car.manuCo }</option>
                                 <!-- 국내차 -->
                                 <option class="list2-1" value="hyundai">현대</option>
                                 <option class="list2-1" value="kia">기아</option>
                                 <option class="list2-1" value="chevolet">쉐보레</option>
                                 <!-- /국내차 -->

                                 <!-- 수입차 -->
                                 <option class="list2-2" value="bmw">bmw</option>
                                 <option class="list2-2" value="audi">아우디</option>
                                 <option class="list2-2" value="volkswagen">폭스바겐</option>
                                 <!-- /수입차 -->
                              </select>
                           </div>
                           <!-- /'제조사' 선택 리스트  -->


                           <!-- '모델명' 선택 리스트  -->
                           <div class="col-md-2">


                              <select class="form-control" id="list3" name="model">
                                 <option id="model_basic">${car.model }</option>

                                 <!-- hyundai -->
                                 <option class="list3-hyundai" value="sonata">쏘나타</option>
                                 <option class="list3-hyundai" value="grandeur">그랜져</option>
                                 <option class="list3-hyundai" value="avante">아반떼</option>
                                 <!-- /hyundai -->

                                 <!-- kia -->
                                 <option class="list3-kia" value="carnival">카니발</option>
                                 <option class="list3-kia" value="porte">포르테</option>
                                 <option class="list3-kia" value="morning">모닝</option>
                                 <!-- /kia -->

                                 <!-- bmw -->
                                 <option class="list3-bmw" value="320d">320d</option>
                                 <option class="list3-bmw" value="i3">i3</option>
                                 <option class="list3-bmw" value="i8">i8</option>
                              </select>
                              <!-- /bmw -->
                           </div>


                           <label class="control-label col-md-1">색상 |</label>

                           <!-- 색상 선택 리스트 -->
                           <div class="col-md-2">

                              <!-- basic -->
                              <select class="form-control" id="list4" name="color">
                                 <option id="color_option">${car.color }</option>
                                 <!-- /basic -->

                                 <!-- 소나타 -->
                                 <option class="list4-sonata" value="red">빨강</option>
                                 <option class="list4-sonata" value="orange">주황</option>
                                 <!-- /소나타 -->

                                 <!-- 카니발 -->
                                 <option class="list4-carnival" value="yellow">노랑</option>
                                 <option class="list4-carnival" value="green">초록</option>
                                 <!-- /카니발 -->

                                 <!-- 320d -->
                                 <option class="list4-320d" value="blue">파랑</option>
                                 <option class="list4-320d" value="pupple">보라</option>
                              </select>
                              <!-- /320d -->

                           </div>
                        </div>
                        
                        <!-- /자동차 선택 리스트 -->



                        <div class="form-group">
                           <label class="control-label col-md-1"> 연식 |</label>

                           <div class="col-sm-2">
                              <select class="form-control" name="year">

                                 <option>${car.year }</option>
                                 <%
                                    for (int i = 2015; i > 2000; i--) {
                                 %>
                                 <option value="<%=i%>"><%=i%></option>
                                 <%
                                    }
                                 %>

                              </select>
                           </div>
                           <div class="col-sm-2">
                              <select class="form-control" name="month">

                                 <option>월</option>
                                 <%
                                    for (int i = 1; i < 13; i++) {
                                 %>
                                 <option value="<%=i%>"><%=i%></option>
                                 <%
                                    }
                                 %>

                              </select>
                           </div>

                           <label class="control-label col-md-1 col-md-offset-2">형식년도
                              |</label>

                           <div class="col-md-2">
                              <select class="form-control" name="carYear">
                                 <option>${car.carYear }</option>
                                 <%
                                    for (int i = 2015; i > 2000; i--) {
                                 %>
                                 <option value="<%=i%>"><%=i%></option>
                                 <%
                                    }
                                 %>
                              </select>
                           </div>
                        </div>
                     


                        <div class="form-group">
                           <label class="control-label col-md-1" for="phone">변속기 |</label>

                           <div class="col-md-4">
                              <div class="col-md-5" style="margin-left: -3%;">
                                 <c:if test="${car.transmission=='자동' }">
                                    <input type="radio" name="transmission" value="자동" checked />&nbsp;자동 &nbsp;&nbsp; <input
                                       type="radio" name="transmission" value="수동" />&nbsp;수동
                           </c:if>
                                 <c:if test="${car.transmission=='수동' }">
                                    <input type="radio" name="transmission" value="자동" />&nbsp;자동 &nbsp;&nbsp; <input
                                       type="radio" name="transmission" value="수동" checked />&nbsp;수동
                           </c:if>
                              </div>
                           </div>

                           <label class="control-label col-md-1 col-md-offset-2"
                              for="phone">연료 |</label>

                           <div class="col-md-2">
                              <select class="form-control" name="fuel">

                                 <option>${car.fuel }</option>
                                 <option value="가솔린">가솔린</option>
                                 <option value="디젤">디젤</option>
                                 <option value="LPG">LPG</option>
                              </select>
                           </div>
                        </div>
               

                        <div class="form-group">
                           <label class="control-label col-md-1">배기량 |</label>



                           <div class="col-md-2">
                              <input type="text" class="form-control" id="tempcc"
                                 name="cc1" placeholder="입력"
                                 onkeyup="inputNumberFormat(this, 'cc')" value="${car.cc }" />

                              <input type="hidden" class="form-control" id="cc" name="cc" value="${car.cc }" />
                           </div>

                           <div class="col-md-1">CC</div>

                           <label class="control-label col-md-1 col-md-offset-3"
                              for="phone">주행거리 |</label>


                           <div class="col-md-2">
                              <input type="text" class="form-control" id="tempmileage"
                                 name="mileage1" placeholder="입력"
                                 onkeyup="inputNumberFormat(this, 'mileage')"
                                 value="${car.mileage}" /> <input type="hidden"
                                 class="form-control" id="mileage" name="mileage" value="${car.mileage}" />
                           </div>
                           <div style="margin-top: 1%;">Km</div>

                        </div>

                        <!-- message DIV  -->
                        <div class="form-group">
                           <div class=" col-md-12">

                              <!-- CCmessage 보여줄 곳  -->
                              <div id="CCmessage" class="col-md-offset-1"
                                 style="font-size: 12px; padding-left: 8px; margin-top: -1%; display: none;">
                              </div>
                              <!-- carNummessage 보여줄 곳  -->

                              <!-- Mileagemessage 보여줄 곳  -->
                              <div id="Mileagemessage" class="col-md-offset-3"
                                 style="font-size: 12px; padding-left: 43.5%; margin-top: -1.2%; display: none;">
                              </div>
                              <!-- carNummessage 보여줄 곳  -->

                           </div>
                        </div>
                        <!-- /message DIV  -->

                        <div class="form-group">
                           <label class="control-label col-md-1">판매구분 |</label>
                           <div class="col-md-4">
                              <c:if test="${car.sell=='일반차량' }">
                                 <input type="radio" name="sell" value="일반차량" checked />&nbsp;일반차량
                          &nbsp;&nbsp; <input type="radio" name="sell"
                                    value="리스승계차량" />&nbsp;리스승계차량
                          &nbsp;&nbsp; <input type="radio" name="sell"
                                    value="할부승계차량" />&nbsp;할부승계차량
                        </c:if>
                              <c:if test="${car.sell=='리스승계차량' }">
                                 <input type="radio" name="sell" value="일반차량" />&nbsp;일반차량
                          &nbsp;&nbsp; <input type="radio" name="sell"
                                    value="리스승계차량" checked />&nbsp;리스승계차량
                          &nbsp;&nbsp; <input type="radio" name="sell"
                                    value="할부승계차량" />&nbsp;할부승계차량
                         </c:if>
                              <c:if test="${car.sell=='할부승계차량' }">
                                 <input type="radio" name="sell" value="일반차량" />&nbsp;일반차량
                          &nbsp;&nbsp; <input type="radio" name="sell"
                                    value="리스승계차량" />&nbsp;리스승계차량
                          &nbsp;&nbsp; <input type="radio" name="sell"
                                    value="할부승계차량" checked />&nbsp;할부승계차량
                         </c:if>
                           </div>

                           <label class="control-label col-md-1 col-md-offset-2"
                              for="phone">사고여부 |</label>
                           <div class="col-md-2">
                              <c:if test="${car.accident=='무사고'}">
                                 <input type="radio" name="accident" value="무사고" checked />&nbsp;무사고
                          &nbsp;&nbsp; <input type="radio"
                                    name="accident" value="사고" />&nbsp;사고
                         </c:if>
                              <c:if test="${car.accident=='사고'}">
                                 <input type="radio" name="accident" value="무사고" />&nbsp;무사고
                          &nbsp;&nbsp; <input type="radio"
                                    name="accident" value="사고" checked />&nbsp;사고
                         </c:if>
                           </div>
                        </div>
                        


                        <div class="form-group">
                           <label class="control-label col-md-1">성능상태점검기록부 |</label>
                           <div class="col-md-4">
                              <button type="button" class="btn btn-default" name="perfor"
                                 style="margin-top: 2%;">&nbsp;&nbsp;&nbsp;첨부하기&nbsp;&nbsp;&nbsp;</button>
                           </div>

                           <!-- <label class="control-label col-md-1 col-md-offset-2"
                          for="phone">전문평가사 |</label>
                        <div class="col-md-2">
                          <input type="radio" name="professor" value="yes" checked />&nbsp;요청
                          &nbsp;&nbsp; <input type="radio" name="professor"
                            value="no" />&nbsp;미요청
                        </div> -->
                        </div>
                     </div>
                  </div>
               </div>
            </div>
      </div>
    
      <div class="row">
         <div class="col-md-12">
            <h3>차량옵션 선택</h3>
         </div>
      </div>
      <div class="row">
         <div class="col-md-12">

            <div class="panel-group" id="accordion">
               <div class="panel panel-default">
                  <div class="panel-heading">
                     <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion"
                           href="#collapse1" aria-expanded="false" class="collapsed">내/외장옵션</a>
                     </h4>
                  </div>
                  <div id="collapse1" class="panel-collapse collapse"
                     aria-expanded="false" style="height: 0px;">
                     <div class="panel-body">

                        <input id="powerWindow" type="checkbox" name="powerWindow" value="powerWindow"
                           <c:if test="${carOption.powerWindow=='powerWindow'}"> checked="checked" </c:if> />
                        <label for="powerWindow">파워윈도우</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="aircorn" type="checkbox" name="airCorn" value="airCorn"
                           <c:if test="${carOption.airCorn=='aircorn'}"> checked="checked" </c:if> />
                        <label for="aircorn">에어콘</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="fullAutoAircorn" type="checkbox" name="fullAutoAircorn" value="fullAutoAircorn"
                           <c:if test="${carOption.fullAutoAircorn=='fullAutoAircorn'}"> checked="checked" </c:if> />
                        <label for="fullAutoAircorn">풀오토에어콘</label>&nbsp;&nbsp;&nbsp;&nbsp;

                        <input id="leftRightAircorn" type="checkbox"
                           name="leftRightAircorn" value="${carOption.leftRightAircorn }"
                           <c:if test="${carOption.leftRightAircorn=='leftRightAircorn'}"> checked="checked" </c:if> />
                        <label for="leftRightAircorn">좌/우독립에어콘</label>&nbsp;&nbsp;&nbsp;&nbsp;

                        <input id="gajukSheet" type="checkbox" name="gajukSheet" value="${carOption.gajukSheet }"
                           <c:if test="${carOption.gajukSheet=='gajukSheet'}"> checked="checked" </c:if> />
                        <label for="gajukSheet">가죽시트</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="warmSheet" type="checkbox" name="warmSheet" value="${carOption.gajukSheet }"
                           <c:if test="${carOption.warmSheet=='warmSheet'}"> checked="checked" </c:if> />
                        <label for=warmSheet>열선시트</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="windSheet" type="checkbox" name="windSheet" value="${carOption.gajukSheet }"
                           <c:if test="${carOption.windSheet=='windSheet'}"> checked="checked" </c:if> />
                        <label for="windSheet">통풍시트</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="msgSheet" type="checkbox" name="msgSheet" value="${carOption.gajukSheet }"
                           <c:if test="${carOption.msgSheet=='msgSheet'}"> checked="checked" </c:if> />
                        <label for="msgSheet">마사지시트</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="burcketSheet" type="checkbox" name="burcketSheet" value="${carOption.gajukSheet }"
                           <c:if test="${carOption.burcketSheet=='burcketSheet'}"> checked="checked" </c:if> />
                        <label for="burcketSheet">버켓시트</label>&nbsp;&nbsp;&nbsp;&nbsp;
                     </div>
                  </div>
               </div>
               <div class="panel panel-default">
                  <div class="panel-heading">
                     <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion"
                           href="#collapse2" class="collapsed" aria-expanded="false">편의장치</a>
                     </h4>
                  </div>
                  <div id="collapse2" class="panel-collapse collapse"
                     aria-expanded="false" style="height: 0px;">
                     <div class="panel-body">
                        <input id="sunRoof" type="checkbox" name="sunRoof" value="sunRoof"
                           <c:if test="${carOption.sunRoof=='sunRoof'}"> checked="checked" </c:if> />
                        <label for="sunRoof">썬루프</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="pnrmSunRoof" type="checkbox" name="pnrmSunRoof" value="pnrmSunRoof"
                           <c:if test="${carOption.sunRoof=='sunRoof'}"> checked="checked" </c:if> />
                        <label for="pnrmSunRoof">파노라마썬루</label>&nbsp;&nbsp;&nbsp;&nbsp;

                        <input id="hidRam" type="checkbox" name="hidRam" value="hidRam"
                           <c:if test="${carOption.hidRam=='hidRam'}"> checked="checked" </c:if> />
                        <label for="hidRam">HID/제논램</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="autoRight" type="checkbox" name="autoRight"
                           <c:if test="${carOption.autoRight=='autoRight'}"> checked="checked" </c:if> />
                        <label for="autoRight">오토라이트</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="ecmRoomMirror" type="checkbox" name="ecmRoomMirror"
                           <c:if test="${carOption.ecmRoomMirror=='ecmRoomMirror'}"> checked="checked" </c:if> />
                        <label for="ecmRoomMirror">ECM룸미러</label>&nbsp;&nbsp;&nbsp;&nbsp;

                        <input id="smartKey" type="checkbox" name="smartKey"
                           <c:if test="${carOption.smartKey=='smartKey'}"> checked="checked" </c:if> />
                        <label for="smartKey">스마트키/키레스고</label>&nbsp;&nbsp;&nbsp;&nbsp;

                        <input id="egStartButton" type="checkbox" name="egStartButton"
                           <c:if test="${carOption.egStartButton=='egStartButton'}"> checked="checked" </c:if> />
                        <label for="egStartButton">엔진스타트버튼</label>&nbsp;&nbsp;&nbsp;&nbsp;

                        <input id="rigthClean" type="checkbox" name="rigthClean"
                           <c:if test="${carOption.rigthClean=='rigthClean'}"> checked="checked" </c:if> />
                        <label for="rigthClean">라이트세척장</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="jkSubSystem" type="checkbox" name="jkSubSystem"
                           <c:if test="${carOption.jkSubSystem=='jkSubSystem'}"> checked="checked" </c:if> />
                        <label for="jkSubSystem">주차조향보조시스</label>&nbsp;&nbsp;&nbsp;&nbsp;
                     </div>
                  </div>
               </div>
               <div class="panel panel-default">
                  <div class="panel-heading">
                     <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion"
                           href="#collapse3" class="collapsed" aria-expanded="false">안전장치</a>
                     </h4>
                  </div>
                  <div id="collapse3" class="panel-collapse collapse"
                     aria-expanded="false">
                     <div class="panel-body">
                        <input id="driverAirBag" type="checkbox" name="driverAirBag" value="driverAirBag"
                           <c:if test="${carOption.driverAirBag=='driverAirBag'}"> checked="checked" </c:if> />
                        <label for="driverAirBag">운전석에어백</label>&nbsp;&nbsp;&nbsp;&nbsp;

                        <input id="driverFriendAirBag" type="checkbox"
                           name="driverFriendAirBag" value="driverFriendAirBag"
                           <c:if test="${carOption.driverFriendAirBag=='driverFriendAirBag'}"> checked="checked" </c:if> />
                        <label for="driverFriendAirBag">동승석에어백</label>&nbsp;&nbsp;&nbsp;&nbsp;

                        <input id="sideAirBag" type="checkbox" name="sideAirBag" value="sideAirBag"
                           <c:if test="${carOption.sideAirBag=='sideAirBag'}"> checked="checked" </c:if> />
                        <label for="sideAirBag">측면에어백</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="ctAirBag" type="checkbox" name="ctAirBag"
                           <c:if test="${carOption.ctAirBag=='ctAirBag'}"> checked="checked" </c:if> />
                        <label for="ctAirBag">커튼에어</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="passengerDetectAirBag" type="checkbox"
                           name="passengerDetectAirBag"
                           <c:if test="${carOption.passengerDetectAirBag=='passengerDetectAirBag'}"> checked="checked" </c:if> />
                        <label for="passengerDetectAirBag">승객감지에어</label>&nbsp;&nbsp;&nbsp;&nbsp;

                        <input id="mrProtectAirBag" type="checkbox"
                           name="mrProtectAirBag"
                           <c:if test="${carOption.mrProtectAirBag=='mrProtectAirBag'}"> checked="checked" </c:if> />
                        <label for="mrProtectAirBag">무릎보호에어</label>&nbsp;&nbsp;&nbsp;&nbsp;

                        <input id="activeHeadRest" type="checkbox" name="activeHeadRest"
                           <c:if test="${carOption.activeHeadRest=='activeHeadRest'}"> checked="checked" </c:if> />
                        <label for="activeHeadRest">액티브헤드레스트</label>&nbsp;&nbsp;&nbsp;&nbsp;

                        <input id="abs" type="checkbox" name="abs"
                           <c:if test="${carOption.abs=='abs'}"> checked="checked" </c:if> />
                        <label for="abs">ABS</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="bas" type="checkbox" name="bas"<%-- <c:if test="${carOption.bas=='bas'}"> checked="checked" </c:if>/ --%>>
                        <label for="bas">BAS</label>&nbsp;&nbsp;&nbsp;&nbsp;

                     </div>
                  </div>
               </div>
               <div class="panel panel-default">
                  <div class="panel-heading">
                     <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion"
                           href="#collapse4" class="collapsed" aria-expanded="false">AV/오디오/항범</a>
                     </h4>
                  </div>
                  <div id="collapse4" class="panel-collapse collapse"
                     aria-expanded="false">
                     <div class="panel-body">
                        <input id="navi" type="checkbox" name="navi" value="navi"
                           <c:if test="${carOption.navi=='navi'}"> checked="checked" </c:if> />
                        <label for="navi">내비게이션</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="hipass" type="checkbox" name="hipass" value="hipass"
                           <c:if test="${carOption.hipass=='hipass'}"> checked="checked" </c:if> />
                        <label for="hipass">하이패스</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="blackBox" type="checkbox" name="blackBox" value="blackBox"
                           <c:if test="${carOption.blackBox=='blackBox'}"> checked="checked" </c:if> />
                        <label for="blackBox">블랙박스</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="handFreeze" type="checkbox" name="handFreeze"
                           <c:if test="${carOption.handFreeze=='handFreeze'}"> checked="checked" </c:if> />
                        <label for="handFreeze">핸즈프리즈</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="blueTooth" type="checkbox" name="blueTooth"
                           <c:if test="${carOption.blueTooth=='blueTooth'}"> checked="checked" </c:if> />
                        <label for="blueTooth">블루투스</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="dvdPlayer" type="checkbox" name="dvdPlayer"
                           <c:if test="${carOption.dvdPlayer=='dvdPlayer'}"> checked="checked" </c:if> />
                        <label for="dvdPlayer">DVD플레이어</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="dmb" type="checkbox" name="dmb"
                           <c:if test="${carOption.dmb=='dmb'}"> checked="checked" </c:if> />
                        <label for="dmb">DMB</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="mp3" type="checkbox" name="mp3"
                           <c:if test="${carOption.mp3=='mp3'}"> checked="checked" </c:if> />
                        <label for="mp3">MP3</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="iPhoneAdapter" type="checkbox" name="iPhoneAdapter"
                           <c:if test="${carOption.iPhoneAdapter=='iPhoneAdapter'}"> checked="checked" </c:if> />
                        <label for="iPhoneAdapter">아이폰단자</label>&nbsp;&nbsp;&nbsp;&nbsp;

                     </div>
                  </div>
               </div>
               <div class="panel panel-default">
                  <div class="panel-heading">
                     <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion"
                           href="#collapse5" class="collapsed" aria-expanded="false">튜닝사항</a>
                     </h4>
                  </div>
                  <div id="collapse5" class="panel-collapse collapse"
                     aria-expanded="false">
                     <div class="panel-body">
                        <input id="turboChaser" type="checkbox" name="turboChaser" value="turboChaser"
                           <c:if test="${carOption.turboChaser=='turboChaser'}"> checked="checked" </c:if> />
                        <label for="turboChaser">터보차저</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="airrowFigher" type="checkbox" name="airrowFigher" value="airrowFigher"
                           <c:if test="${carOption.airrowFigher=='airrowFigher'}"> checked="checked" </c:if> />
                        <label for="airrowFigher">에어로파이터</label>&nbsp;&nbsp;&nbsp;&nbsp;

                        <input id="superChaser" type="checkbox" name="superChaser" value="superChaser"
                           <c:if test="${carOption.superChaser=='superChaser'}"> checked="checked" </c:if> />
                        <label for="superChaser">슈퍼차져</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="mission" type="checkbox" name="mission"
                           <c:if test="${carOption.mission=='mission'}"> checked="checked" </c:if> />
                        <label for="mission">미션</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="handle" type="checkbox" name="handle"
                           <c:if test="${carOption.handle=='handle'}"> checked="checked" </c:if> />
                        <label for="handle">핸들</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="spoiler" type="checkbox" name="spoiler"
                           <c:if test="${carOption.spoiler=='spoiler'}"> checked="checked" </c:if> />
                        <label for="spoiler">스포일러</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="ggFan" type="checkbox" name="ggFan"
                           <c:if test="${carOption.ggFan=='ggFan'}"> checked="checked" </c:if> />
                        <label for="ggFan">계기판</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="audio" type="checkbox" name="audio"
                           <c:if test="${carOption.audio=='audio'}"> checked="checked" </c:if> />
                        <label for="audio">오디오</label>&nbsp;&nbsp;&nbsp;&nbsp; <input
                           id="wheelTiger" type="checkbox" name="wheelTiger"
                           <c:if test="${carOption.wheelTiger=='wheelTiger'}"> checked="checked" </c:if> />
                        <label for="wheelTiger">힐/타이어</label>&nbsp;&nbsp;&nbsp;&nbsp;
                     </div>
                  </div>
               </div>
            </div>

            <div class="col-md-12">
               <div class="row">
                  <div class="col-md-12">
                     <h3>차량옵션 설명</h3>
                  </div>
               </div>
               <div class="panel panel-default ">
                  <div class="panel-heading">
                     <span class="glyphicon glyphicon-refresh" id="reset"> 다시쓰기</span>
                  </div>
                  <textarea class="form-control" name="info-text" id="info-text"
                     rows="15" style="border-radius: 0px;"></textarea>
               </div>
            </div>
         </div>
      </div>


      <div class="row">
         <div class='list-group gallery form-group'>
            <div class="row">
               <div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
                  <div class="fileinput fileinput-new" data-provides="fileinput"
                     id="upfile1">
                     <div class="fileinput-new thumbnail"
                        style="width: 100%; height: 100%;">
                        <img data-src="holder.js/100x100%" alt="">
                        <div class='text-right'>
                           <small class='text-muted'><img
                              src="/car6/${list[0].imgPath }"
                              style="height: 100%; width: 100%"></small>
                        </div>
                        <!-- text-right / end -->
                     </div>
                     <div class="fileinput-preview fileinput-exists thumbnail"
                        style="max-width: 250px; max-height: 250px;" align="center"></div>
                     <div align="center">
                        <span class="btn btn-default btn-file"><span
                           class="fileinput-new">Select image</span><span
                           class="fileinput-exists">Change</span><input type="file"
                           name="upfile[0]" id="upfile0"></span> <a href="#"
                           class="btn btn-default fileinput-exists"
                           data-dismiss="fileinput">Remove</a>
                     </div>
                  </div>
               </div>
               <!-- col-6 / end -->
               <div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
                  <div class="fileinput fileinput-new" data-provides="fileinput"
                     id="upfile2">
                     <div class="fileinput-new thumbnail"
                        style="width: 170px; height: 160px;">
                        <img src="/car6/${list[1].imgPath }" alt="">
                        <div class='text-right'>
                           <small class='text-muted'>실내</small>
                        </div>
                        <!-- text-right / end -->
                     </div>
                     <div class="fileinput-preview fileinput-exists thumbnail"
                        style="max-width: 250px; max-height: 250px;" align="center"></div>
                     <div align="center">
                        <span class="btn btn-default btn-file"><span
                           class="fileinput-new">Select image</span><span
                           class="fileinput-exists">Change</span><input type="file"
                           name="upfile[1]"></span> <a href="#"
                           class="btn btn-default fileinput-exists"
                           data-dismiss="fileinput">Remove</a>
                     </div>
                  </div>
               </div>
               <!-- col-6 / end -->
               <div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
                  <div class="fileinput fileinput-new" data-provides="fileinput"
                     id="upfile3">
                     <div class="fileinput-new thumbnail"
                        style="width: 170px; height: 160px;">
                        <img data-src="/car6/${list[2].imgPath }" alt="">
                        <div class='text-right'>
                           <small class='text-muted'>전면</small>
                        </div>
                        <!-- text-right / end -->
                     </div>
                     <div class="fileinput-preview fileinput-exists thumbnail"
                        style="max-width: 250px; max-height: 250px;" align="center"></div>
                     <div align="center">
                        <span class="btn btn-default btn-file"><span
                           class="fileinput-new">Select image</span><span
                           class="fileinput-exists">Change</span><input type="file"
                           name="upfile[2]"></span> <a href="#"
                           class="btn btn-default fileinput-exists"
                           data-dismiss="fileinput">Remove</a>
                     </div>
                  </div>
               </div>
               <!-- col-6 / end -->
               <div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
                  <div class="fileinput fileinput-new" data-provides="fileinput"
                     id="upfile1">
                     <div class="fileinput-new thumbnail"
                        style="width: 170px; height: 160px;">
                        <img data-src="/car6/${list[3].imgPath }" alt="">
                        <div class='text-right'>
                           <small class='text-muted'>후면</small>
                        </div>
                        <!-- text-right / end -->
                     </div>
                     <div class="fileinput-preview fileinput-exists thumbnail"
                        style="max-width: 250px; max-height: 250px;" align="center"></div>
                     <div align="center">
                        <span class="btn btn-default btn-file"><span
                           class="fileinput-new">Select image</span><span
                           class="fileinput-exists">Change</span><input type="file"
                           name="upfile[3]"></span> <a href="#"
                           class="btn btn-default fileinput-exists"
                           data-dismiss="fileinput">Remove</a>
                     </div>
                  </div>
               </div>
               <!-- col-6 / end -->
               <div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
                  <div class="fileinput fileinput-new" data-provides="fileinput">
                     <div class="fileinput-new thumbnail"
                        style="width: 170px; height: 160px;">
                        <img data-src="/car6/${list[4].imgPath }" alt="">
                        <div class='text-right'>
                           <small class='text-muted'>측면</small>
                        </div>
                        <!-- text-right / end -->
                     </div>
                     <div class="fileinput-preview fileinput-exists thumbnail"
                        style="max-width: 250px; max-height: 250px;" align="center"></div>
                     <div align="center">
                        <span class="btn btn-default btn-file"><span
                           class="fileinput-new">Select image</span><span
                           class="fileinput-exists">Change</span><input type="file"
                           name="upfile[4]"></span> <a href="#"
                           class="btn btn-default fileinput-exists"
                           data-dismiss="fileinput">Remove</a>
                     </div>
                  </div>
               </div>
               <!-- col-6 / end -->
               <div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
                  <div class="fileinput fileinput-new" data-provides="fileinput">
                     <div class="fileinput-new thumbnail"
                        style="width: 170px; height: 160px;">
                        <img data-src="/car6/${list[5].imgPath }" alt="">
                        <div class='text-right'>
                           <small class='text-muted'>Engine</small>
                        </div>
                        <!-- text-right / end -->
                     </div>
                     <div class="fileinput-preview fileinput-exists thumbnail"
                        style="max-width: 250px; max-height: 250px;" align="center"></div>
                     <div align="center">
                        <span class="btn btn-default btn-file"><span
                           class="fileinput-new">Select image</span><span
                           class="fileinput-exists">Change</span><input type="file"
                           name="upfile[5]"></span> <a href="#"
                           class="btn btn-default fileinput-exists"
                           data-dismiss="fileinput">Remove</a>
                     </div>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
                  <div class="fileinput fileinput-new" data-provides="fileinput">
                     <div class="fileinput-new thumbnail"
                        style="width: 100%; height: 100%;">
                        <img data-src="/car6/${list[6].imgPath }" alt="">
                        <div class='text-right'>
                           <small class='text-muted'><img
                              src="http://placehold.it/320x320"
                              style="height: 100%; width: 100%"></small>
                        </div>
                        <!-- text-right / end -->
                     </div>
                     <div class="fileinput-preview fileinput-exists thumbnail"
                        style="max-width: 250px; max-height: 250px;" align="center"></div>
                     <div align="center">
                        <span class="btn btn-default btn-file"><span
                           class="fileinput-new">Select image</span><span
                           class="fileinput-exists">Change</span><input type="file"
                           name="upfile[6]"></span> <a href="#"
                           class="btn btn-default fileinput-exists"
                           data-dismiss="fileinput">Remove</a>
                     </div>
                  </div>
               </div>
               <!-- col-6 / end -->
               <div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
                  <div class="fileinput fileinput-new" data-provides="fileinput">
                     <div class="fileinput-new thumbnail"
                        style="width: 170px; height: 160px;">
                        <img data-src="/car6/${list[7].imgPath }" alt="">
                        <div class='text-right'>
                           <small class='text-muted'>실내</small>
                        </div>
                        <!-- text-right / end -->
                     </div>
                     <div class="fileinput-preview fileinput-exists thumbnail"
                        style="max-width: 250px; max-height: 250px;" align="center"></div>
                     <div align="center">
                        <span class="btn btn-default btn-file"><span
                           class="fileinput-new">Select image</span><span
                           class="fileinput-exists">Change</span><input type="file"
                           name="upfile[7]"></span> <a href="#"
                           class="btn btn-default fileinput-exists"
                           data-dismiss="fileinput">Remove</a>
                     </div>
                  </div>
               </div>
               <!-- col-6 / end -->
               <div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
                  <div class="fileinput fileinput-new" data-provides="fileinput">
                     <div class="fileinput-new thumbnail"
                        style="width: 170px; height: 160px;">
                        <img data-src="/car6/${list[8].imgPath }" alt="">
                        <div class='text-right'>
                           <small class='text-muted'>전면</small>
                        </div>
                        <!-- text-right / end -->
                     </div>
                     <div class="fileinput-preview fileinput-exists thumbnail"
                        style="max-width: 250px; max-height: 250px;" align="center"></div>
                     <div align="center">
                        <span class="btn btn-default btn-file"><span
                           class="fileinput-new">Select image</span><span
                           class="fileinput-exists">Change</span><input type="file"
                           name="upfile[8]"></span> <a href="#"
                           class="btn btn-default fileinput-exists"
                           data-dismiss="fileinput">Remove</a>
                     </div>
                  </div>
               </div>
               <!-- col-6 / end -->
               <div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
                  <div class="fileinput fileinput-new" data-provides="fileinput">
                     <div class="fileinput-new thumbnail"
                        style="width: 170px; height: 160px;">
                        <img data-src="/car6/${list[9].imgPath }" alt="">
                        <div class='text-right'>
                           <small class='text-muted'>후면</small>
                        </div>
                        <!-- text-right / end -->
                     </div>
                     <div class="fileinput-preview fileinput-exists thumbnail"
                        style="max-width: 250px; max-height: 250px;" align="center"></div>
                     <div align="center">
                        <span class="btn btn-default btn-file"><span
                           class="fileinput-new">Select image</span><span
                           class="fileinput-exists">Change</span><input type="file"
                           name="upfile[9]"></span> <a href="#"
                           class="btn btn-default fileinput-exists"
                           data-dismiss="fileinput">Remove</a>
                     </div>
                  </div>
               </div>
               <!-- col-6 / end -->
               <div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
                  <div class="fileinput fileinput-new" data-provides="fileinput">
                     <div class="fileinput-new thumbnail"
                        style="width: 170px; height: 160px;">
                        <img data-src="/car6/${list[10].imgPath }" alt="">
                        <div class='text-right'>
                           <small class='text-muted'>측면</small>
                        </div>
                        <!-- text-right / end -->
                     </div>
                     <div class="fileinput-preview fileinput-exists thumbnail"
                        style="max-width: 250px; max-height: 250px;" align="center"></div>
                     <div align="center">
                        <span class="btn btn-default btn-file"><span
                           class="fileinput-new">Select image</span><span
                           class="fileinput-exists">Change</span><input type="file"
                           name="upfile[10]"></span> <a href="#"
                           class="btn btn-default fileinput-exists"
                           data-dismiss="fileinput">Remove</a>
                     </div>
                  </div>
               </div>
               <!-- col-6 / end -->
               <div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
                  <div class="fileinput fileinput-new" data-provides="fileinput">
                     <div class="fileinput-new thumbnail"
                        style="width: 100%; height: 100%;">
                        <img data-src="/car6/${list[11].imgPath }" alt="">
                        <div class='text-right'>
                           <small class='text-muted'><img
                              src="http://placehold.it/320x320"
                              style="height: 100%; width: 100%"></small>
                        </div>
                        <!-- text-right / end -->
                     </div>
                     <div class="fileinput-preview fileinput-exists thumbnail"
                        style="max-width: 250px; max-height: 250px;" align="center"></div>
                     <div align="center">
                        <span class="btn btn-default btn-file"><span
                           class="fileinput-new">Select image</span><span
                           class="fileinput-exists">Change</span><input type="file"
                           name="upfile[11]"></span> <a href="#"
                           class="btn btn-default fileinput-exists"
                           data-dismiss="fileinput">Remove</a>
                     </div>
                  </div>
               </div>
               <!-- col-6 / end -->
            </div>

 
            <!-- button -->
            <!-- col-6 / end -->
         </div>

         <!-- list-group / end -->
      </div>

</div>



   </div>


   
   <!--  이전/최종 확인 부분  -->
   <br>
   <br>
   <br>
   <div class="col-md-8 col-md-offset-2" align="center">
      <a href="#fourth" data-toggle="tab" title="completed"><button
            type="button" id="before5" class="btn btn-danger btn-lg"
            style="width: 40%;">
            <span class="glyphicon glyphicon-ok-sign"></span>이전
         </button></a>
      <button id="oops" class="btn btn-primary btn-lg" style="width: 40%;"
         type="submit">
         <span class="glyphicon glyphicon-ok-sign"></span>수정
      </button>
   </div>
   <br>
</form>

   <!-- Container End -->

   <!-- row / end -->
   <!-- List Group -->



   <!-- row / end -->

   <!-- Container End -->

   <!--  다섯번째 끝     -->

</body>
</html>