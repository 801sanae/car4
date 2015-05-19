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

							<!-- 다섯번째 li -->
							<li><a href="#doner" data-toggle="tab" title="blah blah">
									<span class="round-tabs four"> <i
										class="glyphicon glyphicon-comment"></i>
								</span>
							</a></li>
							<!-- 다섯번째 li 끝 -->

							<!-- 여섯번째 li -->
							<li><a href="#doner" data-toggle="tab" title="completed">
									<span class="round-tabs five"> <i
										class="glyphicon glyphicon-ok"></i>
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
						<div class="tab-pane fade" id="profile">
							<!-- carinfo start -->
							<div class="col-md-9 col-md-offset-2">
								<form class="form-horizontal" name="form2" role="form">
									<div class="row">
									

										<div class="form-group">
											<label class="control-label col-md-1" id="p_carNo" name="p_carNo" >차량번호
												|</label>

											<div class="col-md-2">
												<input type="text" class="form-control" id="" placeholder="입력">
											</div>
											

											<input type="checkbox" class="checkthis" />&nbsp;임시번호/직수입등록
										</div>

										<div class="form-group">
											<label class="control-label col-md-1" for="phone">차량명
												|</label>

											<div class="col-md-2">
												<select class="form-control" id="p_manuCountry" name="p_manuCountry" >

													<option>제조국</option>
													<option>1</option>
													<option>2</option>
													<option>3</option>

												</select>
											</div>
											
											<div class="col-md-2">
												<select class="form-control" id="p_manuCompany" name="p_manuCompany">

													<option>제조사</option>
													<option>1</option>
													<option>2</option>
													<option>3</option>

												</select>
											</div>
											
											<div class="col-md-2">
												<select class="form-control" id="p_model" name="p_model">

													<option>모델명</option>
													<option>1</option>
													<option>2</option>
													<option>3</option>

												</select>
											</div>
											
											<label class="control-label col-md-1 
												for="phone">색상 |</label>

											<div class="col-md-2">
												<select class="form-control" id="p_color" name="p_color">

													<option>년형</option>
													<option>2015</option>
													<option>2014</option>
												</select>
											</div>
											
										</div>

										<div class="form-group">
											<label class="control-label col-md-1" >연식
												|</label>

											<div class="col-sm-2">
												<select class="form-control" id="p_year" name="p_year">

													<option>년</option>
													<option>2015</option>
													<option>2014</option>
													<option>2013</option>

												</select>
											</div>
											<div class="col-sm-1">
												<select class="form-control" id="p_month" name="p_month">

													<option>월</option>
													<option>1</option>
													<option>2</option>
													<option>3</option>

												</select>
											</div>
											
											<label class="control-label col-md-1 col-md-offset-3"
												for="phone">형식년도 |</label>

											<div class="col-md-2">
												<select class="form-control" id="p_carYear" name="p_carYear">

													<option>년형</option>
													<option>2015</option>
													<option>2014</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-1" for="phone">변속기
												|</label>

											<div class="col-md-4">
												<div class="col-md-5"  style="margin-left:-3%;">
													<input type="radio" id="p_trans" name="p_trans" value="p_auto" checked/>&nbsp;자동
													&nbsp;&nbsp;
													<input type="radio" id="p_trans" name="p_trans" value="p_passive" />&nbsp;수동
												</div>
											</div>

											<label class="control-label col-md-1 col-md-offset-2"
												for="phone">연료 |</label>

											<div class="col-md-2">
												<select class="form-control" id="p_fuel" name="p_fuel">

													<option>선택</option>
													<option name="p_gasoline">가솔린</option>
													<option name="p_diesel">디젤</option>
													<option name="p_lpg">LPG</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-1" >배기량
												|</label>


											<div class="col-md-1">
												<input type="text" class="form-control" id="p_cc" name="p_cc" placeholder="입력" />

											</div>
											<div class="col-md-1">CC</div>

											<label class="control-label col-md-1 col-md-offset-4"
												for="phone">주행거리 |</label>

											<div class="col-md-1">
												<input type="text"  class="form-control" id="p_km" name="p_km" placeholder="입력" />

											</div>
											<div class="" style="margin-top:1%;">Km</div>

										</div>

										<div class="form-group">
											<label class="control-label col-md-1" for="phone">판매구분
												|</label>
											<div class="col-md-4">
												<input type="radio" id="p_sell" name="p_sell" value="p_common" checked />&nbsp;일반차량 
												&nbsp;&nbsp;
												<input type="radio" id="p_sell" name="p_sell" value="p_lease" />&nbsp;리스승계차량
												&nbsp;&nbsp;
												<input type="radio" id="p_sell" name="p_sell" value="p_installment"  />&nbsp;할부승계차량
											</div>

											<label class="control-label col-md-1 col-md-offset-2"
												for="phone">사고여부 |</label>
											<div class="col-md-2">
												<input type="radio" id="p_accident" name="p_accident" value="p_noAcc" checked />&nbsp;무사고
												&nbsp;&nbsp;
												<input type="radio" id="p_accident" name="p_accident" value="p_yesAcc" />&nbsp;사고
											</div>
										</div>

										
										
										<div class="form-group">
											<label class="control-label col-md-1" for="phone">성능상태점검기록부
												|</label>
											<div class="col-md-4">
												<button type="button" class="btn btn-default" id="p_perfor" name="p_perfor" style="margin-top:2%;">&nbsp;&nbsp;&nbsp;첨부하기&nbsp;&nbsp;&nbsp;</button>
											</div>

											<label class="control-label col-md-1 col-md-offset-2"
												for="phone">전문평가사 |</label>
											<div class="col-md-2">
												<input type="radio" id="p_req" name="p_req" value="p_yes" checked />&nbsp;요청
												&nbsp;&nbsp;
												<input type="radio" id="p_req" name="p_req" value="p_no" />&nbsp;미요청
											</div>
										</div>

										
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
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion"
															href="#collapse1" aria-expanded="false" class="collapsed">내/외장옵션</a>
													</h4>
												</div>
												<div id="collapse1" class="panel-collapse collapse"
													aria-expanded="false" style="height: 0px;">
													<div class="panel-body">
														<input id="powerWindow" type="checkbox"
															name="checkbox-test1" value="one"><label
															for="powerWindow">파워윈도우</label>&nbsp;&nbsp;&nbsp;&nbsp;<input
															id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">에어콘</label>&nbsp;&nbsp;&nbsp;&nbsp;<input
															id="fullautoAircorn" type="checkbox"
															name="checkbox-test3" value="three"><label
															for="fullautoAircorn">풀오토에어콘</label>&nbsp;&nbsp;&nbsp;&nbsp;<input
															id="leftrightAircorn" type="checkbox"
															name="checkbox-test4" value="four"><label
															for="leftrightAircorn">좌/우독립에어콘</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="gaJuksheet" type="checkbox"
															name="checkbox-test5" value="one"><label
															for="gajukSheet">가죽시트</label>&nbsp;&nbsp;&nbsp;&nbsp;<input
															id="warmSheet" type="checkbox" name="checkbox-test6"
															value="two"> <label for="warmSheet">열선시트</label>&nbsp;&nbsp;&nbsp;&nbsp;<input
															id="windSheet" type="checkbox" name="checkbox-test7"
															value="three"> <label for="windSheet">통풍시트</label>&nbsp;&nbsp;&nbsp;&nbsp;<input
															id="masagiSheet" type="checkbox" name="checkbox-test8"
															value="four"><label for="masagiSheet">마사지시트</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="bucketSheet" type="checkbox"
															name="checkbox-test9" value="one"><label
															for="bucketSheet">버켓시트</label>&nbsp;&nbsp;&nbsp;&nbsp;<input
															id="memorySheet" type="checkbox" name="checkbox-test10"
															value="two"> <label for="memorySheet">메모리시트</label>&nbsp;&nbsp;&nbsp;&nbsp;
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
														<input id="powerWindow" type="checkbox"
															name="checkbox-test1" value="one"><label
															for="powerWindow">썬루프</label>&nbsp;&nbsp;&nbsp;&nbsp;<input
															id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">파노라마썬루</label>&nbsp;&nbsp;&nbsp;&nbsp;<input
															id="fullautoAircorn" type="checkbox"
															name="checkbox-test3" value="three"> <label
															for="fullautoAircorn">HID/제논램</label>&nbsp;&nbsp;&nbsp;&nbsp;<input
															id="leftrightAircorn" type="checkbox"
															name="checkbox-test4" value="four"> <label
															for="leftrightAircorn">오토라이트</label>&nbsp;&nbsp;&nbsp;&nbsp;<input
															id="gaJuksheet" type="checkbox" name="checkbox-test5"
															value="one"> <label for="gajukSheet">스마트키/키레스고</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="warmSheet" type="checkbox"
															name="checkbox-test6" value="two"> <label
															for="warmSheet">엔진스타트버튼</label>&nbsp;&nbsp;&nbsp;&nbsp;<input
															id="windSheet" type="checkbox" name="checkbox-test7"
															value="three"> <label for="windSheet">라이트세척장</label>&nbsp;&nbsp;&nbsp;&nbsp;<input
															id="masagiSheet" type="checkbox" name="checkbox-test8"
															value="four"> <label for="masagiSheet">주차조향보조시스</label>&nbsp;&nbsp;&nbsp;&nbsp;
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
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="powerWindow">운전석에어백</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">동승석에어백</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="powerWindow">측에어백</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">커튼에어</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="powerWindow">승객감지에어</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">무릎보호에어</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<label for="powerWindow">액티브헤드레스트</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">ABS</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="powerWindow">BAS</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">EBD</label>
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
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="powerWindow">내비게이션</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">하이패스</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="powerWindow">블랙박</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">핸즈프리</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="powerWindow">블루투스</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">DVD플레이어</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<label for="powerWindow">DMB</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">MP3</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="powerWindow">아이폰단자</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">USB</label>&nbsp;&nbsp;&nbsp;&nbsp;
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
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="powerWindow">터보차</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">에어로파</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="powerWindow">슈퍼차</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">미션</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="powerWindow">핸들</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">미션</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<label for="powerWindow">계기판</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">스포일러</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="powerWindow">오디</label>&nbsp;&nbsp;&nbsp;&nbsp;
														<input id="aircorn" type="checkbox" name="checkbox-test2"
															value="two"> <label for="aircorn">힐/타이</label>&nbsp;&nbsp;&nbsp;&nbsp;
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

						<!-- 다섯번째 동그라미 클릭시 div -->
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