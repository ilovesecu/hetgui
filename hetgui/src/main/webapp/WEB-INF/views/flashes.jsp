<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>HETGUI | Flashes </title>
	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="/hetgui/plugins/fontawesome-free/css/all.min.css">
	<!-- icheck bootstrap -->
	<link rel="stylesheet" href="/hetgui/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
	<!-- <link rel="stylesheet" href="/hetgui/plugins/icheck-bootstrap/icheck-bootstrap.css"> -->
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
							<h1>Flash Status</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Flash</li>
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
						<div id="mainContent" class="card card-primary card-outline">
							<div class="card-header">
								<h3 class="card-title">Flashes</h3>

								<!-- <div class="card-tools">
									<div class="input-group input-group-sm">
										<input type="text" class="form-control"
											placeholder="Search Mail">
										<div class="input-group-append">
											<div class="btn btn-primary">
												<i class="fas fa-search"></i>
											</div>
										</div>
									</div>
								</div> --> 
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
										<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#flashAddModal">
											<i class="fas fa-plus"></i>
										</button>
										<button type="button" class="btn btn-default btn-sm btn-trash">
											<i class="far fa-trash-alt btn-trash"></i>
										</button>
									</div>
									<!-- /.btn-group -->
									<button type="button" class="btn btn-default btn-sm btn-refresh">
										<i class="fas fa-sync-alt btn-refresh"></i>
									</button> 
									<div class="float-right"> 
										page : <span class="current">${page }</span>/<span class="last">${lastPage}</span>
										<div class="btn-group">
											<button type="button" class="prev-page btn btn-default btn-sm">
												<i class="fas fa-chevron-left"></i>
											</button>
											<button type="button" class="next-page btn btn-default btn-sm">
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
											<c:forEach items="${requestScope.flashes}" var="flash" varStatus="status">
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" id="check${status.index}" data-id=${flash.id }>
															<label for="check${status.index}"></label>
														</div>
													</td>
													<td class="changeable">${flash.id }</td>
													<td class="mailbox-subject changeable">${flash.uuid }</td>
													<td class="mailbox-subject changeable">
														<c:if test="${flash.detachment eq 'y'}">
															<i class="fas fa-running"></i>
														</c:if>
													</td>
													<td class="mailbox-subject changeable">${flash.model }</td>
													<td class="mailbox-subject changeable">${flash.firmware }</td>
													<td class="mailbox-subject changeable">${flash.sendTime }</td>
												</tr>
											</c:forEach>
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
										<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#flashAddModal">
											<i class="fas fa-plus"></i>
										</button>
										<button type="button" class="btn btn-default btn-sm btn-trash">
											<i class="far fa-trash-alt btn-trash"></i>
										</button>
									</div> 
									<!-- /.btn-group -->
									<button type="button" class="btn btn-default btn-sm btn-refresh">
										<i class="fas fa-sync-alt btn-refresh"></i>
									</button>
									<div class="float-right">
										page : <span class="current">${page }</span>/<span class="last">${lastPage}</span>
										<div class="btn-group">
											<button type="button" class="prev-page btn btn-default btn-sm">
												<i class="fas fa-chevron-left"></i>
											</button>
											<button type="button" class="next-page btn btn-default btn-sm">
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
		<jsp:include page="../includes/footer2.jsp" /> 

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
<!-- HandleBar ?????? -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.min.js"
        integrity="sha512-fujQJs+fkj7+Az7XKDxMLbVuuaeljjqMQDh3TAI7nYKQMQhEztrmyuex6hlnRuttjXJ9BFvnl4r/t8r8L6gFfA=="
        crossorigin="anonymous"></script>
<script type="flashTemplate" id="flashTemplate">
	<tr>
		<td>
			<div class="icheck-primary">
				<input type="checkbox" id="check{{index}}" data-id={{id}}>
				<label for="check{{index}}"></label>
			</div>
		</td>
		<td class="changeable">{{id}}</td>
		<td class="mailbox-subject changeable">{{uuid}}</td>
		<td class="mailbox-subject changeable">
			{{#isDetach detachment}}
				{{detachment}}
			{{/isDetach}}
		</td>
		<td class="mailbox-subject changeable">{{model}}</td>
		<td class="mailbox-subject changeable">{{firmware}}</td>
		<td class="mailbox-subject changeable">{{sendTime}}</td>
	</tr>
</script> 
<script> 
	//Handlerbar ?????? ?????? - detachment === 'y' ????????? running ?????? ????????????
	Handlebars.registerHelper('isDetach',function(detachment){
		if(detachment==='y'){
			return '<i class="fas fa-running"></i>';
		}else{
			return '';
		}
	});
	
	let currentPage = 1; //?????? ????????? 
	let lastPage=${lastPage}; //???????????? ????????? ????????? ????????? 
	let $current; //?????? ????????? ?????? [??????]
	let $last; //????????? ????????? ?????? [??????]
	
	/* ????????? ?????? ????????????  */
	const refreshFlashes =(page) => {
		const url = new URL('http://localhost:8011/hetgui/api/flashes');
        //const url = new URL('/hetgui/api/flashes');
		const params = {page:page};
        url.search = new URLSearchParams(params).toString();
        fetch('/hetgui/api/flashes?page='+page).then((res) => {
			if (res.status === 200 || res.status === 201) { // ????????? ????????? HTTP ?????? ?????????
				res.json().then(json => {
			  	console.log(json); // ????????? ??????
			  		lastPage=json.lastPage;
			  		currentPage=json.page;
			  		Array.prototype.map.call($current,(dom)=>dom.innerText=currentPage); //?????? ????????? ????????? ????????????.
			  		Array.prototype.map.call($last,(dom)=>dom.innerText=lastPage); //????????? ????????? ????????? ????????????.
			    	bindingTemplate(json.item); //HTML ???????????? json ???????????? ????????? ?????????.
			    })
			} else { // ????????? ????????? HTTP ?????? ?????????
				console.error(res.statusText);
			}
		}).catch(err => console.error(err));
        /*
		fetch(url).then((res) => {
			if (res.status === 200 || res.status === 201) { // ????????? ????????? HTTP ?????? ?????????
				res.json().then(json => {
			  	console.log(json); // ????????? ??????
			  		lastPage=json.lastPage;
			  		currentPage=json.page;
			  		Array.prototype.map.call($current,(dom)=>dom.innerText=currentPage); //?????? ????????? ????????? ????????????.
			  		Array.prototype.map.call($last,(dom)=>dom.innerText=lastPage); //????????? ????????? ????????? ????????????.
			    	bindingTemplate(json.item); //HTML ???????????? json ???????????? ????????? ?????????.
			    })
			} else { // ????????? ????????? HTTP ?????? ?????????
				console.error(res.statusText);
			}
		}).catch(err => console.error(err));*/
	};
	//template??? ajax??? ????????? json???????????? ????????????.
	const bindingTemplate = (dataList) => {
		const template = document.querySelector("#flashTemplate").innerText;
		const bindTemplate = Handlebars.compile(template); //bindTemplate ????????????.
		let resultHTML = '';
		const tbody = document.querySelector("tbody");
		dataList.forEach(function(data,index){
			data.index = index; // ???????????????  label??? input??? id?????? ???????????? ?????? index
			resultHTML += bindTemplate(data);
		});
		tbody.innerHTML = resultHTML;
	}
	//????????? ?????? submit
	const addFlash = (submitBtn) => {
		/* //ajax??? ?????? ????????? ????????? ?????? ?????????. ????????????...
		const form=document.querySelector('form[name=addFlashForm]');
		form.submit();
		*/
		const $model = document.querySelector('input[name=model]');
		const $firmware = document.querySelector('input[name=firmware]');
		const model = $model.value;
		const firmware = $firmware.value;
		
		if(model==='' || firmware===''){
			alert('model??? firmware ????????? ???????????????.');
			return ;
		}
		
		const body = {model:model, firmware:firmware};
		fetch('/hetgui/api/flashes', {
		  method: 'POST',
		  body : JSON.stringify(body),
		  headers: {
			  'Content-Type': 'application/json',
		  },
		}).then((res) => {
		  if (res.status === 200 || res.status === 201) {
			  res.text().then(text => console.log(text)); // ????????? ??????
			  refreshFlashes(1);
		  } else {
		    console.error(res.statusText);
		  }
		}).catch(err => console.error(err));
		$model.value="";
		$firmware.value="";
		submitBtn.previousElementSibling.click(); //????????? ?????? ?????? ????????? ??????
	}
	//????????? ??????
	const modifyFlash = (submitBtn) => {
		const $modal = document.querySelector("#flashChangeModal");
		const $detachment = $modal.querySelector("select[name=detachment]");
		const detachment = $detachment.options[$detachment.selectedIndex].value;
		const id = $modal.querySelector("input[name=id]").value;
		const model = $modal.querySelector("input[name=model]").value;
		const firmware = $modal.querySelector("input[name=firmware]").value;
		if(model==='' || firmware===''){
			alert('model??? firmware ????????? ???????????????.');
			return ;
		}
		
		const body = {id:id, detachment:detachment, model:model, firmware:firmware};
		fetch('/hetgui/api/flashes/'+id, {
		  method: 'PUT',
		  body : JSON.stringify(body),
		  headers: {
			  'Content-Type': 'application/json',
		  },
		}).then((res) => {
		  if (res.status === 200 || res.status === 201) {
			  res.text().then(text => console.log(text)); // ????????? ??????
			  refreshFlashes(currentPage); //????????? ?????? ???????????? ?????? ?????? ??? ????????? ??????.
		  } else {
		    console.error(res.statusText);
		  }
		}).catch(err => console.error(err));
		submitBtn.previousElementSibling.click(); //????????? ?????? ?????? ????????? ??????
	}
	//????????? ?????? from server
	const deleteFlash =() => {
		const $checked = document.querySelectorAll('.icheck-primary > input[type=checkbox]:checked');
		const ids=[];
		$checked.forEach(function(v){
			ids.push(v.dataset.id);
		});
		
		fetch('/hetgui/api/flashes', {
		  method: 'DELETE',
		  body : ids.join(','),
		  headers: {
			  'Content-Type': 'application/json',
		  },
		}).then((res) => {
		  if (res.status === 200 || res.status === 201) {
			  res.text().then(text => console.log(text)); // ????????? ??????
			  refreshFlashes(1);
		  } else {
		    console.error(res.statusText);
		  }
		}).catch(err => console.error(err));
	}
	 
	//????????? ???????????? ????????? ????????? ?????? (???,????????? ?????? ???????????? ????????????.)
	const controlEventBubble = (e) => {
		const classList = e.target.classList;
		if(classList.contains('btn-trash')){ //?????? ??????
			deleteFlash();
		}else if(classList.contains('btn-refresh')){ //???????????? ??????
			refreshFlashes(1);
		}else if(classList.contains('prev-page')){ //?????? ?????????
			if(currentPage<=1) return;
			refreshFlashes(--currentPage);
		}else if(classList.contains('next-page')){ //?????? ?????????
			if(currentPage==lastPage) return ;
			refreshFlashes(++currentPage);
		}else if(classList.contains('changeable')){ //???????????? ????????? ?????? ?????? ?????????
			const id = e.target.closest('tr').firstElementChild.nextElementSibling.innerText;
			e.target.dataset.toggle="modal";
			e.target.dataset.target="#flashChangeModal";
			e.target.dataset.id=id;
			//document.getElementById("flashChangeModal").style.display = "block"
    		//document.getElementById("flashChangeModal").classList.add("show")
		}
	}
	 
	document.addEventListener("DOMContentLoaded",function(){
		const $mainContent = document.querySelector("#mainContent");
		$mainContent.addEventListener("click",controlEventBubble);
		$current = document.querySelectorAll("span.current"); //?????? ????????? ?????? 
		$last = document.querySelectorAll("span.last");//????????? ????????? ??????
		
		//?????? ????????? ????????? ????????? ???????????? Ajax ????????? ????????? ????????? ???????????? ?????? ????????? ????????????. (bootstrap4??? jQuery??? ???????????????.)
		$('#flashChangeModal').on('show.bs.modal', function (event) {
			  const button = $(event.relatedTarget) // Button that triggered the modal
			  const id = button.data('id');
			  const modal = $(this)
			  fetch('/hetgui/api/flashes/'+id).then((res) => {
				  if (res.status === 200 || res.status === 201) { // ????????? ????????? HTTP ?????? ?????????
				    res.json().then(json => {
				    	console.log(json); // ????????? ??????
				    	modal.find('input[name=id]').val(json.item.id);
				    	modal.find('select[name=detachment]').val(json.item.detachment).prop("selected",true);
				    	modal.find('input[name=model]').val(json.item.model);
				    	modal.find('input[name=firmware]').val(json.item.firmware);
				    })
				  } else { // ????????? ????????? HTTP ?????? ?????????
				    console.error(res.statusText);
				  }
			  }).catch(err => console.error(err));
		})
	});
</script>
 
<!-- ????????? ?????? ?????? -->
<div class="modal fade" id="flashAddModal" tabindex="-1" aria-labelledby="flashAddModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="flashAddModalLabel">New Flash</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <!-- <form action="/hetgui/api/flashes" method="POST" name="addFlashForm" target="fakeIframe">-->
        <form action="#" name="addFlashForm">
          <div class="form-group">
            <label for="model" class="col-form-label">Model:</label>
            <input type="text" class="form-control" name="model"/>
          </div>
          <div class="form-group">
            <label for="firmware" class="col-form-label">Firmware:</label>
            <input type="text" class="form-control" name="firmware"/>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="addFlash(this)">Add flash</button>
      </div>
    </div>
  </div>
</div>
<!-- ????????? ?????? ?????? -->
	<div class="modal fade" id="flashChangeModal" tabindex="-1"
		aria-labelledby="flashChangeModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="fflashChangeModalLabel">Modify
						Flash</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- <form action="/hetgui/api/flashes" method="POST" name="addFlashForm" target="fakeIframe">-->
					<!-- <form action="#" name="ChangeFlashForm"> -->
						<div class="form-group">
							<label for="id" class="col-form-label">ID:</label> <input
								type="text" class="form-control" name="id" disabled />
						</div>
						<div class="form-group">
							<label for="detachment">Detachment:</label> 
							<select class="form-control" name="detachment">
								<option value="y">y</option>
								<option value="n">n</option>
							</select>
						</div>
						<div class="form-group">
							<label for="model" class="col-form-label">Model:</label> <input
								type="text" class="form-control" name="model" />
						</div>
						<div class="form-group">
							<label for="firmware" class="col-form-label">Firmware:</label> <input
								type="text" class="form-control" name="firmware" />
						</div>
					<!-- </form> -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary"
						onclick="modifyFlash(this)">Modify flash</button>
				</div>
			</div>
		</div>
	</div>
	<!-- ????????? iframe ????????? ???????????? ??????. -->
<iframe name="fakeIframe" style="display:none"></iframe>
</body>
</html>
