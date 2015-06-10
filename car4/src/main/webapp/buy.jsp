<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css\bootstrap.css" rel="stylesheet">
<link href="css\bootstrap-theme.min.css" rel="stylesheet">
<link href="css\listClick.css" rel="stylesheet">
<link href="css\test.css" rel="stylesheet">


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>buyTitle</title>

<script>
/****리스트 value넘기기 *****/
 
function listValueSeparate(obj, id) {
  	
	if(id=='manuCountry') {
		//alert("ddddd :"+ $("#manuCountry").val(obj.name) );
		return $("#manuCountry").val(obj.name);
	} else if(id=='manuCo') {
		//alert("ddddd :"+ $("#manuCo").val(obj.id) );
		return $("#manuCo").val(obj.id);
	} else if(id=='model') {
		//alert("ddddd :"+ $("#model").val(obj.id) );
		return $("#model").val(obj.id);
	} else {
		alert("else");
	}
}
/****리스트 value넘기기 *****/


</script>

</head>

<body>

	<!-- header -->
	<div class="container">
		<!-- Second navbar for categories -->
		<div class="row">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="col-md-9" style="margin-top: 25px; margin-bottom: 25px;">

				<a href="#"
					style="font-size: 50px; padding-left: 20px; color: gray;">Brand</a>
			</div>

			<div class="col-md-3" style="margin-top: 10px; padding-left: 100px;">
				<a href="#" style="color: gray;">Logout</a> &nbsp; <a
					style="margin-top: 15px;">|</a> &nbsp; <a href="#"
					style="color: gray;"> 고객센터</a>
			</div>
		</div>

	</div>
	<!--/header -->


	<!-- navigation var -->
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid" style="margin-left: 48px">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
				<ul class="nav navbar-nav">
					<li><a href="#">MyList</a></li>
					<li class="dropdown mega-dropdown active"><a href="#"
						style="background-color: #f8f8f8;" class="dropdown-toggle"
						data-toggle="dropdown">등록하기</a> <!-- Sub menu -->
						<div class="dropdown-menu mega-dropdown-menu">
							<div align="center">
								<span> <a href="#" style="color: gray;" data-toggle="tab">국산차</a>&nbsp;&nbsp;
								</span> <span> <a href="#" style="color: gray;"
									data-toggle="tab">수입차</a></span>
							</div>
						</div> <!-- /.Sub menu --></li>
				</ul>

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- /navigation var -->
	
	
	
	
	<form name="buy" mehtod="post" action="addAuction.do">
		<!-- category -->
		<div class="container-fluid">

			<div class="col-md-3" style="margin-left: 80px;">



				<div class="panel-heading paneltitle"
					style="background-color: gray; color: write;">
					<h3 class="panel-title">제조국</h3>
				</div>


				<div class="list1 panel">

					<div class="list-group group1" id="list1">
						<a href="#" class="list-group-item" id="2-1" name="korea" onClick="listValueSeparate(this, 'manuCountry')">국산차</a>
						<a href="#" class="list-group-item" id="2-2" name="foreign" onClick="listValueSeparate(this, 'manuCountry')">수입차</a>
						<a href="#" class="list-group-item" id='2-3' name="etc" onClick="listValueSeparate(this, 'manuCountry')">기타</a>
						
						<input type="hidden" id="manuCountry" name="manuCountry" value="">
					</div>

				</div>

			</div>
			<div class="col-md-3" style="margin-left: 50px">

				<div class="panel-heading paneltitle"
					style="background-color: gray;">
					<h3 class="panel-title">제조사</h3>
				</div>

				<div class="list2 panel">
					<!-- 시작 -->
					<div class="make-list" id="table2">
						<br>
						<br>
						<b>
							<p align="center">제조국을 클릭하면</p>
							<p align="center">리스트가 열립니다.</p>
						</b><br>
						<br>
						<br>
					</div>
					<!-- 국내차 -->
					<div class="list-group make-list group2" id="list2-1">
						<a href="#" class="list-group-item" id="hyundai" onClick="listValueSeparate(this, 'manuCo')" ><b>현대</b></a> 
						<a href="#" class="list-group-item" id="kia" onClick="listValueSeparate(this, 'manuCo')"><b>기아</b></a> 
						<a href="#" class="list-group-item" id="chevolet" onClick="listValueSeparate(this, 'manuCo')"><b>쉐보레(GM대우)</b></a>
						<a href="#" class="list-group-item" id="renault" onClick="listValueSeparate(this, 'manuCo')"><b>르노삼성</b></a> 
						<a href="#" class="list-group-item" id="ssangyoung" onClick="listValueSeparate(this, 'manuCo')"><b>쌍용</b></a> 
						<a href="#" class="list-group-item" id="etc" onClick="listValueSeparate(this, 'manuCo')"><b>기타제조사</b></a>
					</div>
					<!-- 수입차 -->
					<div class="list-group make-list group2" id="list2-2">
						<a href="#" class="list-group-item" id="bmw" onClick="listValueSeparate(this, 'manuCo')"><b>BMW</b></a> 
						<a href="#" class="list-group-item" id="audi" onClick="listValueSeparate(this, 'manuCo')"><b>아우디</b></a> 
						<a href="#" class="list-group-item" id="volkswagen" onClick="listValueSeparate(this, 'manuCo')"><b>폭스바겐</b></a>
						<a href="#" class="list-group-item" id="mini" onClick="listValueSeparate(this, 'manuCo')"><b>미니</b></a> 
						<a href="#" class="list-group-item" id="gmc"  onClick="listValueSeparate(this, 'manuCo')"><b>GMC</b></a> 
						<a href="#" class="list-group-item" id="nissan" onClick="listValueSeparate(this, 'manuCo')"><b>닛산</b></a> 
						<a href="#" class="list-group-item" id="daigatsu" onClick="listValueSeparate(this, 'manuCo')"><b>다이하쯔</b></a> 
						<a href="#" class="list-group-item" id="dodge"  onClick="listValueSeparate(this, 'manuCo')"><b>닷지</b></a>
					</div>
					<!-- ETC -->
					<div class="list-group make-list group2" id="list2-3">
						<a href="#" class="list-group-item" id="etc1" onClick="listValueSeparate(this, 'manuCo')"><b>ETC1</b></a> 
						<a href="#" class="list-group-item" id="etc2" onClick="listValueSeparate(this, 'manuCo')"><b>ETC2</b></a>
					</div>
					
					<input type="hidden" id="manuCo" name="manuCo"/>
					
				</div>
			</div>

			<!-- 3번째 리스트 -->
			<div class="col-md-3" style="margin-left: 50px">

				<div class="panel-heading paneltitle" style="background-color: gray;">
					<h3 class="panel-title">모델</h3>
				</div>

				<div class="list3 panel">

					<div class="make-list" id="table3">
						<br>
						<br>
						<b>
							<p align="center">제조사를 클릭하면</p>
							<p align="center">리스트가 열립니다.</p>
						</b><br> <br> <br>
					</div>


					<!--  list2 에서 hyundai 클릭시  -->
					<div class="list-group make-list group3" id="list3-hyundai">
						<a href="#" class="list-group-item" id="sonata" onClick="listValueSeparate(this, 'model')">쏘나타</a> 
						<a href="#" class="list-group-item" id="grandeur" onClick="listValueSeparate(this, 'model')">그랜저</a> 
						<a href="#" class="list-group-item" id="avante" onClick="listValueSeparate(this, 'model')">아반떼</a> 
						<a href="#" class="list-group-item" id="starex" onClick="listValueSeparate(this, 'model')">스타렉스</a> 
						<a href="#" class="list-group-item" id="santafe" onClick="listValueSeparate(this, 'model')">싼타페</a> 
						<a href="#" class="list-group-item" id="genesis" onClick="listValueSeparate(this, 'model')">제네시스</a> 
						<a href="#" class="list-group-item" id="eqqus" onClick="listValueSeparate(this, 'model')">에쿠스</a> 
						<a href="#" class="list-group-item" id="tucson" onClick="listValueSeparate(this, 'model')">투싼</a> 
						<a href="#" class="list-group-item" id="trajetXG" onClick="listValueSeparate(this, 'model')">트라제 XG</a> 
						<a href="#" class="list-group-item" id="veracruz" onClick="listValueSeparate(this, 'model')">베라크루즈</a> 
						<a href="#" class="list-group-item" id="accent" onClick="listValueSeparate(this, 'model')">엑센트</a> 
						<a href="#" class="list-group-item" id="tuscans" onClick="listValueSeparate(this, 'model')">투스카니</a> 
						<a href="#" class="list-group-item" id="terracan" onClick="listValueSeparate(this, 'model')">테라칸</a> 
						<a href="#" class="list-group-item" id="galloper" onClick="listValueSeparate(this, 'model')">갤로퍼</a> 
						<a href="#" class="list-group-item" id="verna" onClick="listValueSeparate(this, 'model')">베르나</a>
					</div>

					<!--  list2 에서 kia 클릭시  -->
					<div class="list-group make-list group3" id="list3-kia">
						<a href="#" class="list-group-item" id="carnival"  onClick="listValueSeparate(this, 'model')">카니발</a> 
						<a href="#" class="list-group-item" id="morning" onClick="listValueSeparate(this, 'model')">모닝</a> 
						<a href="#" class="list-group-item" id="sportage" onClick="listValueSeparate(this, 'model')">스포티지</a> 
						<a href="#" class="list-group-item" id="k5" onClick="listValueSeparate(this, 'model')">K5</a> 
						<a href="#" class="list-group-item" id="sorrento" onClick="listValueSeparate(this, 'model')">쏘렌토</a> 
						<a href="#" class="list-group-item" id="pride" onClick="listValueSeparate(this, 'model')">프라이드</a> 
						<a href="#" class="list-group-item" id="k7" onClick="listValueSeparate(this, 'model')">K7</a> 
						<a href="#" class="list-group-item" id="opirus" onClick="listValueSeparate(this, 'model')">오피러스</a> 
						<a href="#" class="list-group-item" id="carens" onClick="listValueSeparate(this, 'model')">카렌스</a> 
						<a href="#" class="list-group-item" id="porte" onClick="listValueSeparate(this, 'model')">포르테</a>
					</div>

					<!--  list2 에서 chevolet 클릭시  -->
					<div class="list-group make-list group3" id="list3-chevolet">
						<a href="#" class="list-group-item" id="sbr" onClick="listValueSeparate(this, 'model')">쉐보레</a> 
						<a href="#" class="list-group-item" id="sbr1" onClick="listValueSeparate(this, 'model')">쉐보레모</a> 
						<a href="#" class="list-group-item" id="sbrsportage" onClick="listValueSeparate(this, 'model')">쉐보레스포티지</a> 
						<a href="#" class="list-group-item" id="sbr5" onClick="listValueSeparate(this, 'model')">쉐보레5</a> 
						<a href="#" class="list-group-item" id="sbrrrento" onClick="listValueSeparate(this, 'model')">쉐보레렌토</a> 
						<a href="#" class="list-group-item" id="sbrpride" onClick="listValueSeparate(this, 'model')">쉐보레프라이드</a> 
						<a href="#" class="list-group-item" id="sbr7" onClick="listValueSeparate(this, 'model')">쉐보레7</a> 
						<a href="#" class="list-group-item" id="sbrrus" onClick="listValueSeparate(this, 'model')">쉐보레러스</a> 
						<a href="#" class="list-group-item" id="sbrcarens" onClick="listValueSeparate(this, 'model')">쉐보레렌스</a> 
						<a href="#" class="list-group-item" id="sbrporte" onClick="listValueSeparate(this, 'model')">쉐르테</a>
					</div>

					<!--  list2 에서 renault 클릭시  -->
					<div class="list-group make-list group3" id="list3-renault">
						<a href="#" class="list-group-item" id="renacarnival" onClick="listValueSeparate(this, 'model')">르노발</a> 
						<a href="#" class="list-group-item" id="renamorning" onClick="listValueSeparate(this, 'model')">르노의모닝</a> 
						<a href="#" class="list-group-item" id="renasportage" onClick="listValueSeparate(this, 'model')">르노포티지</a> 
						<a href="#" class="list-group-item" id="reank5" onClick="listValueSeparate(this, 'model')">르노5</a> 
						<a href="#"	class="list-group-item" id="renasorrento" onClick="listValueSeparate(this, 'model')">르노</a>
					</div>

					<!--  list2 에서 ssangyoung 클릭시  -->
					<div class="list-group make-list group3" id="list3-ssangyoung">
						<a href="#" class="list-group-item" id="mooso" onClick="listValueSeparate(this, 'model')">무소</a> 
						<a href="#" class="list-group-item" id="mooso1" onClick="listValueSeparate(this, 'model')">무소1</a> 
						<a href="#" class="list-group-item" id="mooso2" onClick="listValueSeparate(this, 'model')">무소2</a> 
						<a href="#" class="list-group-item" id="mooso3" onClick="listValueSeparate(this, 'model')">무소3</a>
					</div>

					<!--  list2 에서 etc 클릭시  -->
					<div class="list-group make-list group3" id="list3-etc">
						<a href="#" class="list-group-item" id="brc" onClick="listValueSeparate(this, 'model')">보리차</a> 
						<a href="#" class="list-group-item" id="ymc" onClick="listValueSeparate(this, 'model')">율무차</a> 
						<a href="#" class="list-group-item" id="umc" onClick="listValueSeparate(this, 'model')">유모차</a>
					</div>

					<!-- 수입차 -->

					<!--  list2 에서 bmw 클릭시  -->
					<div class="list-group make-list group3" id="list3-bmw">
						<a href="#" class="list-group-item" id="carnival" onClick="listValueSeparate(this, 'model')">i567</a> 
						<a href="#" class="list-group-item" id="morning" onClick="listValueSeparate(this, 'model')">i333</a> 
						<a href="#" class="list-group-item" id="k5" onClick="listValueSeparate(this, 'model')">K5</a> 
						<a href="#" class="list-group-item" id="sorrento" onClick="listValueSeparate(this, 'model')">쏘렌토</a> 
						<a href="#" class="list-group-item" id="pride" onClick="listValueSeparate(this, 'model')">프라이드</a> 
						<a href="#" class="list-group-item" id="k7" onClick="listValueSeparate(this, 'model')">K7</a> 
						<a href="#" class="list-group-item" id="opirus" onClick="listValueSeparate(this, 'model')">오피러스</a> 
						<a href="#" class="list-group-item" id="carens" onClick="listValueSeparate(this, 'model')">카렌스</a> 
						<a href="#" class="list-group-item" id="porte" onClick="listValueSeparate(this, 'model')">포르테</a>
					</div>

					<!--  list2 에서 audi 클릭시  -->
					<div class="list-group make-list group3" id="list3-audi">
						<a href="#" class="list-group-item" id="a4" onClick="listValueSeparate(this, 'model')">A4</a> 
						<a href="#" class="list-group-item" id="a6" onClick="listValueSeparate(this, 'model')">A6</a>
					</div>

					<!--  list2 에서 volkswagen 클릭시  -->
					<div class="list-group make-list group3" id="list3-volkswagen">
						<a href="#" class="list-group-item" id="foxbagan" onClick="listValueSeparate(this, 'model')">여우바겐</a> 
						<a href="#" class="list-group-item" id="foxbar" onClick="listValueSeparate(this, 'model')">fox바</a> 
						<a href="#" class="list-group-item" id="bargensale" onClick="listValueSeparate(this, 'model')">바겐세일</a>
					</div>

					<!--  list2 에서 mini 클릭시  -->
					<div class="list-group make-list group3" id="list3-mini">
						<a href="#" class="list-group-item" id="mini" onClick="listValueSeparate(this, 'model')">mini</a> 
						<a href="#" class="list-group-item" id="junmini" onClick="listValueSeparate(this, 'model')">jungmini</a> 
						<a href="#" class="list-group-item" id="hani" onClick="listValueSeparate(this, 'model')">hani</a>
					</div>

					<!--  list2 에서 gmc 클릭시  -->
					<div class="list-group make-list group3" id="list3-gmc">
						<a href="#" class="list-group-item" id="gmc1" onClick="listValueSeparate(this, 'model')">GMC1</a> 
						<a href="#" class="list-group-item" id="gmc2" onClick="listValueSeparate(this, 'model')">GMC2</a> 
						<a href="#" class="list-group-item" id="gmc3" onClick="listValueSeparate(this, 'model')">GMC3</a>
					</div>

					<!--  list2 에서 nissan 클릭시  -->
					<div class="list-group make-list group3" id="list3-nissan">
						<a href="#" class="list-group-item" id="nissan1" onClick="listValueSeparate(this, 'model')">닛산1</a> 
						<a href="#" class="list-group-item" id="nissan4" onClick="listValueSeparate(this, 'model')">닛산4</a>
					</div>

					<!--  list2 에서 daigatsu클릭시  -->
					<div class="list-group make-list group3" id="list3-daigatsu">
						<a href="#" class="list-group-item" id="123" onClick="listValueSeparate(this, 'model')">123</a> 
						<a href="#" class="list-group-item" id="daso" onClick="listValueSeparate(this, 'model')">다이소</a> 
						<a href="#" class="list-group-item" id="daigatsu" onClick="listValueSeparate(this, 'model')">다이제</a>
					</div>

					<!--  list2 에서 dodge 클릭시  -->
					<div class="list-group make-list group3" id="list3-dodge">
						<a href="#" class="list-group-item" id="dadge57" onClick="listValueSeparate(this, 'model')">닷지57호</a> 
						<a href="#" class="list-group-item" id="dadge58" onClick="listValueSeparate(this, 'model')">닷지58호</a> 
						<a href="#" class="list-group-item" id="dadge59" onClick="listValueSeparate(this, 'model')">닷지59호</a>
					</div>
					
					<input type="hidden" id="model" name="model"/>

				</div>
			</div>
		</div>
		<!-- category -->

		<p>&nbsp;</p>
		<p>&nbsp;</p>

		<div class="col-md-10 col-md-offset-4">



			<!-- 연료 -->
			<div class="checkbox">


				<span style="margin-left: 30px">연료&nbsp; | &nbsp;</span> <label>
					<input type="checkbox" id="fuel" name="fuel" value="gasolin" checked> <span
					class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span> <span
					>가솔린</span>
				</label> <label> <input type="checkbox" id="fuel" name="fuel" value="lpg"> <span
					class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span> <span
					>LPG</span>
				</label> <label> <input type="checkbox" id="fuel" name="fuel" value="diesel"> <span
					class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span> <span
					>경유</span>
				</label>

			</div>

			<!--변속기 -->
			<div class="checkbox">

				<span style="margin-left: 16px">변속기&nbsp; | &nbsp;</span> <label>
					<input type="checkbox" id="transmission" name="transmission" value="passive" checked> <span
					class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span> <span>수동</span>
				</label> <label style="margin-left: 14px"> <input type="checkbox"
					id="transmission" name="transmission" value="auto" > <span class="cr"><i
						class="cr-icon glyphicon glyphicon-ok"></i></span> <span >자동</span>
				</label>

			</div>
			<p>&nbsp;</p>
			<!-- 연식 -->
			<div class="checkbox">
				<label> <input type="checkbox" id="modelyear"> <span
					class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
				</label> <span id="inputmodelyear" style="color: gray;">
					연식&nbsp;&nbsp; </span> 
					<input type="text" id="up" name="year" placeholder="ex)1000"
					maxlength="4" style="width: 70px; text-align: center;" disabled>
				<span id="to" style="color: gray;">~</span> 
				
				<input type="text"
					id="down" placeholder="ex)1409" maxlength="4"
					style="width: 70px; text-align: center;" disabled> <span
					style="font-size: 11px">&nbsp;※<span style="color: red">
						년, 월 4자리 숫자 형식</span>으로 적어주세요.
				</span>

			<br>
			</div>
			<!-- 주행거리 -->
			<div class="checkbox">
				<label> <input type="checkbox" id="mileage"> <span
					class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
				</label> <span id="inputmileage" style="color: gray;">
					주행거리&nbsp;&nbsp; </span> 



				<input type="text" id="mileage" name="mileage"/>
				<!-- <b>0km</b><div class="tooltip top"
					style="top: -40px; left: 77.0454545454546px;">
					<div class="tooltip-arrow"></div>
					<div class="tooltip-inner">75 : 450</div>
				</div>
				<input type="text" class="span2" name="mileage" data-slider-min="0"
					data-slider-max="300000" data-slider-step="10000"
					data-slider-value="[250,450]" id="sl2"> <b>300,000km</b> -->

			</div>
		</div>

		<div class="col-md-8 col-md-offset-4">
			<!-- Textarea -->
			<div class=".col-md-2 .col-md-offset-2 panel1">
				<div class="panel-heading">
					<span class="glyphicon glyphicon-refresh" id="reset">다시쓰기</span>
				</div>
				<textarea class="form-control" name="carDetail" id="info-text"
					rows="15" style="border-radius: 0px;"></textarea>
			</div>
		</div>
	



		<div class="row">
			<div class="col-md-3 col-md-offset-3"></div>
			<div class="col-md-3 col-md-offset-3">
				<button type="button" class="btn btn-default">
					<a href="index.jsp">이전</a>
				</button>
				<button type="submit" class="btn btn-default">다음</button>
			</div>
		</div>
	</form>


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