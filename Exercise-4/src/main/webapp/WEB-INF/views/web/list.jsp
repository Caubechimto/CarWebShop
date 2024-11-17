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
    <title>Sản phẩm</title>
</head>

<body>
<div class="page-wrapper">

    <!-- INTRO  -->
    <div class="intro text-center">
        <div class="title-page">Sản phẩm</div>
        <div class="row">
            <div class="col-xs-12 a-left">
                <ul class="desc-intro">
                    <li class="home">
                        <a href="/spring-boot/trang-chu"><span style="color:#fff">Trang chủ</span></a>
                        <span class="mx-1" style="color:#fff"> / </span>
                    </li>
                    <li class="intro-item"><span>Tất cả sản phẩm</span></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- SEARCH  -->
    <div class="search">
        <div class="container">
        <form:form action="/spring-boot/san-pham" id="listForm" method="GET" modelAttribute="modelSearch">
            <div class="row">
                <div class="col-12 col-md-3 search-item">
                    <p class="search-text">Tên xe</p>
                    <form:input path="name" class="form-control"/>
                </div>
                
                <div class="col-12 col-md-3 search-item">
                    <p class="search-text">Kiểu dáng</p>
                    <form:select path="model" class="form-control">
						<form:option value=""> ---Chọn kiểu dáng--- </form:option>
						<form:options items="${models}"></form:options>
					</form:select>
                </div>
                
                <div class="col-12 col-md-3 search-item">
                    <p class="search-text">Nhà sản xuất</p>
                    <form:select path="brand" class="form-control">
						<form:option value=""> ---Chọn nhà sản xuất--- </form:option>
						<form:options items="${brands}"></form:options>
					</form:select>
                </div>
                
                <div class="col-12 col-md-3 search-item">
                    <p class="search-text">Số chỗ</p>
                    <form:input type="number" path="seat" class="form-control"/>
                </div>
                
                <div class="col-12 col-md-3 search-item">
                    <p class="search-text">Xuất xứ</p>
                   	<form:input path="origin" class="form-control"/>
                </div>
                
                <div class="col-12 col-md-3 search-item">
                    <p class="search-text">Năm sản xuất</p>
                   	<form:input type="number" path="year" class="form-control"/>
                </div>
                
                <div class="col-12 col-md-3 search-item">
                    <p class="search-text">Giá bán từ (triệu VNĐ)</p>
                   	<form:input type="number" path="priceFrom" class="form-control"/>
                </div>
                
                <div class="col-12 col-md-3 search-item">
                    <p class="search-text">Giá bán đến (triệu VNĐ)</p>
                   	<form:input type="number" path="priceTo" class="form-control"/>
                </div>
                
                <div class="col-12 col-md-3 search-item">
                    <p class="search-text">Nhiên liệu</p>
                   	<form:select path="fuel" class="form-control">
						<form:option value=""> ---Chọn nhiên liệu--- </form:option>
						<form:options items="${fuels}"></form:options>
					</form:select>
                </div>
                
                <div class="col-12 col-md-3 search-item">
                    <p class="search-text">Tình trạng</p>
                   	<form:select path="status" class="form-control">
						<form:option value=""> ---Chọn tình trạng--- </form:option>
						<form:options items="${status}"></form:options>
					</form:select>
                </div>
                
                <div class="col-12 col-md-3 search-item">
                    <p class="search-text">Hộp số</p>
                    <form:select path="transmission" class="form-control">
						<form:option value=""> ---Chọn hộp số--- </form:option>
						<form:options items="${transmissions}"></form:options>
					</form:select>
                </div>
                
                <div class="col-12 col-md-3 search-btn">
                    <button class="search-btn-text pb-0">
                        <i class="fa-solid fa-magnifying-glass search-btn-icon"></i>
                        <span>Tìm kiếm nhanh</span>
                    </button>
                </div>
            </div>
            
        </form:form>
        </div>
    </div>

    <!-- CONTENT  -->
    <div class="product mt-5">
        <div class="container">
            <div class="row">
                <c:forEach var="item" items="${carList}">
                <div class="col-12 col-md-4 mb-3">
                    <div class="product1 vip">
                        <img src="${item.imageURL}" height="auto" width="348.8">

                        <div class="product1-conntent">
                                        <div class="product1-conntent-header">
                                            <a>${item.name}</a>
                                        </div>
                                        <ul class="product1-conntent-list">
                                            <li class="product1-conntent-item">
                                                <i class="fa-solid fa-location-dot"></i>
                                                <span>Kiểu dáng: ${item.model}</span>
                                            </li>
                                            <li class="product1-conntent-item">
                                                <i class="fa-solid fa-building"></i>
                                                <span>Động cơ: ${item.engine}</span>
                                            </li>
                                            <li class="product1-conntent-item">
                                                <i class="fa-solid fa-earth-asia"></i>
                                                <span>Mức tiêu thụ: ${item.consumption}</span>
                                            </li>
                                        </ul>
                                    </div> 
                                    <div class="product1-footer">
                                        <span class="product1-footer-cost">${item.price}</span>
                                        <button class="product1-footer-detail"><a href="/spring-boot/car-detail-${item.id}"
                                        style="color:#fff">Xem chi tiết</a></button>
                                    </div>
                    </div>
                </div>
                </c:forEach>
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
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>

</html>