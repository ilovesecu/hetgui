<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>HETGUI | Beacons </title>
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
							<h1>Beacon Status</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Beacon</li>
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
								<h3 class="card-title">Beacons</h3>

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
										<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#beaconAddModal">
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
												<th>UUID</th>
												<th>CITY</th>
												<th>STATE</th>
												<th>BUILDING</th>
												<th>FLOOR</th>
												<th>SECTION</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${requestScope.beacons}" var="beacon" varStatus="status">
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" id="check${status.index}" data-id=${beacon.uuid }>
															<label for="check${status.index}"></label>
														</div>
													</td>
													<td class="mailbox-subject changeable">${beacon.uuid }</td>
													<td class="mailbox-subject changeable">${beacon.city }</td>
													<td class="mailbox-subject changeable">${beacon.state }</td>
													<td class="mailbox-subject changeable">${beacon.building }</td>
													<td class="mailbox-subject changeable">${beacon.floor }</td>
													<td class="mailbox-subject changeable">${beacon.section }</td>
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
										<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#beaconAddModal">
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
<!-- HandleBar 사용 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.min.js"
        integrity="sha512-fujQJs+fkj7+Az7XKDxMLbVuuaeljjqMQDh3TAI7nYKQMQhEztrmyuex6hlnRuttjXJ9BFvnl4r/t8r8L6gFfA=="
        crossorigin="anonymous"></script>
<script type="beaconTemplate" id="beaconTemplate">
	<tr>
		<td>
			<div class="icheck-primary">
				<input type="checkbox" id="check{{index}}" data-id={{uuid}}>
				<label for="check{{index}}"></label>
			</div>
		</td>
		<td class="mailbox-subject changeable">{{uuid}}</td>
		<td class="mailbox-subject changeable">{{city}}</td>
		<td class="mailbox-subject changeable">{{state}}</td>
		<td class="mailbox-subject changeable">{{building}}</td>
		<td class="mailbox-subject changeable">{{floor }}</td>
		<td class="mailbox-subject changeable">{{section }}</td>
	</tr>
</script> 
<script> 
	let currentPage = 1; //현재 페이지 
	let lastPage=${lastPage}; //서버에서 계산된 마지막 페이지 
	let $current; //현재 페이지 정보 [배열]
	let $last; //마지막 페이지 정보 [배열]
	
	/* 비콘 정보 새로고침  */
	const refreshBeacons =(page) => {
		const url = new URL('http://localhost:8011/hetgui/api/beacons');
        const params = {page:page};
        url.search = new URLSearchParams(params).toString();
        
        fetch('/hetgui/api/beacons?page='+page).then((res) => {
			if (res.status === 200 || res.status === 201) { // 성공을 알리는 HTTP 상태 코드면
				res.json().then(json => {
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
		const template = document.querySelector("#beaconTemplate").innerText;
		const bindTemplate = Handlebars.compile(template); //bindTemplate 메서드임.
		let resultHTML = '';
		const tbody = document.querySelector("tbody");
		dataList.forEach(function(data,index){
			data.index = index; // 체크박스의  label과 input의 id값을 맞춰주기 위한 index
			resultHTML += bindTemplate(data);
		});
		tbody.innerHTML = resultHTML;
	}
	//비콘 추가 submit
	const addBeacon = (submitBtn) => {
		const $modal = document.querySelector("#beaconAddModal");
		const $uuid = $modal.querySelector('input[name=uuid]');
		const $city = $modal.querySelector('input[name=city]');
		const $state = $modal.querySelector('input[name=state]');
		const $building = $modal.querySelector('input[name=building]');
		const $floor = $modal.querySelector('input[name=floor]');
		const $section = $modal.querySelector('input[name=section]');
		
		const uuid = $uuid.value;
		const city = $city.value;
		const state = $state.value;
		const building = $building.value;
		const floor = $floor.value;
		const section = $section.value;
		
		if(uuid.length !== 32){
			alert('uuid는 32자여야 합니다.');
			return ;
		}
		
		if(city==='' || state==='' || building==='' || floor==='' || section===''){
			alert('빈칸을 입력해주세요.');
			return ;
		}
		
		const body = {uuid:uuid, city:city, state:state, building:building, floor:floor,section:section};
		fetch('/hetgui/api/beacons', {
		  method: 'POST',
		  body : JSON.stringify(body),
		  headers: {
			  'Content-Type': 'application/json',
		  },
		}).then((res) => {
		  if (res.status === 200 || res.status === 201) {
			  res.text().then(text => console.log(text)); // 텍스트 출력
			  refreshBeacons(1);
		  } else {
		    console.error(res.statusText);
		  }
		}).catch(err => console.error(err));
		
		$uuid.value="";
		$city.value="";
		$state.value="";
		$building.value="";
		$floor.value="";
		$section.value="";
		submitBtn.previousElementSibling.click(); //모달창 닫기 클릭 트리거 작동
	}
	//손전등 수정
	const modifyBeacon = (submitBtn) => {
		const $modal = document.querySelector("#beaconChangeModal");
		const uuid = $modal.querySelector("input[name=uuid]").value;
		const city = $modal.querySelector("input[name=city]").value;
		const state = $modal.querySelector("input[name=state]").value;
		const building = $modal.querySelector("input[name=building]").value;
		const floor = $modal.querySelector("input[name=floor]").value;
		const section = $modal.querySelector("input[name=section]").value;
		
		if(uuid.length !== 32){
			alert('uuid는 32자여야 합니다.');
			return ;
		}
		if(city==='' || state==='' || building==='' || floor==='' || section===''){
			alert('빈칸을 입력해주세요.');
			return ;
		}
		
		const body = {uuid:uuid, city:city, state:state, building:building, floor:floor,section:section};
		fetch('/hetgui/api/beacons/'+uuid, {
		  method: 'PUT',
		  body : JSON.stringify(body),
		  headers: {
			  'Content-Type': 'application/json', 
		  },
		}).then((res) => {
		  if (res.status === 200 || res.status === 201) {
			  res.text().then(text => console.log(text)); // 텍스트 출력
			  refreshBeacons(currentPage);
		  } else {
		    console.error(res.statusText);
		  }
		}).catch(err => console.error(err));
		submitBtn.previousElementSibling.click(); //모달창 닫기 클릭 트리거 작동
	}
	//비콘 삭제 from server
	const deleteBeacon =() => {
		const $checked = document.querySelectorAll('.icheck-primary > input[type=checkbox]:checked');
		const uuids=[];
		$checked.forEach(function(v){
			uuids.push(v.dataset.id);
		});
		
		fetch('/hetgui/api/beacons', {
		  method: 'DELETE',
		  body : uuids.join(','),
		  headers: {
			  'Content-Type': 'application/json',
		  },
		}).then((res) => {
		  if (res.status === 200 || res.status === 201) {
			  res.text().then(text => console.log(text)); // 텍스트 출력
			  refreshBeacons(1);
		  } else {
		    console.error(res.statusText);
		  }
		}).catch(err => console.error(err));
	}
	 
	//이벤트 버블링을 이용한 이벤트 등록 (위,아래에 같은 버튼들이 있으므로.)
	const controlEventBubble = (e) => {
		const classList = e.target.classList;
		if(classList.contains('btn-trash')){ //삭제 버튼
			deleteBeacon();
		}else if(classList.contains('btn-refresh')){ //새로고침 버튼
			refreshBeacons(1);
		}else if(classList.contains('prev-page')){ //이전 페이지
			if(currentPage<=1) return;
			refreshBeacons(--currentPage);
		}else if(classList.contains('next-page')){ //이전 페이지
			if(currentPage==lastPage) return ;
			refreshBeacons(++currentPage);
		}else if(classList.contains('changeable')){
			const uuid = e.target.closest('tr').firstElementChild.nextElementSibling.innerText;
			e.target.dataset.toggle="modal";
			e.target.dataset.target="#beaconChangeModal";
			e.target.dataset.id=uuid;
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
		$('#beaconChangeModal').on('show.bs.modal', function (event) {
			  const button = $(event.relatedTarget) // Button that triggered the modal
			  const id = button.data('id'); //uuid
			  const modal = $(this)
			  fetch('/hetgui/api/beacons/'+id).then((res) => {
				  if (res.status === 200 || res.status === 201) { // 성공을 알리는 HTTP 상태 코드면
				    res.json().then(json => {
				    	console.log(json); // 텍스트 출력
				    	modal.find('input[name=uuid]').val(json.item.uuid);
				    	modal.find('input[name=city]').val(json.item.city);
				    	modal.find('input[name=state]').val(json.item.state);
				    	modal.find('input[name=building]').val(json.item.building);
				    	modal.find('input[name=floor]').val(json.item.floor);
				    	modal.find('input[name=section]').val(json.item.section);
				    })
				  } else { // 실패를 알리는 HTTP 상태 코드면
				    console.error(res.statusText);
				  }
			  }).catch(err => console.error(err));
		})
	});
</script>
 
<!-- 비콘 추가 모달 -->
<div class="modal fade" id="beaconAddModal" tabindex="-1" aria-labelledby="beaconAddModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="beaconAddModalLabel">New Beacon</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body"> 
        <!-- <form action="/hetgui/api/flashes" method="POST" name="addFlashForm" target="fakeIframe">-->
        <form action="#" name="addBeaconForm">
          <div class="form-group">
            <label for="uuid" class="col-form-label">UUID:</label>
            <input type="text" class="form-control" name="uuid" maxlength="32"/>
          </div>
          <div class="form-group">
            <label for="city" class="col-form-label">City:</label>
            <input type="text" class="form-control" name="city"/>
          </div>
          <div class="form-group">
            <label for="state" class="col-form-label">STATE:</label>
            <input type="text" class="form-control" name="state"/>
          </div>
          <div class="form-group">
            <label for="building" class="col-form-label">BUILDING:</label>
            <input type="text" class="form-control" name="building"/>
          </div>
          <div class="form-group">
            <label for="floor" class="col-form-label">Floor:</label>
            <input type="text" class="form-control" name="floor"/>
          </div>
          <div class="form-group">
            <label for="section" class="col-form-label">Section:</label>
            <input type="text" class="form-control" name="section"/>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="addBeacon(this)">Add beacon</button>
      </div>
    </div>
  </div>
</div>
<!-- 비콘 변경 모달 -->
	<div class="modal fade" id="beaconChangeModal" tabindex="-1"
		aria-labelledby="beaconChangeModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="beaconChangeModalLabel">Modify Beacon</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- <form action="/hetgui/api/flashes" method="POST" name="addFlashForm" target="fakeIframe">-->
					<!-- <form action="#" name="ChangeFlashForm"> -->
						<div class="form-group">
							<label for="id" class="col-form-label">UUID:</label> 
							<input type="text" class="form-control" name="uuid" disabled />
						</div>
						<div class="form-group">
							<label for="detachment">CITY:</label> 
							<input type="text" class="form-control" name="city" />
						</div>
						<div class="form-group">
							<label for="state" class="col-form-label">STATE:</label> 
							<input type="text" class="form-control" name="state" />
						</div>
						<div class="form-group">
							<label for="building" class="col-form-label">Building:</label> 
							<input type="text" class="form-control" name="building" />
						</div>
						<div class="form-group">
							<label for="floor" class="col-form-label">Floor:</label> 
							<input type="text" class="form-control" name="floor" />
						</div>
						<div class="form-group">
							<label for="section" class="col-form-label">Section:</label> 
							<input type="text" class="form-control" name="section" />
						</div>
					<!-- </form> -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary"
						onclick="modifyBeacon(this)">Modify beacon</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 꼼수용 iframe 현재는 사용하지 않음. -->
<iframe name="fakeIframe" style="display:none"></iframe>
</body>
</html>
