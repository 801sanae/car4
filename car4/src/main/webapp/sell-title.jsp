<%@ page language="java" contentType="text/html; charset=EUC-KR"
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


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
							<li class="active"><a href="#home" data-toggle="tab"
								title="판매자 정보입력"> <span class="round-tabs one"> <i
										class="glyphicon glyphicon-home"></i>
								</span>
							</a></li>
							<!-- 첫번째 li 끝-->

							<!-- 두번째 li -->
							<li><a href="#profile" data-toggle="tab" title="profile">
									<span class="round-tabs two"> <i
										class="glyphicon glyphicon-user"></i>
								</span>
							</a></li>
							<!-- 두번째 li 끝  -->

							<!-- 세번째 li -->
							<li><a href="#ppp" data-toggle="tab" title="ppp"> <span
									class="round-tabs two"> <i
										class="glyphicon glyphicon-user"></i>
								</span>
							</a></li>
							<!-- 세번째 li 끝-->

							<!-- 네번째 li -->
							<li><a href="#doner" data-toggle="tab" title="blah blah">
									<span class="round-tabs four"> <i
										class="glyphicon glyphicon-comment"></i>
								</span>
							</a></li>
							<!-- 네번째 li 끝 -->

							<!-- 다섯번째 li -->
							<li><a href="#five" data-toggle="tab" title="blah blah">
									<span class="round-tabs four"> <i
										class="glyphicon glyphicon-comment"></i>
								</span>
							</a></li>
						</ul>
					</div>


					<!-- 첫번째 동그라미 클릭시 div -->
					<div class="tab-content">
						<div class="tab-pane fade in active" id="home">
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

											<br><br><br><br><br>
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
						<div class="tab-pane fade" id="profile">
							<!-- carinfo start -->
							<div class="col-md-9 col-md-offset-2">
								<div class="row">
									<form class="form-horizontal" role="form">

										<div class="form-group">
											<label class="control-label col-md-1" for="phone">차량번호
												|</label>

											<div class="col-md-2">
												<input class="form-control" id="" placeholder="입력">
											</div>
											<button type="button" class="btn btn-default"
												data-dismiss="modal">확인</button>

											<input type="checkbox" class="checkthis" />임시번호/직수입등록 <input
												type="checkbox" class="checkthis" />사고이력조회
										</div>

										<div class="form-group">
											<label class="control-label col-md-1" for="phone">차량명
												|</label>

											<div class="col-md-4">
												<input class="form-control" id="" placeholder="입력">
											</div>

											<div class="col-sm-2">
												<select class="form-control">

													<option>등급</option>
													<option>1</option>
													<option>2</option>
													<option>3</option>

												</select>
											</div>
											<div class="col-sm-3">
												<select class="form-control">

													<option>세부등급</option>
													<option>1</option>
													<option>2</option>
													<option>3</option>

												</select>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-1" for="phone">연식
												|</label>

											<div class="col-sm-2">
												<select class="form-control">

													<option>년</option>
													<option>2015</option>
													<option>2014</option>
													<option>2013</option>

												</select>
											</div>
											<div class="col-sm-1">
												<select class="form-control">

													<option>월</option>
													<option>1</option>
													<option>2</option>
													<option>3</option>

												</select>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-1" for="phone">변속기
												|</label>

											<div class="col-md-2" s>
												<select class="form-control">

													<option>선택</option>
													<option>자동</option>
													<option>수동</option>
												</select>
											</div>

											<label class="control-label col-md-1 col-md-offset-4"
												for="phone">형식년도 |</label>

											<div class="col-md-2">
												<select class="form-control">

													<option>년형</option>
													<option>2015</option>
													<option>2014</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-1" for="phone">배기량
												|</label>


											<div class="col-md-1">
												<input class="form-control" id="" placeholder="입력" />

											</div>
											<div class="col-md-1 " style="">cc</div>

											<label class="control-label col-md-1 col-md-offset-4"
												for="phone">연료 |</label>

											<div class="col-md-2">
												<select class="form-control">

													<option>선택</option>
													<option>가솔린</option>
													<option>디젤</option>
													<option>LPG</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-1" for="phone">색상
												|</label>

											<div class="col-md-2">
												<select class="form-control">

													<option>선택</option>
													<option>빨강</option>
													<option>노랑</option>
													<option>블랙</option>
												</select>
											</div>
											<label class="control-label col-md-1 col-md-offset-4"
												for="phone">주행거리 |</label>

											<div class="col-md-1">
												<input class="form-control" id="" placeholder="입력" />

											</div>
											<div class="" style="">Km</div>

										</div>

										<div class="form-group">
											<label class="control-label col-md-1" for="phone">판매구분
												|</label>
											<div class="col-md-4">
												<input type="checkbox" class="checkthis" />일반차량 <input
													type="checkbox" class="checkthis" />리스승계차량 <input
													type="checkbox" class="checkthis" />할부승계차량
											</div>

											<label class="control-label col-md-1 col-md-offset-2"
												for="phone">사고여부 |</label>
											<div class="col-md-2">
												<input type="checkbox" class="checkthis" />무사고 <input
													type="checkbox" class="checkthis" />사고
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-1" for="phone">판매가격
												|</label>

											<div class="col-md-2">
												<input class="form-control" id="" placeholder="입력" />

											</div>
											<div>만원</div>

										</div>
										<br><br>
										<div class="col-md-8 col-md-offset-1" align="center">
												<button type="button" class="btn btn-danger btn-lg"
													style="width: 40%;">
													<span class="glyphicon glyphicon-ok-sign"></span>이전
												</button>
												<button type="button" class="btn btn-primary btn-lg"
													style="width: 40%;">
													<span class="glyphicon glyphicon-ok-sign"></span>다음
												</button>
							</div>
									</form>

								</div>
							</div>
							<!-- carinfo end -->
						</div>


						<!-- 세번째 동그라미 클릭시 div -->
						<div class="tab-pane fade" id="ppp">

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
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<h4 class="panel-title">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false" class="collapsed">내/외장옵</a>
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													</h4>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</div>
												<div id="collapse1" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
													<div class="panel-body">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input id="powerWindow" type="checkbox" name="checkbox-test1" value="one"   =""> <label for="powerWindow">파워윈도우</label>
														<input id="aircorn" type="checkbox" name="checkbox-test2" value="two"> <label for="aircorn">에어콘</label> <input id="fullautoAircorn" type="checkbox" name="checkbox-test3" value="three"> <label for="fullautoAircorn">풀오토에어콘</label> <input id="leftrightAircorn" type="checkbox" name="checkbox-test4" value="four"> <label for="leftrightAircorn">좌/우독립에어콘</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="gaJuksheet" type="checkbox" name="checkbox-test5" value="one"> <label for="gajukSheet">가죽시트</label> <input id="warmSheet" type="checkbox" name="checkbox-test6" value="two">
														<label for="warmSheet">열선시트</label> <input id="windSheet" type="checkbox" name="checkbox-test7" value="three">
														<label for="windSheet">통풍시트</label> <input id="masagiSheet" type="checkbox" name="checkbox-test8" value="four"> <label for="masagiSheet">마사지시트</label>&nbsp;&nbsp;&nbsp;&nbsp;

														<input id="bucketSheet" type="checkbox" name="checkbox-test9" value="one"   =""> <label for="bucketSheet">버켓시트</label> <input id="memorySheet" type="checkbox" name="checkbox-test10" value="two">
														<label for="memorySheet">메모리시트</label> <input id="foldingSheet" type="checkbox" name="checkbox-test11" value="three"> <label for="foldingSheet">분활폴딩시트</label>
														<input id="driveSheet" type="checkbox" name="checkbox-test12" value="four"> <label for="driveSheet">운전석전동시트</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="dualSheet" type="checkbox" name="checkbox-test13" value="one"> <label for="dualSheet">동승석전동시트</label> <input id="backSheet" type="checkbox" name="checkbox-test14" value="two">
														<label for="backSheet">뒷자석전동시트</label> <input id="aroWheel" type="checkbox" name="checkbox-test15" value="three"> <label for="aroWheel">알루미뇸휠</label>
														<input id="chromWheel" type="checkbox" name="checkbox-test16" value="four"> <label for="chromWheel">크롬휠</label><input id="wideTiger" type="checkbox" name="checkbox-test17" value="four">
														<label for="wideTiger">광폭타이어</label><input id="sharkY" type="checkbox" name="checkbox-test18" value="four">
														<label for="sharkY">샤크안테나</label>&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading"><h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse2" class="collapsed" aria-expanded="false">편의장치1</a></h4></div>
												<div id="collapse2" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;"><div class="panel-body">
														<input id="powerWindow" type="checkbox" name="checkbox-test1" value="one"   =""> <label for="powerWindow">썬루</label> <input id="aircorn" type="checkbox" name="checkbox-test2" value="two">
														<label for="aircorn">파노라마썬루</label> <input id="fullautoAircorn" type="checkbox" name="checkbox-test3" value="three"> <label for="fullautoAircorn">HID/제논램</label> <input id="leftrightAircorn" type="checkbox" name="checkbox-test4" value="four"> <label for="leftrightAircorn">오토라이트</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="gaJuksheet" type="checkbox" name="checkbox-test5" value="one"> <label for="gajukSheet">스마트키/키레스고</label> <input id="warmSheet" type="checkbox" name="checkbox-test6" value="two">
														<label for="warmSheet">엔진스타트버튼</label> <input id="windSheet" type="checkbox" name="checkbox-test7" value="three"> <label for="windSheet">라이트세척장</label>
														<input id="masagiSheet" type="checkbox" name="checkbox-test8" value="four"> <label for="masagiSheet">주차조향보조시스</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="bucketSheet" type="checkbox" name="checkbox-test9" value="one"   =""> <label for="bucketSheet">전자주차브레이</label> <input id="memorySheet" type="checkbox" name="checkbox-test10" value="two">
														<label for="memorySheet">이모빌라이</label> <input id="foldingSheet" type="checkbox" name="checkbox-test11" value="three"> <label for="foldingSheet">트립컴퓨터</label>
														<input id="driveSheet" type="checkbox" name="checkbox-test12" value="four"> <label for="driveSheet">슈퍼비전계기</label>&nbsp;&nbsp;&nbsp;&nbsp; <input id="dualSheet" type="checkbox" name="checkbox-test13" value="one"> <label for="dualSheet">HUD</label> <input id="backSheet" type="checkbox" name="checkbox-test14" value="two"> <label for="backSheet">나이트비</label>
														<input id="aroWheel" type="checkbox" name="checkbox-test15" value="three"> <label for="aroWheel">ECM룸미</label> <input id="chromWheel" type="checkbox" name="checkbox-test16" value="four">
														<label for="chromWheel">쿠르즈컨트</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="wideTiger" type="checkbox" name="checkbox-test17" value="four"> <label for="wideTiger">에어서스펜</label>&nbsp;&nbsp;&nbsp;&nbsp; <input id="sharkY" type="checkbox" name="checkbox-test18" value="four"> <label for="sharkY">전동트렁</label></div></div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<h4 class="panel-title">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a data-toggle="collapse" data-parent="#accordion" href="#collapse3" class="collapsed" aria-expanded="false">편의장치2</a>
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													</h4>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</div>
												<div id="collapse3" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<div class="panel-body" align="center">

														<input id="powerWindow" type="checkbox" name="checkbox-test1" value="one"   =""> <label for="powerWindow">파워핸들</label> <input id="aircorn" type="checkbox" name="checkbox-test2" value="two">
														<label for="aircorn">히팅핸들</label> <input id="fullautoAircorn" type="checkbox" name="checkbox-test3" value="three"> <label for="fullautoAircorn">리모컨핸들</label> <input id="leftrightAircorn" type="checkbox" name="checkbox-test4" value="four"> <label for="leftrightAircorn">가죽/우드핸들</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="gaJuksheet" type="checkbox" name="checkbox-test5" value="one"> <label for="gajukSheet">속도감응식핸들</label> <input id="warmSheet" type="checkbox" name="checkbox-test6" value="two">
														<label for="warmSheet">원격시동장</label> <input id="windSheet" type="checkbox" name="checkbox-test7" value="three">
														<label for="windSheet">무선도어리모컨</label> <input id="masagiSheet" type="checkbox" name="checkbox-test8" value="four"> <label for="masagiSheet">유아시트고정장</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="bucketSheet" type="checkbox" name="checkbox-test9" value="one"   =""> <label for="bucketSheet">패들쉬프트</label> <input id="memorySheet" type="checkbox" name="checkbox-test10" value="two">
														<label for="memorySheet">압축도어</label> <input id="foldingSheet" type="checkbox" name="checkbox-test11" value="three"> <label for="foldingSheet">자동도어잠</label>
														<input id="driveSheet" type="checkbox" name="checkbox-test12" value="four"> <label for="driveSheet">자동슬라이딩도어</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="dualSheet" type="checkbox" name="checkbox-test13" value="one"> <label for="dualSheet">전동접이식미러</label> <input id="backSheet" type="checkbox" name="checkbox-test14" value="two">
														<label for="backSheet">냉장</label> <input id="aroWheel" type="checkbox" name="checkbox-test15" value="three">
														<label for="aroWheel">루프캐리어</label> <input id="chromWheel" type="checkbox" name="checkbox-test16" value="four">
														<label for="chromWheel">에어스카프</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="wideTiger" type="checkbox" name="checkbox-test17" value="four"> <label for="wideTiger">공기청정</label>&nbsp;&nbsp;&nbsp;&nbsp; <input id="sharkY" type="checkbox" name="checkbox-test18" value="four"> <label for="sharkY">전동햇빛가리개</label>

													</div>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<h4 class="panel-title">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a data-toggle="collapse" data-parent="#accordion" href="#collapse6" class="collapsed" aria-expanded="false">안전장치</a>
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													</h4>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</div>
												<div id="collapse6" class="panel-collapse collapse" aria-expanded="false">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<div class="panel-body" align="center">
														<div class="row">
															&nbsp;&nbsp;
															<div class="col-sm-4">
																&nbsp;&nbsp;<label for="powerWindow">파워핸들</label> <input id="aircorn" type="checkbox" name="checkbox-test2" value="two"> <label for="aircorn">히팅핸들</label>
																<input id="fullautoAircorn" type="checkbox" name="checkbox-test3" value="three"> <label for="fullautoAircorn">리모컨핸들</label> <input id="leftrightAircorn" type="checkbox" name="checkbox-test4" value="four"> <label for="leftrightAircorn">가죽/우드핸들</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																<input id="gaJuksheet" type="checkbox" name="checkbox-test5" value="one"> <label for="gajukSheet">속도감응식핸들</label> <input id="warmSheet" type="checkbox" name="checkbox-test6" value="two">
																<input id="aircorn" type="checkbox" name="checkbox-test2" value="two"> <label for="aircorn">히팅핸들</label> <input id="fullautoAircorn" type="checkbox" name="checkbox-test3" value="three">
																<label for="fullautoAircorn">리모컨핸들</label> <input id="leftrightAircorn" type="checkbox" name="checkbox-test4" value="four"> <label for="leftrightAircorn">가죽/우드핸들</label>&nbsp;&nbsp;&nbsp;
																&nbsp;&nbsp;
															</div>
															&nbsp;&nbsp;
															<div class="col-sm-4">
																&nbsp;&nbsp; &nbsp;&nbsp;<input id="aircorn" type="checkbox" name="checkbox-test2" value="two">
																<label for="aircorn">히팅핸들</label> <input id="fullautoAircorn" type="checkbox" name="checkbox-test3" value="three"> <label for="fullautoAircorn">리모컨핸들</label> <input id="leftrightAircorn" type="checkbox" name="checkbox-test4" value="four"> <label for="leftrightAircorn">가죽/우드핸들</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																<input id="gaJuksheet" type="checkbox" name="checkbox-test5" value="one"> <label for="gajukSheet">속도감응식핸들</label> <input id="warmSheet" type="checkbox" name="checkbox-test6" value="two">
																<input id="aircorn" type="checkbox" name="checkbox-test2" value="two"> <label for="aircorn">히팅핸들</label> <input id="fullautoAircorn" type="checkbox" name="checkbox-test3" value="three">
																<label for="fullautoAircorn">리모컨핸들</label> <input id="leftrightAircorn" type="checkbox" name="checkbox-test4" value="four"> <label for="leftrightAircorn">가죽/우드핸들</label>&nbsp;&nbsp;&nbsp;
																&nbsp;&nbsp; &nbsp;&nbsp;
															</div>
															&nbsp;&nbsp;
															<div class="col-sm-4">
																&nbsp;&nbsp; <input id="aircorn" type="checkbox" name="checkbox-test2" value="two"> <label for="aircorn">히팅핸들</label> <input id="fullautoAircorn" type="checkbox" name="checkbox-test3" value="three">
																<label for="fullautoAircorn">리모컨핸들</label> <input id="leftrightAircorn" type="checkbox" name="checkbox-test4" value="four"> <label for="leftrightAircorn"> 가죽/우드핸들 </label> <input id="gaJuksheet" type="checkbox" name="checkbox-test5" value="one"> <label for="gajukSheet">속도감응식핸들</label>
																<input id="warmSheet" type="checkbox" name="checkbox-test6" value="two">&nbsp;&nbsp;
																<label for="aircorn">히팅핸들</label> <input id="fullautoAircorn" type="checkbox" name="checkbox-test3" value="three"> <label for="fullautoAircorn">리모컨핸들</label> <input id="leftrightAircorn" type="checkbox" name="checkbox-test4" value="four"> <label for="leftrightAircorn">가죽/우드핸들</label>&nbsp;&nbsp;&nbsp;
																&nbsp;&nbsp; &nbsp;&nbsp;
															</div>
														</div>
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													</div>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<h4 class="panel-title">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a data-toggle="collapse" data-parent="#accordion" href="#collapse4" class="collapsed" aria-expanded="false">AV/오디오/항범</a>
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													</h4>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</div>
												<div id="collapse4" class="panel-collapse collapse" aria-expanded="false">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<div class="panel-body">Lorem ipsum dolor sit amet,
														consectetur adipisicing elit,
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sed do
														eiusmod tempor incididunt ut labore et dolore magna
														aliqua. Ut enim ad minim veniam,
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;quis
														nostrud exercitation ullamco laboris nisi ut aliquip ex ea
														commodo consequat.</div>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<h4 class="panel-title">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a data-toggle="collapse" data-parent="#accordion" href="#collapse5" class="collapsed" aria-expanded="false">튜닝사항</a>
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													</h4>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</div>
												<div id="collapse5" class="panel-collapse collapse" aria-expanded="false">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<div class="panel-body">Lorem ipsum dolor sit amet,
														consectetur adipisicing elit,
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sed do
														eiusmod tempor incididunt ut labore et dolore magna
														aliqua. Ut enim ad minim veniam,
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;quis
														nostrud exercitation ullamco laboris nisi ut aliquip ex ea
														commodo consequat.</div>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</div>
											</div>
										</div>
									</div>
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
						<div class="tab-pane fade" id="doner">
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
						<div class="tab-pane fade" id="five">
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
															<h3><a href="#" title="">Voluptatem, exercitationem, suscipit, distinctio</a></h3>
															<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, exercitationem, suscipit, distinctio, qui sapiente aspernatur molestiae non corporis magni sit sequi iusto debitis delectus doloremque.</p>						
											                
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
														                <tr>
														                    <td>Emily F. Burns</td>
														                    <td>2011/12/01</td>
														                    <td>Staff</td>
														                    <td><span class="label label-success">Banned</span></td>
														                    <td>Editor</td>
														                    <td>Editor</td>
														                    <td>Editor</td>
														                    <td>Editor</td>
														                    <td>Editor</td>                                       
														                </tr>
														                <tr>
														                    <td>Andrew A. Stout</td>
														                    <td>2010/08/21</td>
														                    <td>User</td>
														                    <td><span class="label label-success">Banned</span></td>
														                    <td>Editor</td>
														                    <td>Editor</td>
														                    <td>Editor</td>
														                    <td>Editor</td>
														                    <td>Editor</td>
														                    <td>Editor</td>                                        
														                </tr>
														                <tr>
														                    <td>Mary M. Bryan</td>
														                    <td>2009/04/11</td>
														                    <td>Editor</td>
														                    <td><span class="label label-warning">Pending</span></td>
														                    <td>Editor</td>
														                    <td>Editor</td>
														                    <td>Editor</td>
														                    <td>Editor</td>
														                    <td>Editor</td>
														                    <td>Editor</td>                                       
														                </tr>
														                <tr>
														                    <td>Mary A. Lewis</td>
														                    <td>2007/02/01</td>
														                    <td>Staff</td>
														                    <td><span class="label label-success">Active</span></td>
														                    <td>Editor</td>
														                    <td>Editor</td>
														                    <td>Editor</td>
														                    <td>Editor</td>
														                    <td>Editor</td>
														                    <td>Editor</td>                                        
														                </tr>                                   
														              </tbody>
														            </table>
														            </div>

						
											                
														</div>
														<span class="clearfix borda"></span>
													</article>
											
														
												</section>	
											</div>
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
						
						
						
						
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script src="js/sell.js"></script>

	<!-- image upload -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://code.jquery.com/jquery.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="
  js/jasny-bootstrap.min.js"></script>

</body>
</html>