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
											<c:forEach items="${requestScope.flashes}" var="flash" varStatus="status">
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" id="check${status.index}" data-id=${flash.id }>
															<label for="check${status.index}"></label>
														</div>
													</td>
													<td>${flash.id }</td>
													<td class="mailbox-subject">${flash.uuid }</td>
													<td class="mailbox-subject">
														<c:if test="${flash.detachment eq 'y'}">
															<i class="fas fa-running"></i>
														</c:if>
													</td>
													<td class="mailbox-subject">${flash.model }</td>
													<td class="mailbox-subject">${flash.firmware }</td>
													<td class="mailbox-subject">${flash.sendTime }</td>
													<td></td>
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
		<td>{{id}}</td>
		<td class="mailbox-subject">{{uuid}}</td>
		<td class="mailbox-subject">
			{{#isDetach detachment}}
				{{detachment}}
			{{/isDetach}}
		</td>
		<td class="mailbox-subject">{{model}}</td>
		<td class="mailbox-subject">{{firmware}}</td>
		<td class="mailbox-subject">{{sendTime}}</td>
		<td></td>
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
	
	/* 손전등 정보 새로고침  */
	const refreshFlashes =() => {
		  fetch('/hetgui/api/flashes').then((res) => {
			  if (res.status === 200 || res.status === 201) { // 성공을 알리는 HTTP 상태 코드면
			    res.json().then(json => {
			    	console.log(json); // 텍스트 출력
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
		//ajax로 해도 되지만 꼼수를 한번 써보자. 안쓰기로...
		/*
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
			  refreshFlashes();
		  } else {
		    console.error(res.statusText);
		  }
		}).catch(err => console.error(err));
		$model.value="";
		$firmware.value="";
		submitBtn.previousElementSibling.click(); //모달창 닫기 클릭 트리거 작동
	}
	//손전등 삭제 from server
	const deleteFlash =() => {
		const $checked = document.querySelectorAll('.icheck-primary > input[type=checkbox]:checked');
		const ids=[];
		$checked.forEach(function(v,i){
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
			  refreshFlashes();
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
			refreshFlashes();
		}
	}
	 
	document.addEventListener("DOMContentLoaded",function(){
		const mainContent = document.querySelector("#mainContent");
		mainContent.addEventListener("click",controlEventBubble);
		//const syncBtn=document.querySelector(".fa-sync-alt");
		//syncBtn.addEventListener("click",refreshFlashes);
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
            <label for="recipient-name" class="col-form-label">Model:</label>
            <input type="text" class="form-control" name="model"/>
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Firmware:</label>
            <input type="text" class="form-control" name="firmware"/>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="addFlash(this)">Send message</button>
      </div>
    </div>
  </div>
</div>
<!-- 꼼수용 iframe 현재는 사용하지 않음. -->
<iframe name="fakeIframe" style="display:none"></iframe>
</body>
</html>
