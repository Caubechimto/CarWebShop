<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách toà nhà</title>
</head>
<body>
 			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Trang chủ</a>
							</li>
							<li class="active">Quản lý toà nhà</li>
						</ul><!-- /.breadcrumb -->

					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								Danh sách toà nhà
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									overview &amp; stats
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<div class="widget-box ui-sortable-handle">
									<div class="widget-header">
										<h5 class="widget-title">Tìm kiếm</h5>

										<div class="widget-toolbar">
											<a href="#" data-action="collapse">
												<i class="ace-icon fa fa-chevron-up"></i>
											</a>
										</div>
									</div>

									<div class="widget-body" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
										<div class="widget-main">
											<form:form action="/spring-boot/admin/building-list" id="listForm" method="GET" modelAttribute="modelSearch">
												<div class="row">
													<div class="form-group">
														<div class="col-xs-12">
															<div class="col-sm-6">
																<div>
																	<label class="name"> Tên toà nhà</label>
																	<form:input path="name" class="form-control"/>
																</div>
															</div>
															<div class="col-sm-6">
																<div>
																	<label class="name"> Diện tích sàn</label>
																	<form:input path="floorArea" class="form-control"/>
																</div>
															</div>
														</div>
													</div>	
													
													<div class="form-group">
														<div class="col-xs-12">
															<div class="col-sm-2">
																<div>
																	<label class="name"> Quận </label>
																	<form:select path="district" class="form-control">
																		<form:option value=""> ---Chọn Quận--- </form:option>
																		<form:options items="${districts}"></form:options>
																	</form:select>
																</div>
															</div>
															<div class="col-sm-5">
																<label class="name"> Phường </label>
																<form:input path="ward" class="form-control"/>
															</div>
															<div class="col-sm-5">
																<label class="name"> Đường </label>
																<form:input path="street" class="form-control"/>
															</div>
														</div>
													</div>
													
													<div class="form-group">												
														<div class="col-xs-12">
															<div class="col-sm-4">
																<label class="name"> Số tầng hầm </label>
																<form:input path="numberOfBasement" class="form-control"/>
															</div>
															<div class="col-sm-4">
																<label class="name"> Hướng </label>
																<form:input path="direction" class="form-control"/>
															</div>
															<div class="col-sm-4">
																<label class="name"> Hạng </label>
																<form:input path="level" class="form-control"/>
															</div>
														</div>
													</div>
													
													<div class="form-group">
														<div class="col-xs-12">
															<div class="col-sm-3">
																<label class="name"> Diện tích từ </label>
																<form:input path="areaFrom" class="form-control"/>
															</div>
															<div class="col-sm-3">
																<label class="name"> Diện tích đến </label>
																<form:input path="areaTo" class="form-control"/>
															</div>
															<div class="col-sm-3">
																<label class="name"> Giá thuê từ </label>
																<form:input path="rentPriceFrom" class="form-control"/>
															</div>
															<div class="col-sm-3">
																<label class="name"> Giá thuê đến </label>
																<form:input path="rentPriceTo" class="form-control"/>
															</div>
														</div>
													</div>
													
													<div class="form-group">
														<div class="col-xs-12">
															<div class="col-sm-5">
																<label class="name"> Tên quản lý </label>
																<form:input path="managerName" class="form-control"/>
															</div>
															<div class="col-sm-5">
																<label class="name"> SĐT quản lý </label>
																<form:input path="managerPhone" class="form-control"/>
															</div>
															<div class="col-sm-2">
																<label class="name"> Nhân viên </label>
																<form:select path="staffId" class="form-control">
																	<form:option value=""> ---Chọn Nhân Viên--- </form:option>
																	<form:options items="${listStaffs}"></form:options>
																</form:select>
															</div>
														</div>
													</div>
													
													<div class="form-group">
														<div class="col-xs-12">
															<div class="col-sm-6">
																<form:checkboxes items="${typeCodes}" path="typeCode"/>
															</div>
														</div>
													</div>
													
													<div class="form-group">
														<div class="col-xs-12">
															<div class="col-sm-6">
																<button class="btn btn-danger" id="btnSearch"> Tìm kiếm </button>
															</div>
														</div>
													</div>
													</div>
											</form:form>
											</div>
										</div>

									</div>

									<div class="pull-right">
										<a href="/spring-boot/admin/building-edit">
											<button class="btn btn-info" title="Thêm"> + </button>
										</a>
										<button class="btn btn-danger" title="Xoá" id="btnDeleteBuilding"> - </button>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-xs-12">
								<table id="table" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin: 0.5em 0em;" class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th class="center">
												<label class="pos-rel">
													<input type="checkbox" class="ace" name="checkList" value="">
													<span class="lbl"></span>
												</label>
											</th>
											<th> Tên toà nhà </th>
											<th> Địa chỉ </th>
											<th> Số tầng hầm </th>
											<th> Tên quản lý </th>
											<th> Số điện thoại </th>
											<th> Diện tích sàn </th>
											<th> Diện tích trống </th>
											<th> Phí môi giới </th>
											<th> Thao tác </th>
										</tr>
									</thead>

									<tbody>
									<c:forEach var="item" items="${buildingList}">
										<tr>
											<td class="center">
												<label class="pos-rel">
													<input type="checkbox" class="ace" name="checkList" value="${item.id}">
													<span class="lbl"></span>
												</label>
											</td>

											<td> ${item.name} </td>
											<td> ${item.address} </td>
											<td> ${item.numberOfBasement} </td>
											<td> ${item.managerName} </td>
											<td> ${item.managerPhone} </td>
											<td> ${item.floorArea} </td>
											<td> ${item.id} </td>
											<td> ${item.id} </td>
											
											<td>
												<div class="hidden-sm hidden-xs btn-group">
													<a>
														<button class="btn btn-xs btn-success" title="Giao toà nhà" onclick="assignmentBuilding(${item.id})">
															<i class="ace-icon fa fa-check bigger-120"></i>
														</button>
													</a>

													<a href=/spring-boot/admin/building-edit-${item.id}>
														<button class="btn btn-xs btn-info" title="Sửa toà nhà">
															<i class="ace-icon fa fa-pencil bigger-120"></i>
														</button>													
													</a>

													<a>
														<button class="btn btn-xs btn-danger" title="Xoá toà nhà" onclick="deleteBuilding(${item.id})">
															<i class="ace-icon fa fa-trash-o bigger-120"></i>
														</button>
													</a>
												</div>
											</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>
							</div><!-- /.span -->
						</div>
					</div><!-- /.page-content -->
			</div><!-- /.main-content -->

		<!-- Modal -->
		<div id="assignmentBuildingModal" class="modal fade" role="dialog" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title"> Giao toà nhà </h4>
					</div>
					<div class="modal-body">
						<table id="staffList" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin: 0.5em 0em;" class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th class="center"> Chọn </th>
									<th> Tên nhân viên </th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td class="center">
										<input type="checkbox" id="checkbox_1" value="1">
									</td>
									<td>
										Nguyễn Văn A
									</td>
								</tr>
								<tr>
									<td class="center">
										<input type="checkbox" id="checkbox_2" value="2">
									</td>
									<td>
										Trần Văn B
									</td>
								</tr>
							</tbody>
						</table>
						<input type="hidden" id="buildingId" name="buildingId" value="${item.id}">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" id="btnAssignmentBuilding">Giao toà nhà</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
					</div>
				</div>

			</div>
		</div>

		<script>
			function assignmentBuilding(buildingId){
				$('#assignmentBuildingModal').modal();
			}

			$('#btnAssignmentBuilding').click(function(e){
				e.preventDefault();
				var data = {};
				data['buildingId'] = $('#buildingId').val();
				var staffs = $('#staffList').find('tbody input[type = checkbox]:checked').map(function(){
					return $(this).val();
				}).get();
				data['staffs'] = staffs;
			})
			
			$('#btnSearch').click(function(e){
				e.preventDefault();
				$('#listForm').submit();
			})
			
			function deleteBuilding(buildingId){
				var id = [buildingId];
				deleteBuildings(id);
			}
			
			$('#btnDeleteBuilding').click(function(e){
				e.preventDefault();
				var buildingIds = $('#table').find('tbody input[type = checkbox]:checked').map(function(){
					return $(this).val();
				}).get();
				deleteBuildings(buildingIds);
			});
			
			function deleteBuildings(data){
				$.ajax({
					type: "Delete",
					url: "http://localhost:8085/spring-boot/api/building/" + data,
					data: JSON.stringify(data),
					contentType: "application/json",
					dataType: "JSON",
					success: function(respond){
    					console.log("Success");
  					},
  					error: function(response){
						console.log(response)
  					}
  				});
			}
		</script>

</body>
</html>