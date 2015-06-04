<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
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
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script>
$(document).ready(function() {
	var option = "${auction.model}";
	var cc = "${car2}"
	alert(cc);
	
	//alert("${list[0].carNum}");
	/*   $("#selectBox").append("<option value='1'>${list[0].carNum}</option>");
	$("#selectBox").append("<option value='2'>${list[1].carNum}</option>");
	$("#selectBox").append("<option value='3'>${list[2].carNum}</option>");  
	$("#selectBox").append("<option value='4'>${list[3].carNum}</option>");  
	$("#selectBox").append("<option value='5'>${list[4].carNum}</option>");  
	$("#selectBox").append("<option value='6'>${list[5].carNum}</option>");  
	$("#selectBox").append("<option value='7'>${list[6].carNum}</option>");  
	$("#selectBox").append("<option value='8'>${list[7].carNum}</option>");  
	$("#selectBox").append("<option value='9'>${list[8].carNum}</option>");  
	$("#selectBox").append("<option value='10'>${list[9].carNum}</option>");  
      */   
      $.ajax({
            url : 'auctionInfo.do',
            type : 'post',
            data : {
                option : option
            },
            dataType:'json',
            success : function(result) {
            	alert(result);
            }
        });
});
</script>
</head>
<body>
<div class="container">
<div class="row">

        <div class="col-sm-offset-2 col-sm-7">
            <form method="post">
				
				<div class="form-group">
					<br>
				<!--  경매번호 시작 -->
        		<label for="validate-optional">경매번호</label>
					<div class="input-group">
						<input type="text" class="form-control" name="validate-optional" id="validate-optional" value="${auction.auctionNo }">
						<span class="input-group-addon info"><span class="glyphicon glyphicon-asterisk"></span></span>
					</div>
				<!-- 경매번호 끝  -->	
				
				<br>
				<br>
				<br>
				<!--  2번 table 시작 -->
				<label for="validate-optional">구매자 차량 정보</label>
					
					<img src="${file.imgPath}" style="width: 100%;">
					<br>
					
						<table class="table table-hover" style="text-align:center; height: 235px">
					
					
					
						<tr>
						<br>
							<td width="15%">제조사</td>
							<td>${auction.manuCo}</td> <!-- Action만 넣으삼 --> 
						</tr>
						<tr>
							<td>모델</td>
							<td>${auction.model }</td><!-- Action만 넣으삼 --> 
						</tr>
						<tr>
							<td>연식</td>
							<td>${auction.year }</td> <!-- Action만 넣으삼 --> 
						</tr>
						<tr>
							<td>연료</td>
							<td>${auction.fuel }</td> <!-- Action만 넣으삼 --> 
						</tr>
						<tr>
						
							<td>주행거리</td>
							<td>${auction.mileage }</td><!-- Action만 넣으삼 --> 
						</tr>
				
				</table>
				

			      <label for="sel1">Select list (select one):</label>
			      <select class="form-control" id="selectBox">
			       
			      </select>
				
				
						<!--  2번 table 끝 -->
				<br><br>
				<label for="validate-optional">판매자 차량 정보</label>
					<table class="table table-hover" style="text-align:left; height: 235px">
								<tr>
								 	<td width="15%" data-toggle="collapse" data-target="#demo">회원정보</td>

								 	<td>박흥열<div id="demo" class="collapse">
								 	<br>
									    <table class="table table-hover">
									    	<tr>
									    		<td width="15%">이름</td>
									    		<td>${user.userName}</td>
									    	</tr>
									    	<tr>
									    		<td>주소</td>
									    		<td>${user.addr}</td>
									    	</tr>
									    	<tr>
									    		<td>연락처</td>
									    		<td>${user.phone}</td>
									    	</tr>
									    	<tr>
									    		<td>이메일</td>
									    		<td>${user.userId}</td>
									    	</tr>
									    </table>
									 </div></td>
								 	
								</tr>
							<!-- 회원정보  -->	
							
							<!-- 대표 IMG -->
							<tr>
									<td width="15%">대표사진</td>
									<td>
									<img src="${file.imgPath}" style="width: 30%;">&nbsp;&nbsp;
									<img src="${file.imgPath}" style="width: 30%;">&nbsp;&nbsp;
									<img src="${file.imgPath}" style="width: 30%;"></td>
							<!-- Action만 넣으삼 -->
							</tr>
							<!-- 대표 IMG END-->	
								
								<br>
								<tr>
									<td>제조사</td>
									<td>${car.manuCo}</td> <!-- Action 값만 넣으삼 -->
								</tr>
								<tr>
									<td>모델명</td>
									<td>${car.model}</td> <!-- Action 값만 넣으삼 -->
								</tr>
								<tr>
									<td>주행거리</td>
									<td>${car.mileage}</td> <!-- Action 값만 넣으삼 -->
								</tr>
								<tr>
								
									<td>연식</td>
									<td>${car.year}</td> <!-- Action 값만 넣으삼 -->
								</tr>
						</table>
					<!--  입찰가격 -->	
					<label for="validate-optional">입찰가격</label>
					<div class="input-group">
						<input type="text" class="form-control" name="validate-text" id="validate-text" placeholder="금액을 입력하시오">
						<span class="input-group-addon danger"><span class="glyphicon glyphicon-hand-right"></span></span>	
					</div>
					<!--  입찰가격 -->
					<br><br><br>
				</div>
    			
                <button type="submit" class="btn btn-primary col-xs-12">Submit</button>
            </form>
            <br><br><br><br><br><br>
        </div>
        </div>
    </div>
</body>
</html>