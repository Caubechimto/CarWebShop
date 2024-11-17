<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông số chi tiết</title>
</head>

<body>
<div class="main-content">
<form:form modelAttribute="carDetail" id="listForm" method="GET">
	<div class="row">
		<div class="col-lg-7">
			<img src="${carDetail.imageURL}" width="680" height="auto" align="right" class="border border-primary">
		</div>
        <div class="col-lg-5">
        	<div class="vehicle-info">
				<div class="vehicle-info-header">
					<h2 class="title">${carDetail.name}</h2>
				</div>
				<div class="product1-footer">
					<span class="product1-footer-cost">Giá chỉ từ: ${carDetail.price}</span>
				</div>
				<div class="box-info-desc">
					<div class="grid-container">
						<div class="grid-item">
							<div class="col">
							    <span class="price">${carDetail.fuel}</span>
							    <small class="price-label">Loại nhiên liệu</small>
							</div>
						</div>
						
						<div class="grid-item">
							<div class="col">
							    <span class="price">${carDetail.consumption}</span>
							    <small class="price-label">Mức tiêu thụ</small>
							</div>
						</div>
						
						<div class="grid-item">
							<div class="col">
							    <span class="price">${carDetail.engine}</span>
							    <small class="price-label">Động cơ</small>
							</div>
						</div>
						
						<div class="grid-item">
							<div class="col">
							    <span class="price">${carDetail.transmission}</span>
							    <small class="price-label">Hộp số</small>
							</div>
						</div>
						
						<div class="grid-item">
							<div class="col">
							    <span class="price">${carDetail.seat}</span>
							    <small class="price-label">Số chỗ</small>
							</div>
						</div>
						
						<div class="grid-item">
							<div class="col">
							    <span class="price">${carDetail.airbag}</span>
							    <small class="price-label">Số túi khí</small>
							</div>
						</div>
						
						<div class="grid-item">
							<div class="col">
							    <span class="price">${carDetail.model}</span>
							    <small class="price-label">Kiểu dáng</small>
							</div>
						</div>
						
						<div class="grid-item">
							<div class="col">
							    <span class="price">${carDetail.brand}</span>
							    <small class="price-label">Nhà sản xuất</small>
							</div>
						</div>
						
						<div class="grid-item">
							<div class="col">
							    <span class="price">${carDetail.year}</span>
							    <small class="price-label">Năm sản xuất</small>
							</div>
						</div>
						
						<div class="grid-item">
							<div class="col">
							    <span class="price">${carDetail.status}</span>
							    <small class="price-label">Tình trạng</small>
							</div>
						</div>
						
						<div class="grid-item">
							<div class="col">
							    <span class="price">${carDetail.origin}</span>
							    <small class="price-label">Xuất xứ</small>
							</div>
						</div>
					</div>
				</div>
			</div> 
	            <button class="btn btn-primary btn-report-price mb-2">Đặt lịch lái thử và nhận ưu đãi!</button>
        </div>
	</div>

<div class="main-content-inner">
<div class="page-content">
	<div class="page-wrapper">

    <!-- CONTENT  -->
    <div class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-12">
                    <h1 class="title-head mt-5"><a class="hover-title-header" href="./GioiThieu.html"><strong>Giới
                        thiệu</strong></a>
                    </h1>
                    <div class="desc-page-content">
                        <div class="content-page rte minpage">
                            <p>${carDetail.description}</p>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- FOOTER  -->
    <footer class="footer">
            <div class="container-fluid">
                <div class="top-footer text-center mt-0">
                    <div class="logo logo-footer pt-5">
                        <p class="desc-logo-footer mt-3">Tự hào là nhà cung cấp dịch vụ xe hơi chất lượng cao</p>
                        <div class="item-footer mt-5">
                            <div class="row">
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_maps.png?1676257083798" alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Trụ sở chính</p>
                                        <p class="desc-footer">Địa chỉ</p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_phone.png?1676257083798" alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Hotline</p>
                                        <p class="desc-footer"><a class="a-text" href="#">0900000000</a></p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4 text-center">
                                    <div class="icon-footer">
                                        <img src="https://bizweb.dktcdn.net/100/328/362/themes/894751/assets/place_email.png?1676257083798" alt="">
                                    </div>
                                    <div class="content-center-footer">
                                        <p class="mb-1 mt-3">Email</p>
                                        <p class="desc-footer"><a class="a-text" href="#">email@gmail.com</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <div class="border-bottom mb-5 mt-4"></div>
                    </div>
                </div>
            </div>
            <div class="bottom-footer-2">
                <div class="text-center desc-bottom-footer-2">@ Bản quyền thuộc về Happy Team |
                    Cung cấp bởi <a class="a-text group-name" href="#">HappyTeam</a></div>
            </div>
        </footer>
</div>
</div>
</div>
</form:form>
</div>
</body>

</html>