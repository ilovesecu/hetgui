<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>HETGUI | Dashboard </title>
	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="/hetgui/plugins/fontawesome-free/css/all.min.css">
	<!-- icheck bootstrap -->
	<link rel="stylesheet" href="/hetgui/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="/hetgui/css/adminlte.css">
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<jsp:include page="../includes/header.jsp"/>
		<jsp:include page="../includes/aside.jsp" />
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>Inbox</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Inbox</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="card card-primary card-outline">
							<div class="card-header">
								<h3 class="card-title">Inbox</h3>

								<div class="card-tools">
									<div class="input-group input-group-sm">
										<input type="text" class="form-control"
											placeholder="Search Mail">
										<div class="input-group-append">
											<div class="btn btn-primary">
												<i class="fas fa-search"></i>
											</div>
										</div>
									</div>
								</div>
								<!-- /.card-tools -->
							</div>
							<!-- /.card-header -->
							<div class="card-body p-0">
								<div class="mailbox-controls">
									<!-- Check all button -->
									<button type="button"
										class="btn btn-default btn-sm checkbox-toggle">
										<i class="far fa-square"></i>
									</button>
									<div class="btn-group">
										<button type="button" class="btn btn-default btn-sm">
											<i class="far fa-trash-alt"></i>
										</button>
										<button type="button" class="btn btn-default btn-sm">
											<i class="fas fa-reply"></i>
										</button>
										<button type="button" class="btn btn-default btn-sm">
											<i class="fas fa-share"></i>
										</button>
									</div>
									<!-- /.btn-group -->
									<button type="button" class="btn btn-default btn-sm">
										<i class="fas fa-sync-alt"></i>
									</button>
									<div class="float-right">
										1-50/200
										<div class="btn-group">
											<button type="button" class="btn btn-default btn-sm">
												<i class="fas fa-chevron-left"></i>
											</button>
											<button type="button" class="btn btn-default btn-sm">
												<i class="fas fa-chevron-right"></i>
											</button>
										</div>
										<!-- /.btn-group -->
									</div>
									<!-- /.float-right -->
								</div>
								<div class="table-responsive mailbox-messages">
									<table class="table table-hover table-striped">
										<thead>
											<tr>
												<th></th>
												<th>ID</th>
												<th>UUID</th>
												<th>Detachment</th>
												<th>MODEL</th>
												<th>Firmware</th>
												<th>SendTime</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<div class="icheck-primary">
														<input type="checkbox" value="" id="check1">
														<label for="check1"></label>
													</div>
												</td>
												<td>1</td>
												<td class="mailbox-subject">50ebdb374a1a4de4bb42f44a91dafe37</td>
												<td class="mailbox-subject"><i class="fas fa-running"></i></td>
												<td class="mailbox-subject">TEST_M1</td>
												<td class="mailbox-subject">hetgui_stable_v1</td>
												<td class="mailbox-subject">2021-06-03 01:16:20</td>
												<td></td>
											</tr>
										</tbody>
									</table>
									<!-- /.table -->
								</div>
								<!-- /.mail-box-messages -->
							</div>
							<!-- /.card-body -->
							<div class="card-footer p-0">
								<div class="mailbox-controls">
									<!-- Check all button -->
									<button type="button"
										class="btn btn-default btn-sm checkbox-toggle">
										<i class="far fa-square"></i>
									</button>
									<div class="btn-group">
										<button type="button" class="btn btn-default btn-sm">
											<i class="far fa-trash-alt"></i>
										</button>
										<button type="button" class="btn btn-default btn-sm">
											<i class="fas fa-reply"></i>
										</button>
										<button type="button" class="btn btn-default btn-sm">
											<i class="fas fa-share"></i>
										</button>
									</div>
									<!-- /.btn-group -->
									<button type="button" class="btn btn-default btn-sm">
										<i class="fas fa-sync-alt"></i>
									</button>
									<div class="float-right">
										1-50/200
										<div class="btn-group">
											<button type="button" class="btn btn-default btn-sm">
												<i class="fas fa-chevron-left"></i>
											</button>
											<button type="button" class="btn btn-default btn-sm">
												<i class="fas fa-chevron-right"></i>
											</button>
										</div>
										<!-- /.btn-group -->
									</div>
									<!-- /.float-right -->
								</div>
							</div>
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<jsp:include page="../includes/footer.jsp" />
		<!-- <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.1.0
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer> -->

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="/hetgui/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="/hetgui/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/hetgui/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="/hetgui/js/demo.js"></script>
	<!-- Page specific script -->
	<script>
  $(function () {
    //Enable check and uncheck all functionality
    $('.checkbox-toggle').click(function () {
      var clicks = $(this).data('clicks')
      if (clicks) {
        //Uncheck all checkboxes
        $('.mailbox-messages input[type=\'checkbox\']').prop('checked', false)
        $('.checkbox-toggle .far.fa-check-square').removeClass('fa-check-square').addClass('fa-square')
      } else {
        //Check all checkboxes
        $('.mailbox-messages input[type=\'checkbox\']').prop('checked', true)
        $('.checkbox-toggle .far.fa-square').removeClass('fa-square').addClass('fa-check-square')
      }
      $(this).data('clicks', !clicks)
    })

    //Handle starring for font awesome
    $('.mailbox-star').click(function (e) {
      e.preventDefault()
      //detect type
      var $this = $(this).find('a > i')
      var fa    = $this.hasClass('fa')

      //Switch states
      if (fa) {
        $this.toggleClass('fa-star')
        $this.toggleClass('fa-star-o')
      }
    })
  })
</script>
</body>
</html>
