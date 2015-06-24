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
	var car = "${list}";
	
	$("#selectBox").append("<option value=''></option>");
	
	if("${auction.model}"=="${list[0].model}"){
		$("#selectBox").append("<option value='${list[0].carNum}'>${list[0].carNum}</option>");
	}
	if("${auction.model}"=="${list[1].model}"){
		$("#selectBox").append("<option value='${list[1].carNum}'>${list[1].carNum}</option>");
		
	}
	if("${auction.model}"=="${list[2].model}"){
		$("#selectBox").append("<option value='${list[2].carNum}'>${list[2].carNum}</option>");
	
	}
	if("${auction.model}"=="${list[3].model}"){
		$("#selectBox").append("<option value='${list[3].carNum}'>${list[3].carNum}</option>");
	}
	if("${auction.model}"=="${list[4].model}"){
		$("#selectBox").append("<option value='${list[4].carNum}'>${list[4].carNum}</option>");
	}
	if("${auction.model}"=="${list[5].model}"){
		$("#selectBox").append("<option value='${list[5].carNum}'>${list[5].carNum}</option>");
		
	}
	if("${auction.model}"=="${list[6].model}"){
		$("#selectBox").append("<option value='${list[6].carNum}'>${list[6].carNum}</option>");
	}
	if("${auction.model}"=="${list[7].model}"){
		$("#selectBox").append("<option value='${list[7].carNum}'>${list[7].carNum}</option>");
	}
	if("${auction.model}"=="${list[8].model}"){
		$("#selectBox").append("<option value='${list[8].carNum}'>${list[8].carNum}</option>");
	}
	if("${auction.model}"=="${list[9].model}"){
		$("#selectBox").append("<option value='${list[9].carNum}'>${list[9].carNum}</option>");
	}
	if("${auction.model}"=="${list[10].model}"){
		$("#selectBox").append("<option value='${list[10].carNum}'>${list[10].carNum}</option>");
	}
	 if("${auction.model}"=="${list[11].model}"){
		$("#selectBox").append("<option value='${list[11].carNum}'>${list[11].carNum}</option>");
	 }

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

<script>
$(document).ready(function() {

	$('#selectBox').on('change', function() {
		 var value = $(this).val();
		 
	 	if(value == "${file[0].carNum}"){
	 		$( "#c1 tr td:eq(11) img" ).attr({
				  src: "${file[0].imgPath}",
				});
			$( "#c1 tr td:eq(12) img" ).attr({
				  src: "${file[1].imgPath}",
				});
			$("#carNo").val("${list[0].carNo}");
	 		$("#c1 tr td:eq(14)").append("${list[0].manuCo}");
	    	$("#c1 tr td:eq(16)").append("${list[0].model}");
	    	$("#c1 tr td:eq(18)").append("${list[0].mileage}");
	    	$("#c1 tr td:eq(20)").append("${list[0].year}");
		}else if(value=="${file[1].carNum}"){
			$( "#c1 tr td:eq(11) img" ).attr({
				  src: "${file[1].imgPath}",
				});
			$( "#c1 tr td:eq(12) img" ).attr({
				  src: "${file[2].imgPath}",
				});
			$("#carNo").val("${list[1].carNo}");
			$("#c1 tr td:eq(14)").append("${list[1].manuCo}");
	    	$("#c1 tr td:eq(16)").append("${list[1].model}");
	    	$("#c1 tr td:eq(18)").append("${list[1].mileage}");
	    	$("#c1 tr td:eq(20)").append("${list[1].year}");
		}else if(value=="${file[2].carNum}"){
			$( "#c1 tr td:eq(11) img" ).attr({
				  src: "${file[2].imgPath}",
				});
			$( "#c1 tr td:eq(12) img" ).attr({
				  src: "${file[3].imgPath}",
				});
			$("#carNo").append("${list[2].carNo}");
			$("#c1 tr td:eq(14)").append("${list[2].manuCo}");
	    	$("#c1 tr td:eq(16)").append("${list[2].model}");
	    	$("#c1 tr td:eq(18)").append("${list[2].mileage}");
	    	$("#c1 tr td:eq(20)").append("${list[2].year}");
		}else if(value=="${file[3].carNum}"){
			$( "#c1 tr td:eq(11) img" ).attr({
				  src: "${file[3].imgPath}",
				});
			$( "#c1 tr td:eq(12) img" ).attr({
				  src: "${file[3].imgPath}",
				});
			$("#carNo").append("${list[3].carNo}");
			$("#c1 tr td:eq(14)").append("${list[3].manuCo}");
	    	$("#c1 tr td:eq(16)").append("${list[3].model}");
	    	$("#c1 tr td:eq(18)").append("${list[3].mileage}");
	    	$("#c1 tr td:eq(20)").append("${list[3].year}");
		}else if(value=="${list[4].carNum}" && value=="${file[4].carNum}"){
			$( "#c1 tr td:eq(11) img" ).attr({
				  src: "${file[0].imgPath}",
				});
			$( "#c1 tr td:eq(12) img" ).attr({
				  src: "${file[1].imgPath}",
				});
			$("#carNo").append("${list[4].carNo}");
			$("#c1 tr td:eq(14)").append("${list[4].manuCo}");
	    	$("#c1 tr td:eq(16)").append("${list[4].model}");
	    	$("#c1 tr td:eq(18)").append("${list[4].mileage}");
	    	$("#c1 tr td:eq(20)").append("${list[4].year}");
		}else if(value=="${file[5].carNum}"){
			$( "#c1 tr td:eq(11) img" ).attr({
				  src: "${file[5].imgPath}",
				});
			$( "#c1 tr td:eq(12) img" ).attr({
				  src: "${file[5].imgPath}",
				});
			$("#carNo").append("${list[5].carNo}");
			$("#c1 tr td:eq(14)").append("${list[5].manuCo}");
	    	$("#c1 tr td:eq(16)").append("${list[5].model}");
	    	$("#c1 tr td:eq(18)").append("${list[5].mileage}");
	    	$("#c1 tr td:eq(20)").append("${list[5].year}");
		}else if(value=="${list[6].carNum}"){
			$( "#c1 tr td:eq(11) img" ).attr({
				  src: "${file[0].imgPath}",
				});
			$( "#c1 tr td:eq(12) img" ).attr({
				  src: "${file[1].imgPath}",
				});
			$("#carNo").append("${list[6].carNo}");
			$("#c1 tr td:eq(14)").append("${list[6].manuCo}");
	    	$("#c1 tr td:eq(16)").append("${list[6].model}");
	    	$("#c1 tr td:eq(18)").append("${list[6].mileage}");
	    	$("#c1 tr td:eq(20)").append("${list[6].year}");
		}else if(value=="${list[7].carNum}"){
			$( "#c1 tr td:eq(11) img" ).attr({
				  src: "${file[0].imgPath}",
				});
			$( "#c1 tr td:eq(12) img" ).attr({
				  src: "${file[1].imgPath}",
				});
			$("#carNo").append("${list[7].carNo}");
			$("#c1 tr td:eq(14)").append("${list[7].manuCo}");
	    	$("#c1 tr td:eq(16)").append("${list[7].model}");
	    	$("#c1 tr td:eq(18)").append("${list[7].mileage}");
	    	$("#c1 tr td:eq(20)").append("${list[7].year}");
		}else if(value=="${list[8].carNum}"){
			$( "#c1 tr td:eq(11) img" ).attr({
				  src: "${file[0].imgPath}",
				});
			$( "#c1 tr td:eq(12) img" ).attr({
				  src: "${file[1].imgPath}",
				});
			$("#c1 tr td:eq(14)").append("${list[8].manuCo}");
	    	$("#c1 tr td:eq(16)").append("${list[8].model}");
	    	$("#c1 tr td:eq(18)").append("${list[8].mileage}");
	    	$("#c1 tr td:eq(20)").append("${list[8].year}");
		}else if(value=="${list[9].carNum}"){
			$( "#c1 tr td:eq(11) img" ).attr({
				  src: "${file[0].imgPath}",
				  
				  
				});
			$( "#c1 tr td:eq(12) img" ).attr({
				  src: "${file[1].imgPath}",	  
				});
			$("#c1 tr td:eq(14)").append("${list[9].manuCo}");
	    	$("#c1 tr td:eq(16)").append("${list[9].model}");
	    	$("#c1 tr td:eq(18)").append("${list[9].mileage}");
	    	$("#c1 tr td:eq(20)").append("${list[9].year}");
		}
	});    
});

</script>
</head>
<body>
<jsp:include page="../nav.jsp"></jsp:include> 
<br><br><br>

<div class="container">
<div class="row">
        <div class="col-sm-offset-2 col-sm-7">
         
            <form method="post" action="addAuctionList.do">
				
				<div class="form-group">
					<br>
				<!--  경매번호 시작 -->
        		<label for="validate-optional">경매번호</label>
					<div class="input-group">
						<input type="text" class="form-control" name="auctionNo" id="validate-optional" value="${auction.auctionNo }">
						<span class="input-group-addon info"><span class="glyphicon glyphicon-asterisk"></span></span>
					</div>
				<!-- 경매번호 끝  -->	
				
				<br>
				<br>
				<br>
				<!--  2번 table 시작 -->
				<label for="validate-optional">구매자 차량 정보</label>
					
					<img src="img/${auction.manuCo }/${auction.model }.jpg" style="width: 100%;">
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
					
				
				</table>
				

			      <label for="sel1">Select list (select one):</label>
			      <select class="form-control" id="selectBox" name="carNum">

			      </select>
				
				
						<!--  2번 table 끝 -->
				<br><br>
				<label for="validate-optional">판매자 차량 정보</label>
					<table class="table table-hover" style="text-align:left; height: 235px"  id="c1">
								<tr>
								 	<td width="15%" data-toggle="collapse" data-target="#demo">회원정보</td>

								 	<td colspan="2">박흥열<div id="demo" class="collapse">
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
									<img src="" style="width: 100%;" id="d">&nbsp;&nbsp;
									<td>
									<img src="" style="width: 100%;">&nbsp;&nbsp;
									</td>
							<!-- Action만 넣으삼 -->
							</tr>
							<!-- 대표 IMG END-->	
								
								<br>
								<tr>
									<td colspan="2">제조사</td>
											<td></td> <!-- Action 값만 넣으삼 -->
								</tr>
								<tr>
									<td colspan="2">모델명</td>
									<td></td> <!-- Action 값만 넣으삼 -->
								</tr>
								<tr>
									<td colspan="2">주행거리</td>
									<td></td> <!-- Action 값만 넣으삼 -->
								</tr>
								<tr>
								
									<td colspan="2">연식</td>
									<td></td> <!-- Action 값만 넣으삼 -->
								</tr>
						</table>
					<!--  입찰가격 -->	
					<label for="validate-optional">입찰가격</label>
					<div class="input-group">
						<input type="text" class="form-control" name="bidPrice" id="validate-text" placeholder="금액을 입력하시오">
						<span class="input-group-addon danger"><span class="glyphicon glyphicon-hand-right"></span></span>	
					</div>
					<!--  입찰가격 -->
					<br><br><br>
				</div>
    			<input type="hidden" id="carNo" name="carNo">
    			
                <button type="submit" class="btn btn-primary col-xs-12">입찰하기</button>
            </form>
            <br><br><br><br><br><br>
        </div>
        </div>
    </div>
    
</body>
</html>