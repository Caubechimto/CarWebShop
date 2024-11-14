<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm hoặc sửa toà nhà</title>
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
								<a href="#">Home</a>
							</li>
							<li class="active">Dashboard</li>
						</ul><!-- /.breadcrumb -->

					</div>

					<div class="page-content">
						<div class="page-header">
							<h1 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
								Sửa hoặc thêm toà nhà
							</h1>
						</div><!-- /.page-header -->

						<div class="row" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
							<form:form modelAttribute="buildingEdit" id="listForm" method="GET">
								<div class="col-xs-12">
									<form class="form-horizontal" role="form" id="form-edit">
										<dl class="form-group">
											<label class="col-xs-3"> Tên toà nhà </label>
											<div class="col-xs-9">
												<form:input class="form-control" path="name"></form:input>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Quận </label>
											<div class="col-xs-3">
												<form:select path="district" class="form-control">
													<form:option value=""> ---Chọn Quận--- </form:option>
													<form:options items="${districts}"></form:options>
												</form:select>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Phường </label>
											<div class="col-xs-9">
												<form:input path="ward" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Đường </label>
											<div class="col-xs-9">
												<form:input path="street" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Kết cấu </label>
											<div class="col-xs-9">
												<form:input path="structure" class="form-control" />
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Số tầng hầm </label>
											<div class="col-xs-9">
												<form:input path="numberOfBasement" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Diện tích sàn </label>
											<div class="col-xs-9">
												<form:input path="floorArea" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Hướng </label>
											<div class="col-xs-9">
												<form:input path="direction" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Hạng </label>
											<div class="col-xs-9">
												<form:input path="level" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Diện tích thuê </label>
											<div class="col-xs-9">
												<form:input path="rentArea" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Giá thuê </label>
											<div class="col-xs-9">
												<input path="rentPrice" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Mô tả giá </label>
											<div class="col-xs-9">
												<form:input path="rentPriceDescription" class="form-control"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"> Loại toà nhà </label>
											<div class="col-xs-9" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
												<form:checkboxes items="${typeCodes}" path="typeCode"/>
											</div>
										</dl>
										<dl class="form-group">
											<label class="col-xs-3"></label>
											<div class="col-xs-9">
												<c:if test="${not empty buildingEdit.id}">
													<button type="button" class="btn btn-primary" id="btnAddOrUpdateBuilding"> Cập nhật toà nhà </button>
													<button type="button" class="btn btn-danger" id="btnCancel"> Huỷ thao tác </button>
												</c:if>
												<c:if test="${empty buildingEdit.id}">
													<button type="button" class="btn btn-primary" id="btnAddOrUpdateBuilding"> Thêm toà nhà </button>
													<button type="button" class="btn btn-danger" id="btnCancel"> Huỷ thao tác </button>
												</c:if>
											</div>
										</dl>
										<form:hidden path="id" id="buildingId"/>
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
			$('#btnAddOrUpdateBuilding').click(function(){
				var data = {};
				var typeCode = [];
				var formData = $('#listForm').serializeArray();
				$.each(formData, function(i, v){
					if(v.name != 'typeCode') {
						data["" + v.name + ""] = v.value;
					} else {
						typeCode.push(v.value);
					}
				})
				data['typeCode'] = typeCode;
				addOrUpdateBuilding(data);
			});
			
			function addOrUpdateBuilding(data){
				$.ajax({
					type: "POST",
					url: "http://localhost:8085/spring-boot/api/building",
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
				window.location.href = "http://localhost:8085/spring-boot/admin/building-list";
			});
</script>
</body>
</html>