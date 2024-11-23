<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm hoặc sửa thông tin xe</title>
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
							<li class="active">Thêm hoặc sửa thông tin xe</li>
						</ul><!-- /.breadcrumb -->

					</div>

					<div class="page-content">
						<div class="page-header">
							<h1 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
								Thêm hoặc sửa thông tin xe
							</h1>
<c:if test="${param.Error != null}">
	<div class="alert alert-danger">	
		Chưa nhập đủ thông tin
	</div>
</c:if>
<c:if test="${param.Success != null}">
	<div class="alert alert-danger">	
		Thêm thành công
	</div>
</c:if>						
						</div><!-- /.page-header -->

						<div class="row" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
							<form:form modelAttribute="carEdit" id="listForm" method="GET">
								<div class="col-xs-12">
									<form class="form-horizontal" role="form" id="form-edit">
										<dl class="form-group">
											<label class="col-xs-3"> Tên xe </label>
											<div class="col-xs-9">
												<form:input class="form-control" path="name"></form:input>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Kiểu dáng </label>
											<div class="col-xs-3">
												<form:select path="model" class="form-control">
													<form:option value=""> ---Chọn kiểu dáng--- </form:option>
													<form:options items="${models}"></form:options>
												</form:select>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Nhà sản xuất </label>
											<div class="col-xs-9">
												<form:select path="brand_id" class="form-control">
													<form:option value=""> ---Nhà sản xuất--- </form:option>
													<form:options items="${brands}"></form:options>
												</form:select>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Số chỗ </label>
											<div class="col-xs-9">
												<form:input type="number" path="seat" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Hộp số </label>
											<div class="col-xs-9">
												<form:select path="transmission" class="form-control">
													<form:option value=""> ---Chọn hộp số--- </form:option>
													<form:options items="${transmissions}"></form:options>
												</form:select>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Năm sản xuất </label>
											<div class="col-xs-9">
												<form:input type="number" path="year" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Giá bán (triệu VNĐ) </label>
											<div class="col-xs-9">
												<form:input type="number" path="price" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Động cơ </label>
											<div class="col-xs-9">
												<form:input path="engine" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Nhiên liệu </label>
											<div class="col-xs-9">
												<form:select path="fuel" class="form-control">
													<form:option value=""> ---Chọn nhiên liệu--- </form:option>
													<form:options items="${fuels}"></form:options>
												</form:select>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Túi khí </label>
											<div class="col-xs-9">
												<form:input type="number" path="airbag" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Mức tiêu thụ </label>
											<div class="col-xs-9">
												<form:input path="consumption" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Tình trạng </label>
											<div class="col-xs-9">
												<form:select path="status" class="form-control">
													<form:option value=""> ---Chọn tình trạng--- </form:option>
													<form:options items="${status}"></form:options>
												</form:select>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Xuất xứ </label>
											<div class="col-xs-9">
												<form:input path="origin" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Link ảnh sản phẩm </label>
											<div class="col-xs-9">
												<form:input path="imageURL" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<img src="${carEdit.imageURL}" width="680" height="auto" align="right" class="border border-primary">
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Mô tả sản phẩm </label>
											<div class="col-xs-9">
												<form:input path="description" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"></label>
											<div class="col-xs-9">
												<c:if test="${not empty carEdit.id}">
													<button type="button" class="btn btn-primary" id="btnAddOrUpdateCar"> Cập nhật xe </button>
													<button type="button" class="btn btn-danger" id="btnCancel"> Huỷ thao tác </button>
												</c:if>
												<c:if test="${empty carEdit.id}">
													<button type="button" class="btn btn-primary" id="btnAddOrUpdateCar"> Thêm xe </button>
													<button type="button" class="btn btn-danger" id="btnCancel"> Huỷ thao tác </button>
												</c:if>
											</div>
										</dl>
										<form:hidden path="id" id="carId"/>
									</form>
								</div>
							</form:form>
						</div>
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
<script>
			$('#btnAddOrUpdateCar').click(function(){
				var data = {};
				var formData = $('#listForm').serializeArray();
				$.each(formData, function(i, v){
					data["" + v.name + ""] = v.value;
				})
				if (data.brand_id != 0 && data.brand_id != null && data.status != 0 && data.status != null && data.name != "" && data.name != null) {
					addOrUpdateCar(data);
					window.location.href = ("http://localhost:8085/spring-boot/admin/car-edit?Success");
				} else {
					window.location.href = "http://localhost:8085/spring-boot/admin/car-edit?Error";
				}
			});
			
			function addOrUpdateCar(data){
				$.ajax({
					type: "POST",
					url: "http://localhost:8085/spring-boot/api/car",
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

			$('#btnCancel').click(function(){
				window.location.href = "http://localhost:8085/spring-boot/admin/car-list";
			});
</script>
</body>
</html>