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
		<jsp:include page="../includes/footer.jsp" /> 

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
<!-- HandleBar 사용 -->
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
	//Handlerbar 헬퍼 함수 - detachment === 'y' 일때만 running 모양 표시하기
	Handlebars.registerHelper('isDetach',function(detachment){
		if(detachment==='y'){
			return '<i class="fas fa-running"></i>';
		}else{
			return '';
		}
	});
	
	let currentPage = 1; //현재 페이지 
	let lastPage=${lastPage}; //서버에서 계산된 마지막 페이지 
	let $current; //현재 페이지 정보 [배열]
	let $last; //마지막 페이지 정보 [배열]
	
	/* 손전등 정보 새로고침  */
	const refreshFlashes =(page) => {
		const url = new URL('http://localhost:8011/hetgui/api/flashes');
        const params = {page:page};
        url.search = new URLSearchParams(params).toString();
        
		fetch(url).then((res) => {
			if (res.status === 200 || res.status === 201) { // 성공을 알리는 HTTP 상태 코드면
				res.json().then(json => {
			  	console.log(json); // 텍스트 출력
			  		lastPage=json.lastPage;
			  		currentPage=json.page;
			  		Array.prototype.map.call($current,(dom)=>dom.innerText=currentPage); //현재 페이지 정보를 바꿔준다.
			  		Array.prototype.map.call($last,(dom)=>dom.innerText=lastPage); //마지막 페이지 정보를 바꿔준다.
			    	bindingTemplate(json.item); //HTML 템플릿에 json 데이터를 바인딩 시킨다.
			    })
			} else { // 실패를 알리는 HTTP 상태 코드면
				console.error(res.statusText);
			}
		}).catch(err => console.error(err));
	};
	//template에 ajax로 받아온 json데이터를 세팅한다.
	const bindingTemplate = (dataList) => {
		const template = document.querySelector("#flashTemplate").innerText;
		const bindTemplate = Handlebars.compile(template); //bindTemplate 메서드임.
		let resultHTML = '';
		const tbody = document.querySelector("tbody");
		dataList.forEach(function(data,index){
			data.index = index; // 체크박스의  label과 input의 id값을 맞춰주기 위한 index
			resultHTML += bindTemplate(data);
		});
		tbody.innerHTML = resultHTML;
	}
	//손전등 추가 submit
	const addFlash = (submitBtn) => {
		/* //ajax로 해도 되지만 꼼수를 한번 써보자. 안쓰기로...
		const form=document.querySelector('form[name=addFlashForm]');
		form.submit();
		*/
		const $model = document.querySelector('input[name=model]');
		const $firmware = document.querySelector('input[name=firmware]');
		const model = $model.value;
		const firmware = $firmware.value;
		
		if(model==='' || firmware===''){
			alert('model과 firmware 정보는 필수입니다.');
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
			  res.text().then(text => console.log(text)); // 텍스트 출력
			  refreshFlashes(1);
		  } else {
		    console.error(res.statusText);
		  }
		}).catch(err => console.error(err));
		$model.value="";
		$firmware.value="";
		submitBtn.previousElementSibling.click(); //모달창 닫기 클릭 트리거 작동
	}
	//손전등 수정
	const modifyFlash = (submitBtn) => {
		const $modal = document.querySelector("#flashChangeModal");
		const $detachment = $modal.querySelector("select[name=detachment]");
		const detachment = $detachment.options[$detachment.selectedIndex].value;
		const id = $modal.querySelector("input[name=id]").value;
		const model = $modal.querySelector("input[name=model]").value;
		const firmware = $modal.querySelector("input[name=firmware]").value;
		if(model==='' || firmware===''){
			alert('model과 firmware 정보는 필수입니다.');
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
			  res.text().then(text => console.log(text)); // 텍스트 출력
			  refreshFlashes(currentPage); //수정은 현재 페이지가 바로 보일 수 있도록 한다.
		  } else {
		    console.error(res.statusText);
		  }
		}).catch(err => console.error(err));
		submitBtn.previousElementSibling.click(); //모달창 닫기 클릭 트리거 작동
	}
	//손전등 삭제 from server
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
			  res.text().then(text => console.log(text)); // 텍스트 출력
			  refreshFlashes(1);
		  } else {
		    console.error(res.statusText);
		  }
		}).catch(err => console.error(err));
	}
	 
	//이벤트 버블링을 이용한 이벤트 등록 (위,아래에 같은 버튼들이 있으므로.)
	const controlEventBubble = (e) => {
		const classList = e.target.classList;
		if(classList.contains('btn-trash')){ //삭제 버튼
			deleteFlash();
		}else if(classList.contains('btn-refresh')){ //새로고침 버튼
			refreshFlashes(1);
		}else if(classList.contains('prev-page')){ //이전 페이지
			if(currentPage<=1) return;
			refreshFlashes(--currentPage);
		}else if(classList.contains('next-page')){ //이전 페이지
			if(currentPage==lastPage) return ;
			refreshFlashes(++currentPage);
		}else if(classList.contains('changeable')){ //테이블을 누르면 수정 모달 띄우기
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
		$current = document.querySelectorAll("span.current"); //현재 페이지 정보 
		$last = document.querySelectorAll("span.last");//마지막 페이지 정보
		
		//수정 모달이 열리는 순간을 캡쳐하여 Ajax 요청을 보내서 클릭한 손전등에 대한 정보를 세팅한다. (bootstrap4는 jQuery를 사용해야함.)
		$('#flashChangeModal').on('show.bs.modal', function (event) {
			  const button = $(event.relatedTarget) // Button that triggered the modal
			  const id = button.data('id');
			  const modal = $(this)
			  fetch('/hetgui/api/flashes/'+id).then((res) => {
				  if (res.status === 200 || res.status === 201) { // 성공을 알리는 HTTP 상태 코드면
				    res.json().then(json => {
				    	console.log(json); // 텍스트 출력
				    	modal.find('input[name=id]').val(json.item.id);
				    	modal.find('select[name=detachment]').val(json.item.detachment).prop("selected",true);
				    	modal.find('input[name=model]').val(json.item.model);
				    	modal.find('input[name=firmware]').val(json.item.firmware);
				    })
				  } else { // 실패를 알리는 HTTP 상태 코드면
				    console.error(res.statusText);
				  }
			  }).catch(err => console.error(err));
		})
	});
</script>
 
<!-- 손전등 추가 모달 -->
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
<!-- 손전등 변경 모달 -->
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
	<!-- 꼼수용 iframe 현재는 사용하지 않음. -->
<iframe name="fakeIframe" style="display:none"></iframe>
</body>
</html>
