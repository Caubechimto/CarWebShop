<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách xe</title>
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
								<a href="/spring-boot/admin/home">Trang chủ</a>
							</li>
							<li class="active">Quản lý xe</li>
						</ul><!-- /.breadcrumb -->

					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								Danh sách xe
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
											<form:form action="/spring-boot/admin/car-list" id="listForm" method="GET" modelAttribute="modelSearch">
												<div class="row">
													<div class="form-group">
														<div class="col-xs-12">
															<div class="col-sm-6">
																<div>
																	<label class="name"> Tên xe</label>
																	<form:input path="name" class="form-control"/>
																</div>
															</div>
															<div class="col-sm-6">
																<div>
																	<label class="name"> Loại xe </label>
																	<form:select path="model" class="form-control">
																		<form:option value=""> ---Chọn loại xe--- </form:option>
																		<form:options items="${models}"></form:options>
																	</form:select>
																</div>
															</div>
														</div>
													</div>	
													
													<div class="form-group">
														<div class="col-xs-12">
															<div class="col-sm-2">
																<div>
																	<label class="name"> Hãng xe </label>
																	<form:select path="brand" class="form-control">
																	<form:option value=""> ---Chọn hãng xe--- </form:option>
																	<form:options items="${brands}"></form:options>
																	</form:select>
																</div>
															</div>
															<div class="col-sm-5">
																<label class="name"> Số chỗ </label>
																<form:input type="number" path="seat" class="form-control"/>
															</div>
																<div class="col-sm-5">
																	<label class="name"> Hộp số </label>
																	<form:select path="transmission" class="form-control">
																	<form:option value=""> ---Chọn hãng xe--- </form:option>
																	<form:options items="${transmissions}"></form:options>
																	</form:select>
																</div>
														</div>
													</div>
													
													<div class="form-group">												
														<div class="col-xs-12">
															<div class="col-sm-4">
																<label class="name"> Năm sản xuất </label>
																<form:input type="number" path="year" class="form-control"/>
															</div>
															<div class="col-sm-4">
																<label class="name"> Giá bán từ (triệu VNĐ) </label>
																<form:input type="number" path="priceFrom" class="form-control"/>
															</div>
															<div class="col-sm-4">
																<label class="name"> Giá bán đến (triệu VNĐ)</label>
																<form:input type="number" path="priceTo" class="form-control"/>
															</div>
														</div>
													</div>
													
													<div class="form-group">
														<div class="col-xs-12">
															<div class="col-sm-3">
																<label class="name"> Động cơ </label>
																<form:input path="engine" class="form-control"/>
															</div>
															<div class="col-sm-3">
																<label class="name"> Nhiên liệu </label>
																<form:select path="fuel" class="form-control">
																<form:option value=""> ---Chọn nhiên liệu--- </form:option>
																<form:options items="${fuels}"></form:options>
																</form:select>
															</div>
															<div class="col-sm-3">
																<label class="name"> Túi khí </label>
																<form:input type="number" path="airbag" class="form-control"/>
															</div>
															<div class="col-sm-3">
																<label class="name"> Mức tiêu thụ </label>
																<form:input path="consumption" class="form-control"/>
															</div>
														</div>
													</div>
													
													<div class="form-group">
														<div class="col-xs-12">
															<div class="col-sm-3">
																<label class="name"> Tình trạng </label>
																<form:select path="status" class="form-control">
																<form:option value=""> ---Chọn tình trạng--- </form:option>
																<form:options items="${status}"></form:options>
																</form:select>
															</div>
															<div class="col-sm-5">
																<label class="name"> Xuất xứ </label>
																<form:input path="origin" class="form-control"/>
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
										<a href="/spring-boot/admin/car-edit">
											<button class="btn btn-info" title="Thêm"> + </button>
										</a>
										<button class="btn btn-danger" title="Xoá" id="btnDeleteCar"> - </button>
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
											<th> Tên xe </th>
											<th> Loại xe </th>
											<th> Hãng xe </th>
											<th> Số chỗ </th>
											<th> Hộp số </th>
											<th> Năm sản xuất </th>
											<th> Giá bán </th>
											<th> Động cơ </th>
											<th> Nhiên liệu </th>
											<th> Túi khí </th>
											<th> Thao tác </th>
										</tr>
									</thead>

									<tbody>
									<c:forEach var="item" items="${carList}">
										<tr>
											<td class="center">
												<label class="pos-rel">
													<input type="checkbox" class="ace" name="checkList" value="${item.id}">
													<span class="lbl"></span>
												</label>
											</td>

											<td> ${item.name} </td>
											<td> ${item.model} </td>
											<td> ${item.brand} </td>
											<td> ${item.seat} </td>
											<td> ${item.transmission} </td>
											<td> ${item.year} </td>
											<td> ${item.price} </td>
											<td> ${item.engine} </td>
											<td> ${item.fuel} </td>
											<td> ${item.airbag} </td>
											
											<td>
												<div class="hidden-sm hidden-xs btn-group">
													<a href=/spring-boot/admin/car-edit-${item.id}>
														<button class="btn btn-xs btn-info" title="Sửa">
															<i class="ace-icon fa fa-pencil bigger-120"></i>
														</button>													
													</a>

													<a>
														<button class="btn btn-xs btn-danger" title="Xoá" onclick="deleteCar(${item.id})">
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

			</div>
		</div>

		<script>
			
			$('#btnSearch').click(function(e){
				e.preventDefault();
				$('#listForm').submit();
			})
			
			function deleteCar(carId){
				var id = [carId];
				deleteCars(id);
			}
			
			$('#btnDeleteCar').click(function(e){
				e.preventDefault();
				var carIds = $('#table').find('tbody input[type = checkbox]:checked').map(function(){
					return $(this).val();
				}).get();
				deleteCars(carIds);
			});
			
			function deleteCars(data){
				$.ajax({
					type: "Delete",
					url: "http://localhost:8085/spring-boot/api/car/" + data,
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