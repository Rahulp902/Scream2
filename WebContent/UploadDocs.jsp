<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="eLearning is a modern and fully responsive Template by WebThemez.">
<meta name="author" content="webThemez.com">
<title></title>
<link rel="favicon" href="assets/images/favicon.png">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<!-- Custom styles for our template -->
<link rel="stylesheet" href="assets/css/bootstrap-theme.css"
	media="screen">
<link rel="stylesheet" type="text/css" href="assets/css/da-slider.css" />
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" type="text/css" href="assets/css/isotope.css"
	media="screen" />
<link rel="stylesheet" href="assets/js/fancybox/jquery.fancybox.css"
	type="text/css" media="screen" />
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
<script type="text/javascript" src="angularjs/angular.min.js"></script>
<script>
	
	    function downloadDialog(id,action,filename,uid){
 	    	$('.hid').val(id);
	    	$('.hid1').val(action);
	    	$('.hid2').val(filename);
	    	$('.hid3').val(uid);
	    	$('.modal').modal('show');
	    	
	    }
	    
	    function submitKey()
	    {
	    	
	      $('.model').modal('hide');
	  	  document.form1.submit();
	  	  $('.hid').val(null);
	  	  $('.hid1').val(null);
	  	  $('.hid2').val(null);
	  	  $('.hid3').val(null);
 	  	  $('.pkey').val('');
	    }
	 
</script>
 
</head>
<body style="background-image: url('image/wallpaperhd.jpg');">



	<div class="modal fade" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Enter Private Key ::</h4>
				</div>
				<div class="modal-body">
					<div class="table-responsive">
						<form action="DownloadFileServlet" name="form1" method="Get">
							<input type="password" name="pkey" class="form-control pkey">
							<input type="hidden" class="hid" name="id"><br> <input
								type="hidden" class="hid1" name="action"><br> <input
								type="hidden" class="hid2" name="filename"><br> <input
								type="hidden" class="hid3" name="uid"><br>
							<p>
								<button type="button" class="btn btn-success"
									onclick="submitKey()">Submit</button>
							</p>
						</form>

					</div>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- Fixed navbar -->
	<jsp:include page="Navigation.jsp"></jsp:include>
	<!-- /.navbar -->

	<div class="container">
		<div class="row">
			<div class="col-md-5"></div>
			<div class="col-sm-7">
				<h1>Upload Documents</h1>
			</div>
		</div>
	</div>


	<div class="container" data-ng-app="documentApp"
		style="margin-left: 300px; margin-top: 50px">
		<div class="row">

			<div class="col-md-8">
				<form class="form-light mt-20" enctype="multipart/form-data"
					action="UploadServlet1" method="post">

					<div class="form-group">
						Attach <input type="file" name="files" class="btn btn-primary">
						<label>Files: </label>
					</div>
					<hr>
					<button type="submit" class="btn btn-two">Upload</button>
					<button type="reset" class="btn btn-two">cancel</button>
					<p>
						<br />
					</p>
				</form>
				<div>
					<h3>
					 
					</h3>


					<table class="table table-hover">
						<tr>
							<td><h3>File Name</h3></td>
							<td><h3>File Size</h3></td>
							<td><h3>Download</h3></td>
							<td><h3>View</h3></td>
							<td><h3>Delete</h3></td>
						</tr>

						 

						<tr data-ng-repeat="doc in documents">
							<td> fileName1 </td>
							<td> fileSize </td>



							<td><a style="color: black;"
								onclick="downloadDialog('id','attachment','fileName','uid')"
								href="javascript:void(0);" class="actionLinks">Download</a></td>
							<td><a style="color: black;"
								onclick="downloadDialog('id','inline','fileName','uid')"
								href="javascript:void(0);" class="actionLinks">View</a></td>
							<td><a style="color: black;"
								onclick="downloadDialog('id','delete','fileName','uid')"
								href="javascript:void(0);" class="actionLinks">Delete</a></td>



							 
						</tr>
						 
					</table>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- End Footer -->


	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>

	<script src="assets/js/jquery.cslider.js"></script>
	<script src="assets/js/jquery.isotope.min.js"></script>
	<script src="assets/js/fancybox/jquery.fancybox.pack.js"
		type="text/javascript"></script>
	<script src="assets/js/custom.js"></script>
</body>
</html>
