<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<title>Insert title here</title>
<style>
.input-group-addon.primary {
	color: rgb(255, 255, 255);
	background-color: rgb(50, 118, 177);
	border-color: rgb(40, 94, 142);
}

.input-group-addon.success {
	color: rgb(255, 255, 255);
	background-color: rgb(92, 184, 92);
	border-color: rgb(76, 174, 76);
}

.input-group-addon.info {
	color: rgb(255, 255, 255);
	background-color: rgb(57, 179, 215);
	border-color: rgb(38, 154, 188);
}

.input-group-addon.warning {
	color: rgb(255, 255, 255);
	background-color: rgb(240, 173, 78);
	border-color: rgb(238, 162, 54);
}

.input-group-addon.danger {
	color: rgb(255, 255, 255);
	background-color: rgb(217, 83, 79);
	border-color: rgb(212, 63, 58);
}
</style>
<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	</script>
<script>
$(document).ready(function() {
	$("#success").click(function(event) {
			var ok;
			ok = confirm("정말로 낙찰하시겠습니까?");
			
			if (ok) {					
				$('form').attr({
					action : 'mypage.do?carNo=${car.carNo}&auctionNo=${auction.auctionNo}',
					method : 'post'
			}).submit();
			} else {	
		}
	});
});

</script>
</head>
<body>
${fileUpload }
${auctionList }
	<div class="container">
		<div class="row">

			<div class="col-sm-offset-2 col-sm-7">
				<form name="form" method="post">

					<div class="form-group">
						<br>
						<!--  경매번호 시작 -->
						<label for="validate-optional">경매번호</label>
						<div class="input-group">
							<input type="text" class="form-control" name="validate-optional"
								id="validate-optional" value="${auction.auctionNo }"> <span
								class="input-group-addon info"><span
								class="glyphicon glyphicon-asterisk"></span></span>
						</div>
						<!-- 경매번호 끝  -->

						<br> <br> <br>
						<!--  2번 table 시작 -->
						<label for="validate-optional">판매자 상세 정보</label> <br>

						<table class="table table-hover"
							style="text-align: center; height: 235px">



							<tr>
								<br>
								<td width="15%">이름</td>
								<td>${seller.userName}</td>
								<!-- Action만 넣으삼 -->
							</tr>
							<tr>
								<td>이메일</td>
								<td>${seller.userId }</td>
								<!-- Action만 넣으삼 -->
							</tr>
							<tr>
								<td>지역</td>
								<td>${seller.addr }</td>
								<!-- Action만 넣으삼 -->
							</tr>
							<tr>
								<td>연락처</td>
								<td>${seller.phone }</td>
								<!-- Action만 넣으삼 -->
							</tr>
						</table>


						<!--  2번 table 끝 -->
						<br> <br> <label for="validate-optional">판매자 차량
							정보</label>
						<table class="table table-hover"
							style="text-align: center; height: 235px">
							<!-- 대표 IMG -->
							<tr>
								<td width="15%">대표사진</td>
								<td><img src="${fileUpload[0].imgPath}" style="width: 30%;">&nbsp;&nbsp;
									<img src="${fileUpload[1].imgPath}" style="width: 30%;">&nbsp;&nbsp;
									<img src="${fileUpload[2].imgPath}" style="width: 30%;"></td>
								<!-- Action만 넣으삼 -->
							</tr>
							<!-- 대표 IMG END-->

							<br>
							<tr>
								<td>제조사</td>
								<td>${car.manuCo}</td>
								<!-- Action 값만 넣으삼 -->
							</tr>
							<tr>
								<td>모델명</td>
								<td>${car.model}</td>
								<!-- Action 값만 넣으삼 -->
							</tr>
							<tr>
								<td>주행거리</td>
								<td>${car.mileage}</td>
								<!-- Action 값만 넣으삼 -->
							</tr>
							<tr>

								<td>연식</td>
								<td>${car.year}</td>
								<!-- Action 값만 넣으삼 -->
							</tr>
							<tr>
								<td>입찰가</td>
								<td>${auctionList.bidPrice }</td>
								<!-- Action 값만 넣으삼 -->
							</tr>
						</table>
					</div>
					<button type="button" class="btn btn-primary col-xs-6">뒤로가기</button>
					<button type="button" id="success" class="btn btn-primary col-xs-6">낙찰하기</button>	
				</form>
				<br> <br> <br> <br> <br> <br>
			</div>
		</div>
	</div>
	
</body>
</html>