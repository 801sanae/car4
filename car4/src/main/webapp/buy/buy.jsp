<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link href="../css/listClick.css" rel="stylesheet">
<link href="../css/test.css" rel="stylesheet">


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
			<jsp:include page="/nav.jsp"></jsp:include>
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
	
	
	
	<div class="container">
	<form name="buy" mehtod="post" action="../addAuction.do">
		<!-- category -->
		
		
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
    	 <div class="well">
              <div class="input-group" style="width: 100%;">
                 <input class="btn btn-lg" name="title" id="title" placeholder="제목을 입력하시오." required/>
              </div>
    	 </div>
         
		</div>
	</div>
<br><br>
		
		
		
<div class="container-fluid col-md-offset-1">
			<div class="col-md-1" style="margin-left: 80px;">
				<div class="panel-heading paneltitle"
					style="background-color: black; color: white; padding-left: 50px">
					<h3 class="panel-title">제조국</h3>
				</div>


				<div class="list1 panel"">

					<div class="list-group group1" id="list1">
						<a href="#" class="list-group-item"   style="padding-left: 50px;" id="2-1" name="korea" onClick="listValueSeparate(this, 'manuCountry')">국산차</a>
						<a href="#" class="list-group-item"    style="padding-left: 50px;" id="2-2" name="foreign" onClick="listValueSeparate(this, 'manuCountry')">수입차</a>
						<a href="#" class="list-group-item"    style="padding-left: 50px;" id='2-3' name="etc" onClick="listValueSeparate(this, 'manuCountry')">기타</a>
						
						<input type="hidden" id="manuCountry" name="manuCountry" value="">
					</div>

				</div>

			</div>
			<div class="col-md-2" style="margin-left: 50px">

				<div class="panel-heading paneltitle"
					style="background-color: black; color: white; padding-left: 100px">
					<h3 class="panel-title">제조사</h3>
				</div>

				<div class="list2 panel">
					<!-- 시작 -->
					<div class="make-list" id="table2">
						<br>
						<br>
						<b>
							<p style="padding-left: 70px">제조국을 클릭하면</p>
							<p style="padding-left: 70px" >리스트가 열립니다.</p>
						</b><br>
						<br>
						<br>
					</div>
					<!-- 국내차 -->
					<div class="list-group make-list group2" id="list2-1">
						<a href="#" class="list-group-item"  style="padding-left: 100px;"  id="hyundai" onClick="listValueSeparate(this, 'manuCo')" ><b>현대</b></a> 
						<a href="#" class="list-group-item" style="padding-left: 100px;" id="kia" onClick="listValueSeparate(this, 'manuCo')"><b>기아</b></a> 
						<a href="#" class="list-group-item" style="padding-left: 100px;"  id="chevolet" onClick="listValueSeparate(this, 'manuCo')"><b>쉐보레</b></a>
						<a href="#" class="list-group-item" style="padding-left: 100px;"  id="renault" onClick="listValueSeparate(this, 'manuCo')"><b>르노삼성</b></a> 
						<a href="#" class="list-group-item" style="padding-left: 100px;"  id="ssangyoung" onClick="listValueSeparate(this, 'manuCo')"><b>쌍용</b></a> 
						<a href="#" class="list-group-item" style="padding-left: 100px;"  id="etc" onClick="listValueSeparate(this, 'manuCo')"><b>기타제조사</b></a>
					</div>
					<!-- 수입차 -->
					<div class="list-group make-list group2" id="list2-2">
						<a href="#" class="list-group-item" style="padding-left: 100px;"  id="bmw" onClick="listValueSeparate(this, 'manuCo')"><b>BMW</b></a> 
						<a href="#" class="list-group-item" style="padding-left: 100px;"  id="audi" onClick="listValueSeparate(this, 'manuCo')"><b>아우디</b></a> 
						<a href="#" class="list-group-item" style="padding-left: 100px;"  id="volkswagen" onClick="listValueSeparate(this, 'manuCo')"><b>폭스바겐</b></a>
						<a href="#" class="list-group-item" style="padding-left: 100px;"  id="mini" onClick="listValueSeparate(this, 'manuCo')"><b>미니</b></a> 
						<a href="#" class="list-group-item" style="padding-left: 100px;"  id="gmc"  onClick="listValueSeparate(this, 'manuCo')"><b>GMC</b></a> 
						<a href="#" class="list-group-item" style="padding-left: 100px;"  id="nissan" onClick="listValueSeparate(this, 'manuCo')"><b>닛산</b></a> 
						<a href="#" class="list-group-item" style="padding-left: 100px;"  id="daigatsu" onClick="listValueSeparate(this, 'manuCo')"><b>다이하쯔</b></a> 
						<a href="#" class="list-group-item" style="padding-left: 100px;"  id="dodge"  onClick="listValueSeparate(this, 'manuCo')"><b>닷지</b></a>
					</div>
					<!-- ETC -->
					<div class="list-group make-list group2" id="list2-3">
						<a href="#" class="list-group-item" style="padding-left: 100px;"  id="etc1" onClick="listValueSeparate(this, 'manuCo')"><b>ETC1</b></a> 
						<a href="#" class="list-group-item" style="padding-left: 100px;"  id="etc2" onClick="listValueSeparate(this, 'manuCo')"><b>ETC2</b></a>
					</div>
					
					<input type="hidden" id="manuCo" name="manuCo"/>
					
				</div>
			</div>

			<!-- 3번째 리스트 -->
			<div class="col-md-2" style="margin-left: 50px">

				<div class="panel-heading paneltitle"
					style="background-color: black; color: white; padding-left: 180px">
					<h3 class="panel-title">모델</h3>
				</div>

				<div class="list3 panel">

					<div class="make-list" id="table3">
						<br>
						<br>
						<b>
							<p style="padding-left: 140px">제조사를 클릭하면</p>
							<p style="padding-left: 140px">리스트가 열립니다.</p>
						</b><br> <br> <br>
					</div>


					<!--  list2 에서 hyundai 클릭시  -->
					<div class="list-group make-list group3" id="list3-hyundai" >
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="sonata" onClick="listValueSeparate(this, 'model')">쏘나타</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="grandeur" onClick="listValueSeparate(this, 'model')">그랜저</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="avante" onClick="listValueSeparate(this, 'model')">아반떼</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="starex" onClick="listValueSeparate(this, 'model')">스타렉스</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="santafe" onClick="listValueSeparate(this, 'model')">싼타페</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="genesis" onClick="listValueSeparate(this, 'model')">제네시스</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="eqqus" onClick="listValueSeparate(this, 'model')">에쿠스</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="tucson" onClick="listValueSeparate(this, 'model')">투싼</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="trajetXG" onClick="listValueSeparate(this, 'model')">트라제 XG</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="veracruz" onClick="listValueSeparate(this, 'model')">베라크루즈</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="accent" onClick="listValueSeparate(this, 'model')">엑센트</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="tuscans" onClick="listValueSeparate(this, 'model')">투스카니</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="terracan" onClick="listValueSeparate(this, 'model')">테라칸</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="galloper" onClick="listValueSeparate(this, 'model')">갤로퍼</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="verna" onClick="listValueSeparate(this, 'model')">베르나</a>
					</div>

					<!--  list2 에서 kia 클릭시  -->
					<div class="list-group make-list group3" id="list3-kia">
						<a href="#" class="list-group-item" style="padding-left: 170px;"   id="carnival"  onClick="listValueSeparate(this, 'model')">카니발</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="morning" onClick="listValueSeparate(this, 'model')">모닝</a> 
						<a href="#" class="list-group-item" style="padding-left: 170px;"   id="sportage" onClick="listValueSeparate(this, 'model')">스포티지</a> 
						<a href="#" class="list-group-item" style="padding-left: 170px;"   id="k5" onClick="listValueSeparate(this, 'model')">K5</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="sorrento" onClick="listValueSeparate(this, 'model')">쏘렌토</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="pride" onClick="listValueSeparate(this, 'model')">프라이드</a> 
						<a href="#" class="list-group-item" style="padding-left: 170px;"   id="k7" onClick="listValueSeparate(this, 'model')">K7</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="opirus" onClick="listValueSeparate(this, 'model')">오피러스</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="carens" onClick="listValueSeparate(this, 'model')">카렌스</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="porte" onClick="listValueSeparate(this, 'model')">포르테</a>
					</div>

					<!--  list2 에서 chevolet 클릭시  -->
					<div class="list-group make-list group3" id="list3-chevolet">
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="sbr" onClick="listValueSeparate(this, 'model')">쉐보레</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="sbr1" onClick="listValueSeparate(this, 'model')">쉐보레모</a> 
						<a href="#" class="list-group-item" style="padding-left: 170px;"   id="sbrsportage" onClick="listValueSeparate(this, 'model')">쉐보레스포티지</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="sbr5" onClick="listValueSeparate(this, 'model')">쉐보레5</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="sbrrrento" onClick="listValueSeparate(this, 'model')">쉐보레렌토</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="sbrpride" onClick="listValueSeparate(this, 'model')">쉐보레프라이드</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="sbr7" onClick="listValueSeparate(this, 'model')">쉐보레7</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="sbrrus" onClick="listValueSeparate(this, 'model')">쉐보레러스</a> 
						<a href="#" class="list-group-item"  style="padding-left: 170px;"  id="sbrcarens" onClick="listValueSeparate(this, 'model')">쉐보레렌스</a> 
						<a href="#" class="list-group-item" style="padding-left: 170px;"   id="sbrporte" onClick="listValueSeparate(this, 'model')">쉐르테</a>
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

		<div class="col-md-10 col-md-offset-2">



			<!-- 연료 -->
			<div class="checkbox">


				<span>연&nbsp;&nbsp;&nbsp; 료&nbsp; | &nbsp;</span> <label>
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

				<span>변속기&nbsp; | &nbsp;</span> <label>
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
					연식&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> 
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
		</div>

		<div class="col-md-8 col-md-offset-2">
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
			<div class="col-md-3 col-md-offset-2">
				<a href="../index.do" class="btn btn-primary btn-lg">이전</a>
				<button class="btn btn-primary btn-lg" type="submit">등록</button>
			</div>
		</div>
	</form>
</div>

	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<!--  <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
	<script src="../js/title.js"></script>
	<script src="../js/bootstrap-slider.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

</body>
</html>