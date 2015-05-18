<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/scrolling-nav.css" rel="stylesheet">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<!-- header -->
	<div class="container" >
		<!-- Second navbar for categories -->
		<div class="row">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="col-md-9" style="margin-top: 25px; margin-bottom: 25px;">

				<a href="index.jsp" style="font-size: 50px; padding-left: 20px;">Car4</a>
			</div>

			<div class="col-md-3"
				style="margin-top: 10px; padding-left: 100px; color: pink">

				<!-- Login 클릭 -->
				<a style="color: gray" data-toggle="modal" data-target="#modalLogin">
					Logout</a>
				<!-- Login 클릭 End -->

				<!-- 모달 Start -->
				<div class="modal fade" id="modalLogin" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">로그인 해주세요</h4>
							</div>
							<div class="modal-body">
								<div class="container">
									<h2>로그인</h2>
									<form class="form-horizontal" role="form">
										<div class="form-group">
											<label class="control-label col-sm-1" for="email">Email:</label>
											<div class="col-sm-4">
												<input type="email" class="form-control" id="email"
													placeholder="Enter email">
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-1" for="pwd">Password:</label>
											<div class="col-sm-4">
												<input type="password" class="form-control" id="pwd"
													placeholder="Enter password">
											</div>
										</div>
									</form>
								</div>
								<!-- container -->
							</div>
							<!-- modal body -->

							<div class="modal-footer">
								<div class="form-group">
									<label class="control-label col-sm-5"><a
										herf="http://www.naver.com">비밀번호를 잊으셨나요?</a></label>
									<div class="col-sm-12">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">로그인</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Login End -->

				<!-- 회원가입 클릭 -->
				&nbsp; <a style="margin-top: 15px;">|</a> <a style="color: gray"
					data-toggle="modal" data-target="#myModal"> Sign</a>
				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">Join Page</h4>
							</div>
							<div class="modal-body">
								<div class="container">

									<h2>환영합니다!!</h2>

									<form class="form-horizontal" role="form">

										<div class="form-group">
											<label class="control-label col-sm-1" for="email">Email:</label>
											<div class="col-sm-4">
												<input type="email" class="form-control" id="userId"
													placeholder="Enter email">
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-1" for="name">Name:</label>
											<div class="col-sm-4">
												<input type="name" class="form-control" id="userName"
													placeholder="Enter Name">
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-1" for="pwd">Password:</label>
											<div class="col-sm-4">
												<input type="password" class="form-control" id="password"
													placeholder="Enter password">
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-1" for="pwdcheck">Password
												Check:</label>
											<div class="col-sm-4">
												<input type="password" class="form-control" id="pwdcheck"
													placeholder="Enter password">
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-1" for="phone">Phone:</label>
											<div class="col-md-1">
												<select class="form-control">
													<option>010</option>
													<option>011</option>
													<option>018</option>
													<option>019</option>
												</select>
											</div>
											<div class="col-md-1">
												<input class="form-control" id="num2" placeholder="1234">
											</div>
											<div class="col-md-1">
												<input class="form-control" id="num3" placeholder="5678">
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-1" for="birth">Birth:</label>
											<div class="col-md-1">
												<select class="form-control">
													<option>2015</option>
													<option>2014</option>
													<option>2013</option>
													<option>2012</option>
													<option>2011</option>
												</select>
											</div>
											<div class="col-md-1">
												<select class="form-control">
													<option>12</option>
													<option>11</option>
													<option>10</option>
													<option>09</option>
													<option>08</option>
													<option>07</option>
													<option>06</option>
													<option>05</option>
													<option>04</option>
													<option>03</option>
													<option>02</option>
													<option>01</option>
												</select>
											</div>
											<div class="col-md-1">
												<select class="form-control">
													<option>01</option>
													<option>02</option>
													<option>03</option>
													<option>04</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-sm-1" for="sex">Gender:</label>
											<div class="col-sm-4">
												<select class="form-control">
													<option>male</option>
													<option>female</option>
												</select>
											</div>
										</div>
									</form>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save
									changes</button>
							</div>
						</div>
					</div>
				</div>
				<!-- 고객센터 끝 -->
			</div>
		</div>
	</div>
	<!--/header End  -->

	<!-- title 부터 -->
	<div class="container-fluid">
		<!-- title start -->

		<nav class="navbar navbar-default" id=mylist>
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-left">
						<li><a href="#">MyList</a></li>
						<li><a href="totallist.html">전체리스트</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- title end -->
		<div class="content">
			<div class="content-left">.</div>
			<!-- right -->
			<div class="content-right">
				<div class="up">
					<!-- List Start -->
					<script
						src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
					<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>

					<div class="container">
						<div class="row">


							<div class="col-md-12" >
								<h4>My List</h4>
								<div class="">
									<a class="btn btn-default page-scroll" href="#about">최근매물보기</a>
									<a class="btn btn-default page-scroll" href="listClick.html">내 차 사기</a>
								</div>
								<div class="table-responsive">

									<table id="mytable" class="table table-bordred table-striped">
										<thead>
											<th></th>
											<th id="uu">No</th>
											<th id="uu">등록일</th>
											<th id="uu">제목</th>
											<th id="uu">낙찰여부</th>
											<th id="uu">입찰수</th>
											<th id="uu">수정</th>
											<th id="uu">삭제</th>
										</thead>

										<tbody id="table">
											<tr>
												<td><input type="checkbox" class="checkthis" /></td>
												<td>1</td>
												<td>01/24</td>
												<td>벤츠 S 클래스 삽니다.</td>
												<td><button type="button" class="btn btn-primary">낙찰</button></td>
												<td id="i">1</td>
												<td><p data-placement="top" data-toggle="tooltip"
														title="Edit">
														<button class="btn btn-primary btn-xs" data-title="Edit"
															data-toggle="modal" data-target="#edit">
															<span class="glyphicon glyphicon-pencil"></span>
														</button>
													</p></td>
												<td><p data-placement="top" data-toggle="tooltip"
														title="Delete">
														<button class="btn btn-danger btn-xs" data-title="Delete"
															data-toggle="modal" data-target="#delete">
															<span class="glyphicon glyphicon-trash"></span>
														</button>
													</p></td>
											</tr>

											<tr>
												<td><input type="checkbox" class="checkthis" /></td>
												<td>2</td>
												<td>03/03</td>
												<td>08년식 티코 삽니다.</td>
												<td><button type="button" class="btn btn-primary">낙찰</button></td>
												<td id="i">2</td>
												<td><p data-placement="top" data-toggle="tooltip"
														title="Edit">
														<button class="btn btn-primary btn-xs" data-title="Edit"
															data-toggle="modal" data-target="#edit">
															<span class="glyphicon glyphicon-pencil"></span>
														</button>
													</p></td>
												<td><p data-placement="top" data-toggle="tooltip"
														title="Delete">
														<button class="btn btn-danger btn-xs" data-title="Delete"
															data-toggle="modal" data-target="#delete">
															<span class="glyphicon glyphicon-trash"></span>
														</button>
													</p></td>
											</tr>

											<tr>
												<td><input type="checkbox" class="checkthis" /></td>
												<td>3</td>
												<td>04/02</td>
												<td>10년식 소나타 삽니다.</td>
												<td><button type="button" class="btn btn-primary">낙찰</button></td>
												<td id="i">3</td>
												<td><p data-placement="top" data-toggle="tooltip"
														title="Edit">
														<button class="btn btn-primary btn-xs" data-title="Edit"
															data-toggle="modal" data-target="#edit">
															<span class="glyphicon glyphicon-pencil"></span>
														</button>
													</p></td>
												<td><p data-placement="top" data-toggle="tooltip"
														title="Delete">
														<button class="btn btn-danger btn-xs" data-title="Delete"
															data-toggle="modal" data-target="#delete">
															<span class="glyphicon glyphicon-trash"></span>
														</button>
													</p></td>
											</tr>

											<tr>
												<td><input type="checkbox" class="checkthis" /></td>
												<td>4</td>
												<td>01/02</td>
												<td>13년식 인피니티 삽니다.</td>
												<td><button type="button" class="btn btn-danger">입찰중</button></td>
												<td id="i">1</td>
												<td><p data-placement="top" data-toggle="tooltip"
														title="Edit">
														<button class="btn btn-primary btn-xs" data-title="Edit"
															data-toggle="modal" data-target="#edit">
															<span class="glyphicon glyphicon-pencil"></span>
														</button>
													</p></td>
												<td><p data-placement="top" data-toggle="tooltip"
														title="Delete">
														<button class="btn btn-danger btn-xs" data-title="Delete"
															data-toggle="modal" data-target="#delete">
															<span class="glyphicon glyphicon-trash"></span>
														</button>
													</p></td>
											</tr>

											<tr>
												<td><input type="checkbox" class="checkthis" /></td>
												<td>5</td>
												<td>06/01</td>
												<td>15년식 투싼 ix 삽니다.</td>
												<td><button type="button" class="btn btn-danger">입찰중</button></td>
												<td id="i">10</td>
												<td><p data-placement="top" data-toggle="tooltip"
														title="Edit">
														<button class="btn btn-primary btn-xs" data-title="Edit"
															data-toggle="modal" data-target="#edit">
															<span class="glyphicon glyphicon-pencil"></span>
														</button>
													</p></td>
												<td><p data-placement="top" data-toggle="tooltip"
														title="Delete">
														<button class="btn btn-danger btn-xs" data-title="Delete"
															data-toggle="modal" data-target="#delete">
															<span class="glyphicon glyphicon-trash"></span>
														</button>
													</p></td>
											</tr>
										</tbody>

									</table>

									<div class="clearfix"></div>
									<ul class="pagination pull-right">
										<li class="disabled"><a href="#"><span
												class="glyphicon glyphicon-chevron-left"></span></a></li>
										<li class="active"><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li>
										<li><a href="#"><span
												class="glyphicon glyphicon-chevron-right"></span></a></li>
									</ul>
								</div>
							</div>
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
									<h4 class="modal-title custom_align" id="Heading">Edit
										Your Detail</h4>
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
									<h4 class="modal-title custom_align" id="Heading">Delete
										this entry</h4>
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
									<button type="button" class="btn btn-default"
										data-dismiss="modal">
										<span class="glyphicon glyphicon-remove"></span> No
									</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- Down -->
					<br>
					<hr size="30" />
					<br>
						<a class="btn btn-default page-scroll" href="#mylist">My List 보기</a>
					<div class="down" id="about">
						<div class="down-left col-md-12">
							<section id="t-cards">
								<div class="container">
									<div class="row">
										<div class="col-sm-6 col-md-3">
											<div class="panel panel-default panel-card">
												<div class="panel-heading">
													<img
														src="https://unsplash.imgix.net/12/barley.jpg?q=75&fm=jpg&s=f39de5ca1970a13dbe6af6c86b3c47ec" />
													<button class="btn btn-primary btn-sm" role="button">Go</button>
												</div>

												<div class="panel-body text-center">
													<h4 class="panel-header">
														<a href="https://twitter.com/maridlcrmn">@Maridlcrmn</a>
													</h4>
													<small>A short description goes here.</small>
												</div>
												<div class="panel-thumbnails">
													<div class="row">
														<div class="col-xs-4">
															<div class="thumbnail">
																<img src="http://placemi.com/mzwlj/60x60" />
															</div>
														</div>
														<div class="col-xs-4">
															<div class="thumbnail">
																<img src="http://placemi.com/yboaj/60x60" />
															</div>
														</div>
														<div class="col-xs-4">
															<div class="thumbnail">
																<img src="http://placemi.com/gv3bp/60x60" />
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-md-3">
											<div class="panel panel-default panel-card">
												<div class="panel-heading">
													<img
														src="https://unsplash.imgix.net/41/bXoAlw8gT66vBo1wcFoO_IMG_9181.jpg?q=75&fm=jpg&s=a760fd82863937c841f4b3870cdef011" />
													<button class="btn btn-primary btn-sm" role="button">Go</button>
												</div>

												<div class="panel-body text-center">
													<h4 class="panel-header">
														<a href="https://twitter.com/maridlcrmn">@Maridlcrmn</a>
													</h4>
													<small>A short description goes here.</small>
												</div>
												<div class="panel-thumbnails">
													<div class="row">
														<div class="col-xs-4">
															<div class="thumbnail">
																<img src="http://placemi.com/dstb9/60x60" />
															</div>
														</div>
														<div class="col-xs-4">
															<div class="thumbnail">
																<img src="http://placemi.com/2lsao/60x60" />
															</div>
														</div>
														<div class="col-xs-4">
															<div class="thumbnail">
																<img src="http://placemi.com/urcon/60x60" />
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-md-3">
											<div class="panel panel-default panel-card">
												<div class="panel-heading">
													<img
														src="https://ununsplash.imgix.net/19/waves.JPG?q=75&fm=jpg&s=6f316bc8e1dc9887a7cebe0841096e99" />
													<button class="btn btn-primary btn-sm" role="button">Go</button>
												</div>

												<div class="panel-body text-center">
													<h4 class="panel-header">
														<a href="https://twitter.com/maridlcrmn">@Maridlcrmn</a>
													</h4>
													<small>A short description goes here.</small>
												</div>
												<div class="panel-thumbnails">
													<div class="row">
														<div class="col-xs-4">
															<div class="thumbnail">
																<img src="http://placemi.com/7an8e/60x60" />
															</div>
														</div>
														<div class="col-xs-4">
															<div class="thumbnail">
																<img src="http://placemi.com/wntpb/60x60" />
															</div>
														</div>
														<div class="col-xs-4">
															<div class="thumbnail">
																<img src="http://placemi.com/jrzxa/60x60" />
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-md-3">
											<div class="panel panel-default panel-card">
												<div class="panel-heading">
													<img
														src="https://ununsplash.imgix.net/26/camera-keys.jpg?q=75&fm=jpg&s=b919d3158053cde8e9f0e37b4876c14f" />
													<button class="btn btn-primary btn-sm" role="button">Go</button>
												</div>

												<div class="panel-body text-center">
													<h4 class="panel-header">
														<a href="https://twitter.com/maridlcrmn">@Maridlcrmn</a>
													</h4>
													<!-- 안쪽 글자 변경 -->
													<small>A short description goes here.</small>
												</div>
												<div class="panel-thumbnails">
													<div class="row">
														<div class="col-xs-4">
															<div class="thumbnail">
																<img src="http://placemi.com/sqfuk/60x60" />
															</div>
														</div>
														<div class="col-xs-4">
															<div class="thumbnail">
																<img src="http://placemi.com/71mf8/60x60" />
															</div>
														</div>
														<div class="col-xs-4">
															<div class="thumbnail">
																<img src="http://placemi.com/1pdrw/60x60" />
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>

						</div>

					</div>
				</div>
			</div>
			<!-- right end -->
		</div>

	</div>

	<script src="js/scrolling-nav.js"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

</body>
</html>