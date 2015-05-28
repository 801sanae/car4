<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

<jsp:include page="nav.jsp"></jsp:include>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- mySellList -->
				<h4>판매 리스트</h4>
				<div class="row">
					<div class="table-responsive">
						<table id="mytable" class="table table-bordred table-striped">
							<thead>
								<th id="uu">No</th>
								<th id="uu">모델명</th>
								<th id="uu">판매자</th>
								<th id="uu">제목</th>
								<th id="uu">등록일</th>
								<th id="uu">낙찰여부</th>
								<th id="uu">입찰수</th>

							</thead>

							<tbody id="table">
								<tr>
									
									<td >1</td>
									<td>BMW520</td>
									<td>user01</td>
									<td>BMW 520d 삽니다.</td>
									<td>01/24</td>
									<td><button type="button" class="btn btn-danger" disabled="disabled">낙찰</button></td>
									<td id="i">1</td>

								</tr>

								<tr>
									
									<td>2</td>
									<td>BMW520</td>
									<td>user02</td>
									<td><a href="info.html">08년식 520d 산다.</a></td>
									<td>03/03</td>
									<td><a type="button" class="btn btn-primary" href="info.html">입찰중</a></td>
									<td id="i">2</td>

								</tr>

								<tr>
									
									<td>3</td>
									<td>소나타</td>
									<td>user03</td>
									<td>10년식 소나타 삽니다.</td>
									<td>04/02</td>
									<td><button type="button" class="btn btn-danger">낙찰</button></td>
									<td id="i">3</td>

								</tr>

								<tr>
									
									<td>4</td>
									<td>소나타</td>
									<td>user04</td>
									<td>13년식 SONATA 삽니다.</td>
									<td>01/02</td>
									<td><button type="button" class="btn btn-danger">입찰중</button></td>
									<td id="i">1</td>


								</tr>

								<tr>
									
									<td>5</td>
									<td>소나타</td>
									<td>user05</td>
									<td>15년식 소내타 삽니다.</td>
									<td>06/01</td>
									<td><button type="button" class="btn btn-danger">입찰중</button></td>
									<td id="i">10</td>

								</tr>
							</tbody>

						</table>

						<div class="clearfix"></div>
						<!-- <ul class="pagination pull-right">
							<li class="disabled"><a href="#"><span
									class="glyphicon glyphicon-chevron-left"></span></a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#"><span
									class="glyphicon glyphicon-chevron-right"></span></a></li>
						</ul> -->
					</div>
				</div>
				<!-- mySellList end -->
				<hr>
				
				<!-- myBuyList -->
				<h4>구매 리스트</h4>
				<div class="row">
					<div class="table-responsive">
						<table id="mytable" class="table table-bordred table-striped">
							<thead>
								<th id="uu">No</th>
								<th id="uu">모델명</th>
								<th id="uu">등록일</th>
								<th id="uu">제목</th>
								<th id="uu">낙찰여부</th>
								<th id="uu">입찰수</th>

							</thead>

							<tbody id="table">
								<tr>
									
									<td >1</td>
									<td>BMW520</td>
									<td>01/24</td>
									<td><a href="info.html">BMW 520d 삽니다.</a></td>
									<td><button type="button" class="btn btn-primary">낙찰</button></td>
									<td id="i">1</td>

								</tr>

								<tr>
									
									<td>2</td>
									<td>BMW520</td>
									<td>03/03</td>
									<td>08년식 티코 삽니다.</td>
									<td><p data-placement="top" data-toggle="tooltip"
											title="Edit">
											<button class="btn btn-primary btn-xs" data-title="Edit"
												data-toggle="modal" data-target="#edit">
												<span class="glyphicon glyphicon-pencil"></span>
											</button>
										</p></td>
									<td id="i">2</td>

								</tr>

								<tr>
									
									<td>3</td>
									<td>소나타</td>
									<td>04/02</td>
									<td>10년식 소나타 삽니다.</td>
									<td><button type="button" class="btn btn-primary">낙찰</button></td>
									<td id="i">3</td>

								</tr>

								<tr>
									
									<td>4</td>
									<td>소나타</td>
									<td>01/02</td>
									<td>13년식 인피니티 삽니다.</td>
									<td><button type="button" class="btn btn-danger">입찰중</button></td>
									<td id="i">1</td>


								</tr>

								<tr>
									
									<td>5</td>
									<td>소나타</td>
									<td>06/01</td>
									<td>15년식 투싼 ix 삽니다.</td>
									<td><button type="button" class="btn btn-danger">입찰중</button></td>
									<td id="i">10</td>

								</tr>
							</tbody>

						</table>

						<div class="clearfix"></div>
						<!-- <ul class="pagination pull-right">
							<li class="disabled"><a href="#"><span
									class="glyphicon glyphicon-chevron-left"></span></a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#"><span
									class="glyphicon glyphicon-chevron-right"></span></a></li>
						</ul> -->
					</div>
				</div>
				<!-- myBuyList 끝 -->
				
			</div>
		</div>


		<div class="modal fade" id="edit" tabindex="-1" role="dialog"
			aria-labelledby="edit" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">
							<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
						</button>
						<h4 class="modal-title custom_align" id="Heading">Edit Your
							Detail</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<input class="form-control " type="text" placeholder="Mohsin">
						</div>
						<div class="form-group">
							<input class="form-control " type="text" placeholder="Irshad">
						</div>
						<div class="form-group">
							<textarea rows="2" class="form-control"
								placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
						</div>
					</div>
					<div class="modal-footer ">
						<button type="button" class="btn btn-warning btn-lg"
							style="width: 100%;">
							<span class="glyphicon glyphicon-ok-sign"></span> Update
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>

		<div class="modal fade" id="delete" tabindex="-1" role="dialog"
			aria-labelledby="edit" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">
							<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
						</button>
						<h4 class="modal-title custom_align" id="Heading">Delete this
							entry</h4>
					</div>
					<div class="modal-body">
						<div class="alert alert-danger">
							<span class="glyphicon glyphicon-warning-sign"></span> Are you
							sure you want to delete this Record?
						</div>
					</div>
					<div class="modal-footer ">
						<button type="button" class="btn btn-success">
							<span class="glyphicon glyphicon-ok-sign"></span> Yes
						</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">
							<span class="glyphicon glyphicon-remove"></span> No
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>

		<div class="modal fade" id="successbid" tabindex="-1" role="dialog"
			aria-labelledby="successbid" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">
							<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
						</button>
						<h4 class="modal-title custom_align" id="Heading">Delete this
							entry</h4>
					</div>
					<div class="modal-body">
						<div class="alert alert-danger">
							<span class="glyphicon glyphicon-warning-sign"></span> Are you
							sure you want to delete this Record?
						</div>
					</div>
					<div class="modal-footer ">
						<button type="button" class="btn btn-success">
							<span class="glyphicon glyphicon-ok-sign"></span> Yes
						</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">
							<span class="glyphicon glyphicon-remove"></span> No
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
	</div>

</body>

</html>