<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link href="css\bootstrap.css" rel="stylesheet">
<link href="css\bootstrap-theme.min.css" rel="stylesheet">
<link href="css\sell.css" rel="stylesheet">

<!-- image upload -->
<link href="css\jasny-bootstrap.css" rel="stylesheet">
<link href="css\jasny-bootstrap.css.map" rel="stylesheet">
	<script src="https://code.jquery.com/jquery.js"></script>
<script src="js/sell-title2.js"></script>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.toggle-header{
    padding:3px 0;
    margin:3px 0;
    background-color:white;
    color:white;
}
.txt-green{
    color:green;
}
.txt-red{
    color:red;
}
</style>
</head>
<body>
	<section style="background: #ffffff;">
		<div class="container-fluid">
			<div class="row">
				<div class="board">
					<!-- <h2>Welcome to IGHALO!<sup>™</sup></h2>-->
					<div class="board-inner">
						<ul class="nav nav-tabs" id="myTab">
							<div class="liner"></div>
							<!-- 첫번째 li -->
							<li class="first"><a href="#first" data-toggle="tab"
								title="판매자 정보입력"> <span class="round-tabs one"> <i
										class="glyphicon glyphicon-home"></i>
								</span>
							</a></li>
							<!-- 첫번째 li 끝-->

							<!-- 두번째 li -->
							<li><a href="#second" data-toggle="tab" title="profile">
									<span class="round-tabs two"> <i
										class="glyphicon glyphicon-user"></i>
								</span>
							</a></li>
							<!-- 두번째 li 끝  -->

							<!-- 세번째 li -->
							<li><a href="#third" data-toggle="tab" title="ppp"> <span
									class="round-tabs two"> <i
										class="glyphicon glyphicon-user"></i>
								</span>
							</a></li>
							<!-- 세번째 li 끝-->

							<!-- 다섯번째 li -->
							<li><a href="#fourth" data-toggle="tab" title="blah blah">
									<span class="round-tabs four"> <i
										class="glyphicon glyphicon-comment"></i>
								</span>
							</a></li>
							<!-- 다섯번째 li 끝 -->

							<!-- 여섯번째 li -->
							<li><a href="#fifth" data-toggle="tab" title="completed">
									<span class="round-tabs five"> <i
										class="glyphicon glyphicon-ok"></i>
								</span>
							</a></li>
						</ul>
					</div>


					<!-- 첫번째 동그라미 클릭시 div -->
					<div class="tab-content">
						<div class="tab-pane fade in active" id="first">
							<div class="row">
								<div class="col-md-9 col-md-offset-2">
									<form class="form-horizontal" role="form" action="">
										<fieldset>

											<!-- Form Name -->
											<legend>판매자 정보입력</legend>

											<!-- 이름 -->
											<div class="form-group">
												<label class="col-sm-2 control-label" for="textinput">이름</label>
												<div class="col-sm-10">
													<input type="text" placeholder="이름을 입력하세요."
														class="form-control" id="name">
												</div>
											</div>

											<!-- 주소 -->
											<div class="form-group">
												<label class="col-sm-2 control-label" for="textinput">주소</label>
												<div class="col-sm-10">
													<input type="text" placeholder="주소를 입력하세요."
														class="form-control" id="addr">
												</div>
											</div>

											<!-- 연락처 -->
											<div class="form-group">
												<label class="col-sm-2 control-label" for="textinput">연락처</label>
												<div class="col-sm-10">
													<input type="text" placeholder="연락처를 입력하세요."
														class="form-control" id="phone">
												</div>
											</div>

											<!-- 이메일 -->
											<div class="form-group">
												<label class="col-sm-2 control-label" for="textinput">이메일</label>
												<div class="col-sm-10">
													<input type="text" placeholder="이메일을 입력하세요."
														class="form-control" id="email">
												</div>
											</div>

											<!-- 지역 -->
											<div class="form-group">
												<label class="col-sm-2 control-label" for="textinput">지역</label>
												<div class="col-sm-10">
													<div class="dropdown">
														<a id="dLabel" role="button" data-toggle="dropdown"
															class="btn btn-primary" data-target="#" href="/page.html">
															지역 <span class="caret"></span>
														</a>
														<ul class="dropdown-menu multi-level" role="menu"
															aria-labelledby="dropdownMenu" id="region">
															<li><a href="#">서울</a></li>
															<li><a href="#">부산</a></li>
															<li><a href="#">대구</a></li>
															<li><a href="#">대전</a></li>
															<li><a href="#">제주</a></li>
															<li><a href="#">광주</a></li>
															<li><a href="#">경기</a></li>
														</ul>
													</div>
													<!-- Drop down 끝-->
												</div>
											</div>
											<!-- 지역 끝-->

											<br> <br> <br> <br> <br>
											<div class="form-group">
												<div class="col-md-8 col-md-offset-1" align="center">
													<button type="button" class="btn btn-danger btn-lg"
														style="width: 40%;">
														<span class="glyphicon glyphicon-ok-sign"></span>취소
													</button>
													<button type="button" class="btn btn-primary btn-lg"
														style="width: 40%;">
														<span class="glyphicon glyphicon-ok-sign"></span>다음
													</button>
												</div>
											</div>

										</fieldset>
									</form>
								</div>
							</div>
							<!-- row end -->
						</div>

							
						
						<!-- 두번째 동그라미 클릭시 div -->
						<div class="tab-pane fade " id="second">
							<!-- carinfo start -->
							<div class="col-md-9 col-md-offset-2">
												
								<form class="form-horizontal" name="form2" role="form" action="addCar.do" method="post">
									<div class="row">
									

										<div class="form-group">
											<label class="control-label col-md-1">차량번호
												|</label>
												
											<div class="col-md-2">
												<input type="text" class="form-control" id="carNum"
													name="carNum" placeholder="입력" data-container="body"
													data-toggle="popover" data-placement="bottom"
													data-trigger="manual" data-content="올바른 차량번호 형식으로 입력해주세요.">
											</div>


											<input type="checkbox" class="checkthis" />&nbsp;임시번호/직수입등록
										</div>
										

										<!-- 차량명 선택 리스트 -->
										<div class="form-group">
											<label class="control-label col-md-1" for="phone">차량명
												|</label>
											
											<!-- '제조국' 선택 리스트  -->
											<div class="col-md-2"   id="manuCountry">
											
												<select class="form-control country" id="list1" name="manuCountry">
													<option>제조국</option>
													<option value="2-1">국산차</option>
													<option value="2-2">수입차</option>
												</select>
											</div>
											<!-- /'제조국' 선택 리스트  -->
											
											<!-- '제조사' 선택 리스트  -->
											<div class="col-md-2">
												
												<select class="form-control company" id="list2" name="manuCo">

													<option id="company_basic">제조사</option>
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
										
												
												<select class="form-control" id="list3"  name="model">
													<option id="model_basic">모델명</option>
												
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
													<option id="color_option">색상</option>
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
											<label class="control-label col-md-1" >
												연식 |</label>

											<div class="col-sm-2">
												<select class="form-control" name="year">

													<option>년</option>
													<option value="2015">2015</option>
													<option value="2014">2014</option>
													<option value="2013">2013</option>

												</select>
											</div>
											<div class="col-sm-1">
												<select class="form-control" name="month">

													<option>월</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>

												</select>
											</div>
											
											<label class="control-label col-md-1 col-md-offset-3"
												>형식년도 |</label>

											<div class="col-md-2">
												<select class="form-control" name="carYear">
													<option>년형</option>
													<option value="2015">2015</option>
													<option value="2014">2014</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-1" for="phone">변속기
												|</label>

											<div class="col-md-4">
												<div class="col-md-5"  style="margin-left:-3%;">
													<input type="radio" name="transmission" value="auto" checked/>&nbsp;자동
													&nbsp;&nbsp;
													<input type="radio" name="transmission" value="passive" />&nbsp;수동
												</div>
											</div>

											<label class="control-label col-md-1 col-md-offset-2"
												for="phone">연료 |</label>

											<div class="col-md-2">
												<select class="form-control" name="fuel">

													<option>선택</option>
													<option value="Gasolin">가솔린</option>
													<option value="Diesel">디젤</option>
													<option value="LPG">LPG</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-1" >배기량
												|</label>


											
											<div class="col-md-2">
											
												<input type="text" class="form-control" id="cc"
													name="cc" OnKeyUp="comma(this)" placeholder="입력" data-container="body"
													data-toggle="popover" data-placement="bottom"
													data-trigger="manual" data-content="숫자형식으로 입력해주세요.">
											</div>
											
											<div class="col-md-1">CC</div>

											<label class="control-label col-md-1 col-md-offset-3"
												for="phone">주행거리 |</label>

											
											<div class="col-md-2">
												<input type="text" class="form-control" id="km"
													name="km" placeholder="입력" OnKeyUp="comma(this)" data-container="body"
													data-toggle="popover" data-placement="bottom"
													data-trigger="manual" data-content="숫자형식으로 입력해주세요.">
											</div>
											<div class="" style="margin-top:1%;">Km</div>

										</div>

										<div class="form-group">
											<label class="control-label col-md-1">판매구분
												|</label>
											<div class="col-md-4">
												<input type="radio" name="sell" value="common" checked />&nbsp;일반차량 
												&nbsp;&nbsp;
												<input type="radio" name="sell" value="lease" />&nbsp;리스승계차량
												&nbsp;&nbsp;
												<input type="radio" name="sell" value="installment"  />&nbsp;할부승계차량
											</div>

											<label class="control-label col-md-1 col-md-offset-2"
												for="phone">사고여부 |</label>
											<div class="col-md-2">
												<input type="radio" name="accident" value="noAcc" checked />&nbsp;무사고
												&nbsp;&nbsp;
												<input type="radio" name="accident" value="yesAcc" />&nbsp;사고
											</div>
										</div>

										
										
										<div class="form-group">
											<label class="control-label col-md-1">성능상태점검기록부
												|</label>
											<div class="col-md-4">
												<button type="button" class="btn btn-default" name="perfor" style="margin-top:2%;">&nbsp;&nbsp;&nbsp;첨부하기&nbsp;&nbsp;&nbsp;</button>
											</div>

											<label class="control-label col-md-1 col-md-offset-2"
												for="phone">전문평가사 |</label>
											<div class="col-md-2">
												<input type="radio" name="professor" value="yes" checked />&nbsp;요청
												&nbsp;&nbsp;
												<input type="radio" name="professor" value="no" />&nbsp;미요청
											</div>
										</div>

										
										</div>
										<br><br>
										<div class="col-md-8 col-md-offset-1" align="center">
												<button type="button" class="btn btn-danger btn-lg" 
													style="width: 40%;">
													<span class="glyphicon glyphicon-ok-sign"></span>이전
												</button>
												<button type="submit" class="btn btn-primary btn-lg"
													style="width: 40%;">
													<span class="glyphicon glyphicon-ok-sign"></span>다음
												</button>
										</div>
									</form>

								</div>
							</div>
							<!-- carinfo end -->


						<!-- 세번째 동그라미 클릭시 div -->
						<div class="tab-pane fade" id="third">


							<div class="col-md-8 col-md-offset-2">
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
															<input id="powerWindow" type="checkbox" name="checkbox-test1" value="one">
															<label for="powerWindow">파워윈도우</label>&nbsp;&nbsp;&nbsp;&nbsp;
															
															<input id="aircorn" type="checkbox" name="checkbox-test2" value="two"> 
															<label for="aircorn">에어콘</label>&nbsp;&nbsp;&nbsp;&nbsp;
															
															<input id="fullAutoAircorn" type="checkbox" name="checkbox-test3" value="three">
															<label for="fullAutoAircorn">풀오토에어콘</label>&nbsp;&nbsp;&nbsp;&nbsp;
															
															<input id="leftRightAircorn" type="checkbox" name="checkbox-test4" value="four">
															<label for="leftRightAircorn">좌/우독립에어콘</label>&nbsp;&nbsp;&nbsp;&nbsp;
															
															<input id="gajukSheet" type="checkbox" name="checkbox-test5" value="one">
															<label for="gajukSheet">가죽시트</label>&nbsp;&nbsp;&nbsp;&nbsp;
															
															<input id="warmSheet" type="checkbox" name="checkbox-test6" value="two"> 
															<label for=warmSheet>열선시트</label>&nbsp;&nbsp;&nbsp;&nbsp;
															
															<input id="windSheet" type="checkbox" name="checkbox-test7" value="three">
															<label for="windSheet">통풍시트</label>&nbsp;&nbsp;&nbsp;&nbsp;
															
															<input id="msgSheet" type="checkbox" name="checkbox-test8" value="four">
															<label for="msgSheet">마사지시트</label>&nbsp;&nbsp;&nbsp;&nbsp;
															
															<input id="burcketSheet" type="checkbox" name="checkbox-test9" value="one">
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
														<input id="sunRoof" type="checkbox" name="checkbox-test1" value="one">
														<label for="sunRoof">썬루프</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="pnrmSunRoof" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="pnrmSunRoof">파노라마썬루</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="hidRam" type="checkbox" name="checkbox-test3" value="three"> 
														<label for="hidRam">HID/제논램</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="autoRight" type="checkbox" name="checkbox-test4" value="four"> 
														<label for="autoRight">오토라이트</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="ecmRoomMirror" type="checkbox" name="checkbox-test5"value="one">
														<label for="ecmRoomMirror">ECM룸미러</label>&nbsp;&nbsp;&nbsp;&nbsp; 
														
														<input id="smartKey" type="checkbox" name="checkbox-test5"value="one">
														<label for="smartKey">스마트키/키레스고</label>&nbsp;&nbsp;&nbsp;&nbsp; 
														
														<input id="egStartButton" type="checkbox" name="checkbox-test6" value="two"> 
														<label for="egStartButton">엔진스타트버튼</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="rigthClean" type="checkbox" name="checkbox-test7" value="three">
														<label for="rigthClean">라이트세척장</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="jkSubSystem" type="checkbox" name="checkbox-test8" value="four">
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
														<input id="driverAirBag" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="driverAirBag">운전석에어백</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="driverFriendAirBag" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="driverFriendAirBag">동승석에어백</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="sideAirBag" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="sideAirBag">측면에어백</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="ctAirBag" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="ctAirBag">커튼에어</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="passengerDetectAirBag" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="passengerDetectAirBag">승객감지에어</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="mrProtectAirBag" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="mrProtectAirBag">무릎보호에어</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="activeHeadRest" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="activeHeadRest">액티브헤드레스트</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="abs" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="abs">ABS</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="bas" type="checkbox" name="checkbox-test2" value="two"> 
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
														<input id="navi" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="navi">내비게이션</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="hipass" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="hipass">하이패스</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="blackBox" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="blackBox">블랙박스</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="handFreeze" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="handFreeze">핸즈프리즈</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="blueTooth" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="blueTooth">블루투스</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="dvdPlayer" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="dvdPlayer">DVD플레이어</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="dmb" type="checkbox" name="checkbox-test2" value="two">
														<label for="dmb">DMB</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="mp3" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="mp3">MP3</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="iPhoneAdapter" type="checkbox" name="checkbox-test2" value="two"> 
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
														<input id="turboChaser" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="turboChaser">터보차져</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="airrowFigher" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="airrowFigher">에어로파이터</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="superChaser" type="checkbox" name="checkbox-test2" value="two">
														<label for="superChaser">슈퍼차져</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="mission" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="mission">미션</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="handle" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="handle">핸들</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="spoiler" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="spoiler">스포일러</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="ggFan" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="ggFan">계기판</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="audio" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="audio">오디오</label>&nbsp;&nbsp;&nbsp;&nbsp;
														
														<input id="wheelTiger" type="checkbox" name="checkbox-test2" value="two"> 
														<label for="wheelTiger">힐/타이어</label>&nbsp;&nbsp;&nbsp;&nbsp;
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>

							<div class="col-md-8 col-md-offset-2">
								<div class="row">
									<div class="col-md-12">
										<h3>차량옵션 설명</h3>
									</div>
								</div>
								<div class="panel panel-default ">
									<div class="panel-heading">
										<span class="glyphicon glyphicon-refresh" id="reset">
											다시쓰기</span>
									</div>
									<textarea class="form-control" id="aaa" rows="15"
										style="border-radius: 0px;"></textarea>
								</div>

							</div>


							<div class="col-md-6 col-md-offset-3" align="center">
								<button type="button" class="btn btn-danger btn-lg"
									style="width: 40%;">
									<span class="glyphicon glyphicon-ok-sign"></span>이전
								</button>
								<button type="button" class="btn btn-primary btn-lg"
									style="width: 40%;">
									<span class="glyphicon glyphicon-ok-sign"></span>다음
								</button>
							</div>
						</div>

						<!-- 네번째 동그라미 클릭시 div -->
						<div class="tab-pane fade" id="fourth">
							<div class="container">
								<div class="row">
									<div class='list-group gallery form-group'>
										<div class="row">
											<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
												<div class="fileinput fileinput-new"
													data-provides="fileinput">
													<div class="fileinput-new thumbnail"
														style="width: 100%; height: 100%;">
														<img data-src="holder.js/100x100%">
														<div class='text-right'>
															<small class='text-muted'><img
																src="http://placehold.it/320x320"
																style="height: 100%; width: 100%"></small>
														</div>
														<!-- text-right / end -->
													</div>
													<div class="fileinput-preview fileinput-exists thumbnail"
														style="max-width: 250px; max-height: 250px;"
														align="center"></div>
													<div align="center">
														<span class="btn btn-default btn-file"><span
															class="fileinput-new">Select image</span><span
															class="fileinput-exists">Change</span><input type="file"
															name="..."></span> <a href="#"
															class="btn btn-default fileinput-exists"
															data-dismiss="fileinput">Remove</a>
													</div>
												</div>
											</div>
											<!-- col-6 / end -->
											<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
												<div class="fileinput fileinput-new"
													data-provides="fileinput">
													<div class="fileinput-new thumbnail"
														style="width: 170px; height: 160px;">
														<img data-src="holder.js/100x100%" alt="">
														<div class='text-right'>
															<small class='text-muted'>실내</small>
														</div>
														<!-- text-right / end -->
													</div>
													<div class="fileinput-preview fileinput-exists thumbnail"
														style="max-width: 250px; max-height: 250px;"
														align="center"></div>
													<div align="center">
														<span class="btn btn-default btn-file"><span
															class="fileinput-new">Select image</span><span
															class="fileinput-exists">Change</span><input type="file"
															name="..."></span> <a href="#"
															class="btn btn-default fileinput-exists"
															data-dismiss="fileinput">Remove</a>
													</div>
												</div>
											</div>
											<!-- col-6 / end -->
											<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
												<div class="fileinput fileinput-new"
													data-provides="fileinput">
													<div class="fileinput-new thumbnail"
														style="width: 170px; height: 160px;">
														<img data-src="holder.js/100x100%" alt="">
														<div class='text-right'>
															<small class='text-muted'>전면</small>
														</div>
														<!-- text-right / end -->
													</div>
													<div class="fileinput-preview fileinput-exists thumbnail"
														style="max-width: 250px; max-height: 250px;"
														align="center"></div>
													<div align="center">
														<span class="btn btn-default btn-file"><span
															class="fileinput-new">Select image</span><span
															class="fileinput-exists">Change</span><input type="file"
															name="..."></span> <a href="#"
															class="btn btn-default fileinput-exists"
															data-dismiss="fileinput">Remove</a>
													</div>
												</div>
											</div>
											<!-- col-6 / end -->
											<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
												<div class="fileinput fileinput-new"
													data-provides="fileinput">
													<div class="fileinput-new thumbnail"
														style="width: 170px; height: 160px;">
														<img data-src="holder.js/100x100%" alt="">
														<div class='text-right'>
															<small class='text-muted'>후면</small>
														</div>
														<!-- text-right / end -->
													</div>
													<div class="fileinput-preview fileinput-exists thumbnail"
														style="max-width: 250px; max-height: 250px;"
														align="center"></div>
													<div align="center">
														<span class="btn btn-default btn-file"><span
															class="fileinput-new">Select image</span><span
															class="fileinput-exists">Change</span><input type="file"
															name="..."></span> <a href="#"
															class="btn btn-default fileinput-exists"
															data-dismiss="fileinput">Remove</a>
													</div>
												</div>
											</div>
											<!-- col-6 / end -->
											<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
												<div class="fileinput fileinput-new"
													data-provides="fileinput">
													<div class="fileinput-new thumbnail"
														style="width: 170px; height: 160px;">
														<img data-src="holder.js/100x100%" alt="">
														<div class='text-right'>
															<small class='text-muted'>측면</small>
														</div>
														<!-- text-right / end -->
													</div>
													<div class="fileinput-preview fileinput-exists thumbnail"
														style="max-width: 250px; max-height: 250px;"
														align="center"></div>
													<div align="center">
														<span class="btn btn-default btn-file"><span
															class="fileinput-new">Select image</span><span
															class="fileinput-exists">Change</span><input type="file"
															name="..."></span> <a href="#"
															class="btn btn-default fileinput-exists"
															data-dismiss="fileinput">Remove</a>
													</div>
												</div>
											</div>
											<!-- col-6 / end -->
											<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
												<div class="fileinput fileinput-new"
													data-provides="fileinput">
													<div class="fileinput-new thumbnail"
														style="width: 170px; height: 160px;">
														<img data-src="holder.js/100x100%" alt="">
														<div class='text-right'>
															<small class='text-muted'>Engine</small>
														</div>
														<!-- text-right / end -->
													</div>
													<div class="fileinput-preview fileinput-exists thumbnail"
														style="max-width: 250px; max-height: 250px;"
														align="center"></div>
													<div align="center">
														<span class="btn btn-default btn-file"><span
															class="fileinput-new">Select image</span><span
															class="fileinput-exists">Change</span><input type="file"
															name="..."></span> <a href="#"
															class="btn btn-default fileinput-exists"
															data-dismiss="fileinput">Remove</a>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
												<div class="fileinput fileinput-new"
													data-provides="fileinput">
													<div class="fileinput-new thumbnail"
														style="width: 100%; height: 100%;">
														<img data-src="holder.js/100x100%" alt="">
														<div class='text-right'>
															<small class='text-muted'><img
																src="http://placehold.it/320x320"
																style="height: 100%; width: 100%"></small>
														</div>
														<!-- text-right / end -->
													</div>
													<div class="fileinput-preview fileinput-exists thumbnail"
														style="max-width: 250px; max-height: 250px;"
														align="center"></div>
													<div align="center">
														<span class="btn btn-default btn-file"><span
															class="fileinput-new">Select image</span><span
															class="fileinput-exists">Change</span><input type="file"
															name="..."></span> <a href="#"
															class="btn btn-default fileinput-exists"
															data-dismiss="fileinput">Remove</a>
													</div>
												</div>
											</div>
											<!-- col-6 / end -->
											<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
												<div class="fileinput fileinput-new"
													data-provides="fileinput">
													<div class="fileinput-new thumbnail"
														style="width: 170px; height: 160px;">
														<img data-src="holder.js/100x100%" alt="">
														<div class='text-right'>
															<small class='text-muted'>실내</small>
														</div>
														<!-- text-right / end -->
													</div>
													<div class="fileinput-preview fileinput-exists thumbnail"
														style="max-width: 250px; max-height: 250px;"
														align="center"></div>
													<div align="center">
														<span class="btn btn-default btn-file"><span
															class="fileinput-new">Select image</span><span
															class="fileinput-exists">Change</span><input type="file"
															name="..."></span> <a href="#"
															class="btn btn-default fileinput-exists"
															data-dismiss="fileinput">Remove</a>
													</div>
												</div>
											</div>
											<!-- col-6 / end -->
											<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
												<div class="fileinput fileinput-new"
													data-provides="fileinput">
													<div class="fileinput-new thumbnail"
														style="width: 170px; height: 160px;">
														<img data-src="holder.js/100x100%" alt="">
														<div class='text-right'>
															<small class='text-muted'>전면</small>
														</div>
														<!-- text-right / end -->
													</div>
													<div class="fileinput-preview fileinput-exists thumbnail"
														style="max-width: 250px; max-height: 250px;"
														align="center"></div>
													<div align="center">
														<span class="btn btn-default btn-file"><span
															class="fileinput-new">Select image</span><span
															class="fileinput-exists">Change</span><input type="file"
															name="..."></span> <a href="#"
															class="btn btn-default fileinput-exists"
															data-dismiss="fileinput">Remove</a>
													</div>
												</div>
											</div>
											<!-- col-6 / end -->
											<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
												<div class="fileinput fileinput-new"
													data-provides="fileinput">
													<div class="fileinput-new thumbnail"
														style="width: 170px; height: 160px;">
														<img data-src="holder.js/100x100%" alt="">
														<div class='text-right'>
															<small class='text-muted'>후면</small>
														</div>
														<!-- text-right / end -->
													</div>
													<div class="fileinput-preview fileinput-exists thumbnail"
														style="max-width: 250px; max-height: 250px;"
														align="center"></div>
													<div align="center">
														<span class="btn btn-default btn-file"><span
															class="fileinput-new">Select image</span><span
															class="fileinput-exists">Change</span><input type="file"
															name="..."></span> <a href="#"
															class="btn btn-default fileinput-exists"
															data-dismiss="fileinput">Remove</a>
													</div>
												</div>
											</div>
											<!-- col-6 / end -->
											<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
												<div class="fileinput fileinput-new"
													data-provides="fileinput">
													<div class="fileinput-new thumbnail"
														style="width: 170px; height: 160px;">
														<img data-src="holder.js/100x100%" alt="">
														<div class='text-right'>
															<small class='text-muted'>측면</small>
														</div>
														<!-- text-right / end -->
													</div>
													<div class="fileinput-preview fileinput-exists thumbnail"
														style="max-width: 250px; max-height: 250px;"
														align="center"></div>
													<div align="center">
														<span class="btn btn-default btn-file"><span
															class="fileinput-new">Select image</span><span
															class="fileinput-exists">Change</span><input type="file"
															name="..."></span> <a href="#"
															class="btn btn-default fileinput-exists"
															data-dismiss="fileinput">Remove</a>
													</div>
												</div>
											</div>
											<!-- col-6 / end -->
											<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
												<a class="thumbnail fancybox" rel="ligthbox"
													href="http://placehold.it/300x320.png"> <img
													class="img-responsive" alt=""
													src="http://placehold.it/320x320" />
													<div class='text-right'>
														<small class='text-muted'>Image Title</small>
													</div> <!-- text-right / end -->
												</a>
											</div>
										</div>



										<!-- col-6 / end -->
									</div>
									<!-- list-group / end -->

									<div class="col-md-8 col-md-offset-2" align="center">
										<button type="button" class="btn btn-danger btn-lg"
											style="width: 40%;">
											<span class="glyphicon glyphicon-ok-sign"></span>이전
										</button>
										<button type="button" class="btn btn-primary btn-lg"
											style="width: 40%;">
											<span class="glyphicon glyphicon-ok-sign"></span>다음
										</button>
									</div>
								</div>
								<!-- row / end -->
							</div>
							<!-- container / end -->
						</div>
						<!-- 4번째 끝  -->
						
						
<!--  fifth 시작  -->
<div class="tab-pane fade" id="fifth">
	<div class="container">
		<div class="row">
			<div class='list-group gallery form-group'>
				<div class="row">
					<div class="container">
					    <hgroup class="mb20">
							<h1>판매자 등록</h1>
							<h2 class="lead"><strong class="text-danger">!</strong> 판매자 등록페이지 확인 <strong class="text-danger">상세정보</strong></h2>								
						</hgroup>
					
					    <section class="col-xs-12 col-sm-6 col-md-12">
							<article class="search-result row">
								<div class="col-xs-12 col-sm-12 col-md-3">
									<a href="#" title="Lorem ipsum" class="thumbnail"><img src="http://lorempixel.com/250/140/people" alt="Lorem ipsum" /></a>
								</div>
								
								<div class="col-xs-12 col-sm-12 col-md-9 excerpet">
									<h3><a href="#" title="">회원 상세 정보</a></h3>
									<div class="span5">
								            <table class="table table-striped table-condensed">
								                  <thead>
								                  <tr>
								                      <th>이  름</th>
								                      <th>주  소</th>
								                      <th>연락처</th>
								                      <th>이메일</th>
								                      <th>지   역</th>                                     
								                  </tr>
								              </thead>   
								              <tbody>
								                <tr>
								                    <td>${user.userName}</td>
					                    <td>${user.addr}</td>
					                    <td>${user.phone}</td>
					                    <td>${user.regDate}</td>                                  
					                </tr>
					                <tr>                                      
					                </tr>
					                                             
					              </tbody>
					            </table>
					            </div>
					</div>
					<span class="clearfix borda"></span>
				</article>
		
		        <article class="search-result row">
					<div class="col-xs-12 col-sm-12 col-md-3">
						<a href="#" title="Lorem ipsum" class="thumbnail"><img src="http://lorempixel.com/250/140/food" alt="Lorem ipsum" /></a>
					</div>
					
					<div class="col-xs-12 col-sm-12 col-md-9">
						<h3><a href="#" title="">차량 세부 사항</a></h3>
						
						
							<div class="span5">
					            <table class="table table-striped table-condensed">
					                  <thead>
					                  <tr>
					                      <th>차량번호</th>
					                      <th>차 량  명</th>
					                      <th>연      식</th>
					                      <th>배  속 기</th>    
					                      <th>배  기  량</th>
					                      <th>색       상</th>
					                      <th>연       료</th>
					                      <th>주행 거리</th>
					                      <th>판매 구분</th>
					                      <th>사고 여부</th>                                      
					                  </tr>
					              </thead>   
					              <tbody>
					                <tr>
					                    <td>Donna R. Folse</td>
					                    <td>2012/05/06</td>
					                    <td>Editor</td>
					                    <td><span class="label label-success">Active</span>
					                    <td>Editor</td>
					                    <td>Editor</td>
					                    <td>Editor</td>
					                    <td>Editor</td>
					                    <td>Editor</td>
					                    <td>Editor</td>
					                                                         
					                </tr>
					                <thead>
					                <tr>
					                    <td colspan="10" align="center" data-toggle="collapse" data-target="#car-info">
					  						
					<div class="panel panel-default clearfix">
							<!-- header -->
                            <div class="col-xs-12 toggle-header">
                                <div class="col-xs-12">
                                    <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">
                                        <i class="glyphicon glyphicon-resize-vertical"></i>상품 세부 사항 확인시 클릭하십시오.
                                    </button>
                                </div>
                            </div>
                            <!-- /header -->
                            <br><br><br>
                            
                            <!--  collapse -->
                                <div id="demo" class="collapse">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    [내|외장] 옵션                                            
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                            </div>
                                        </div>
                                          
                                         <!--  편의 장치  시작  -->
                                         <div class="panel-body">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    [편 의 장 치]                                           
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <!--  편의 장치   -->
                                         <!--  안전 장치  시작  -->
                                         <div class="panel-body">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    [안 전 장 치]                                           
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <!--  안전 장치   -->
                                       <!--  튜닝  사항 시작  -->
                                         <div class="panel-body">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    [튜 닝 사 항]                                            
                                                </div>
                                                <div class="col-xs-1 text-left">
                                                	<p>가나다라마바</p>
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <!--  튜닝사항   -->
                                         <!--  AV/오디오/항범  시작  -->
                                         <div class="panel-body">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    [AV/오디오/항범]                                            
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-1 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <!--  편의 장치   -->
                                         
                                     </div>
                                     <!-- /collapse -->
                            </div>
                        </td>
					  </tr>
                   </thead>                          
             	 </tbody>
            	</table>
			</div>
		</div>
					<span class="clearfix borda"></span>
				</article>
			</section>	
		</div>
						
						<!--  이전 최종 확인 부분  -->
						<br><br><br>
								<div class="col-md-8 col-md-offset-2" align="center">
									<button type="button" class="btn btn-danger btn-lg"
										style="width: 40%;">
										<span class="glyphicon glyphicon-ok-sign"></span>이전
									</button>
									<button type="button" class="btn btn-primary btn-lg"
										style="width: 40%;">
										<span class="glyphicon glyphicon-ok-sign"></span>최종확인
									</button>						
								</div>
						<br>
					</div>
								<!-- row / end -->
							</div>
							<!-- container / end -->
						</div>
						
						
						
						
=======
>>>>>>> .r32
						<div class="clearfix"></div>
					</div>
				</div>
				<!--  다섯번째 끝     -->
				
				
			</div>
		</div>
	</section>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
		<!--  <script src="js/sell.js"></script>-->

	<!-- image upload -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

	<!-- Include all compiled plugins (below), or include individual files as needed -->

	<script src="
  js/jasny-bootstrap.min.js"></script>

</body>
</html>