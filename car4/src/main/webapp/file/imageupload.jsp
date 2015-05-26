<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap-theme.min.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet">
<link href="../css/search.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="../css/jasny-bootstrap.min.css" rel="stylesheet" media="screen">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<script>
</script>
<body>

	<div class="container">
        <form method="post" action="addFile.do" enctype="multipart/form-data" id="formFileUpload">
			<div class="row">
				<div class='list-group gallery form-group'>
					<div class="row">
						<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
							<div class="fileinput fileinput-new" data-provides="fileinput">
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
									style="max-width: 250px; max-height: 250px;" align="center"></div>
								<div align="center">
									<span class="btn btn-default btn-file"><span
										class="fileinput-new">Select image</span><span
										class="fileinput-exists">Change</span><input type="file"
										name="upfile[0]"></span> <a href="#"
										class="btn btn-default fileinput-exists"
										data-dismiss="fileinput">Remove</a>
								</div>
							</div>
						</div>
						<!-- col-6 / end -->
						<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
							<div class="fileinput fileinput-new" data-provides="fileinput">
								<div class="fileinput-new thumbnail"
									style="width: 170px; height: 160px;">
									<img data-src="holder.js/100x100%" alt="">
									<div class='text-right'>
										<small class='text-muted'>실내</small>
									</div>
									<!-- text-right / end -->
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail"
									style="max-width: 250px; max-height: 250px;" align="center"></div>
								<div align="center">
									<span class="btn btn-default btn-file"><span
										class="fileinput-new">Select image</span><span
										class="fileinput-exists">Change</span><input type="file"
										name="upfile[1]"></span> <a href="#"
										class="btn btn-default fileinput-exists"
										data-dismiss="fileinput">Remove</a>
								</div>
							</div>
						</div>
						<!-- col-6 / end -->
						<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
							<div class="fileinput fileinput-new" data-provides="fileinput">
								<div class="fileinput-new thumbnail"
									style="width: 170px; height: 160px;">
									<img data-src="holder.js/100x100%" alt="">
									<div class='text-right'>
										<small class='text-muted'>전면</small>
									</div>
									<!-- text-right / end -->
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail"
									style="max-width: 250px; max-height: 250px;" align="center"></div>
								<div align="center">
									<span class="btn btn-default btn-file"><span
										class="fileinput-new">Select image</span><span
										class="fileinput-exists">Change</span><input type="file"
										name="upfile[2]"></span> <a href="#"
										class="btn btn-default fileinput-exists"
										data-dismiss="fileinput">Remove</a>
								</div>
							</div>
						</div>
						<!-- col-6 / end -->
						<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
							<div class="fileinput fileinput-new" data-provides="fileinput">
								<div class="fileinput-new thumbnail"
									style="width: 170px; height: 160px;">
									<img data-src="holder.js/100x100%" alt="">
									<div class='text-right'>
										<small class='text-muted'>후면</small>
									</div>
									<!-- text-right / end -->
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail"
									style="max-width: 250px; max-height: 250px;" align="center"></div>
								<div align="center">
									<span class="btn btn-default btn-file"><span
										class="fileinput-new">Select image</span><span
										class="fileinput-exists">Change</span><input type="file"
										name="upfile[3]"></span> <a href="#"
										class="btn btn-default fileinput-exists"
										data-dismiss="fileinput">Remove</a>
								</div>
							</div>
						</div>
						<!-- col-6 / end -->
						<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
							<div class="fileinput fileinput-new" data-provides="fileinput">
								<div class="fileinput-new thumbnail"
									style="width: 170px; height: 160px;">
									<img data-src="holder.js/100x100%" alt="">
									<div class='text-right'>
										<small class='text-muted'>측면</small>
									</div>
									<!-- text-right / end -->
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail"
									style="max-width: 250px; max-height: 250px;" align="center"></div>
								<div align="center">
									<span class="btn btn-default btn-file"><span
										class="fileinput-new">Select image</span><span
										class="fileinput-exists">Change</span><input type="file"
										name="upfile[4]"></span> <a href="#"
										class="btn btn-default fileinput-exists"
										data-dismiss="fileinput">Remove</a>
								</div>
							</div>
						</div>
						<!-- col-6 / end -->
						<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
							<div class="fileinput fileinput-new" data-provides="fileinput">
								<div class="fileinput-new thumbnail"
									style="width: 170px; height: 160px;">
									<img data-src="holder.js/100x100%" alt="">
									<div class='text-right'>
										<small class='text-muted'>Engine</small>
									</div>
									<!-- text-right / end -->
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail"
									style="max-width: 250px; max-height: 250px;" align="center"></div>
								<div align="center">
									<span class="btn btn-default btn-file"><span
										class="fileinput-new">Select image</span><span
										class="fileinput-exists">Change</span><input type="file"
										name="upfile[5]"></span> <a href="#"
										class="btn btn-default fileinput-exists"
										data-dismiss="fileinput">Remove</a>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class='col-sm-4 col-xs-6 col-md-2 col-lg-2'>
							<div class="fileinput fileinput-new" data-provides="fileinput">
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
									style="max-width: 250px; max-height: 250px;" align="center"></div>
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
							<div class="fileinput fileinput-new" data-provides="fileinput">
								<div class="fileinput-new thumbnail"
									style="width: 170px; height: 160px;">
									<img data-src="holder.js/100x100%" alt="">
									<div class='text-right'>
										<small class='text-muted'>실내</small>
									</div>
									<!-- text-right / end -->
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail"
									style="max-width: 250px; max-height: 250px;" align="center"></div>
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
							<div class="fileinput fileinput-new" data-provides="fileinput">
								<div class="fileinput-new thumbnail"
									style="width: 170px; height: 160px;">
									<img data-src="holder.js/100x100%" alt="">
									<div class='text-right'>
										<small class='text-muted'>전면</small>
									</div>
									<!-- text-right / end -->
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail"
									style="max-width: 250px; max-height: 250px;" align="center"></div>
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
							<div class="fileinput fileinput-new" data-provides="fileinput">
								<div class="fileinput-new thumbnail"
									style="width: 170px; height: 160px;">
									<img data-src="holder.js/100x100%" alt="">
									<div class='text-right'>
										<small class='text-muted'>후면</small>
									</div>
									<!-- text-right / end -->
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail"
									style="max-width: 250px; max-height: 250px;" align="center"></div>
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
							<div class="fileinput fileinput-new" data-provides="fileinput">
								<div class="fileinput-new thumbnail"
									style="width: 170px; height: 160px;">
									<img data-src="holder.js/100x100%" alt="">
									<div class='text-right'>
										<small class='text-muted'>측면</small>
									</div>
									<!-- text-right / end -->
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail"
									style="max-width: 250px; max-height: 250px;" align="center"></div>
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
								class="img-responsive" alt="" src="http://placehold.it/320x320" />
								<div class='text-right'>
									<small class='text-muted'>Image Title</small>
								</div> <!-- text-right / end -->
							</a>
						</div>
					</div>
						
	
					<!-- button -->
					<div class="row">
	
						<div class="form-group col-md-12">
							<button id="fileUpload" type="submit" class="btn btn-warning btn-lg"
								style="width: 100%;">
								<span class="glyphicon glyphicon-ok-sign"></span>등록
							</button>
						</div>
					</div>
					<!-- col-6 / end -->
				</div>
				<!-- list-group / end -->
			</div>
		<!-- row / end -->
		</form>
		<!-- form / end -->
	</div>
	<!-- container / end -->

	


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://code.jquery.com/jquery.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jasny-bootstrap.min.js"></script>

</body>

</html>