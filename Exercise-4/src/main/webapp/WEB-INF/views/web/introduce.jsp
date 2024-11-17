<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giới thiệu</title>

    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            font-family: "Roboto",sans-serif;
        }

        :root {
            --primary-color: #35BF76;
            --color-text: #434A6E;
        }

        .intro {
            background-image: url(//bizweb.dktcdn.net/100/328/362/themes/894751/assets/bg_breadcrumb.png?1664350964800);
            background-size: cover;
            background-position: center top;
            padding: 25px 0px;
            background-repeat: no-repeat;
            min-height: 320px;
            display: flex;
            align-items: center;
            justify-content: center;
            width: 100%;
            float: left;
            flex-flow: column;
        }

        .title-page {
            font-weight: 700;
            font-size: 48px;
            font-family: "Roboto",sans-serif;
            color: #fff;
        }

        .desc-intro {
            font-family: "Roboto",sans-serif;
            margin: 0;
            font-size: 16px;
            padding: 15px 0px 15px;
            border-radius: 0;
            font-weight: 400;
            line-height: 24px;
            background-color: transparent;
            width: 100%;
            text-align: center;
        }

        .col-xs-12 {
            width: 100%;
        }

        .desc-intro li {
            display: inline;
        }
        .home:hover {
            color: var(--primary-color)
        }

        .intro-item {
            color: var(--primary-color);
        }

        .page-content {

            /* margin-top: 5px; */
        }

        .title-head {
            font-size: 20px;
        }

        .hover-title-header:hover {
            text-decoration: underline;
            color: var(--primary-color);
        }

        .desc-page-container p {
            width: 100%;
            float: left;
            margin-bottom: 50px;
        }

        .item-desc-page-content {
            font-size: 14px;
        }

    </style>
</head>
<body>
<div class="page-wrapper">

    <!-- INTRO  -->
    <div class="intro text-center">
        <div class="title-page">Giới thiệu</div>
        <div class="row">
            <div class="col-xs-12 a-left">
                <ul class="desc-intro">
                    <li class="home" style="color: #fff;">
                        <a href="/spring-boot/trang-chu"><span style="color: #fff;">Trang chủ</span></a>
                        <span class="mx-1"> /</span>
                    </li>
                    <li class="intro-item"><span>Giới thiệu</span></li>
                </ul>
            </div>
        </div>
    </div>

    <!-- CONTENT  -->
    <div class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-12">
                    <h1 class="title-head mt-5"><a class="hover-title-header"><strong>Giới
                        thiệu</strong></a>
                    </h1>
                    <div class="desc-page-content">
                        <div class="content-page rte minpage">
                            <p>- Công ty CarSuperVipPro là một trong những nhà phân phối ô tô uy tín và hàng đầu tại Việt Nam, 
                            chuyên cung cấp các dòng xe chất lượng từ những thương hiệu nổi tiếng như Toyota, Honda, BMW, Mercedes
                             và nhiều thương hiệu quốc tế khác. 
                             Với sứ mệnh mang lại những sản phẩm và dịch vụ tốt nhất cho khách hàng, 
                             chúng tôi luôn chú trọng đến việc chọn lựa và cung cấp những chiếc xe có thiết kế tinh tế, 
                             công nghệ tiên tiến, và độ bền vượt trội.</p>
                             <p>- Ngoài việc cung cấp các dòng xe đa dạng từ SEDAN, SUV, MPV, 
                             công ty còn cam kết mang đến cho khách hàng những giải pháp tài chính linh hoạt, 
                             giúp việc sở hữu ô tô trở nên dễ dàng hơn. 
                             Đội ngũ tư vấn viên giàu kinh nghiệm của chúng tôi luôn sẵn sàng hỗ trợ khách hàng lựa chọn chiếc xe phù hợp
                              với nhu cầu và ngân sách của từng cá nhân hoặc doanh nghiệp.</p>
                              <p>- Không chỉ dừng lại ở việc bán xe, công ty CarSuperVipPro còn chú trọng đến các dịch vụ hậu mãi chất lượng như bảo dưỡng,
                               sửa chữa, thay thế phụ tùng chính hãng, và các gói bảo hiểm xe ô tô. 
                               Với các trang thiết bị hiện đại và đội ngũ kỹ thuật viên chuyên nghiệp, 
                               chúng tôi cam kết mang đến cho khách hàng sự yên tâm tuyệt đối trong suốt quá trình sử dụng xe.</p>
                        	<p>- Với phương châm "Chất lượng tạo niềm tin, dịch vụ tạo khác biệt", 
                        	công ty CarSuperVipPro luôn nỗ lực không ngừng để đem lại giá trị tốt nhất cho khách hàng, 
                        	trở thành lựa chọn đáng tin cậy trong ngành ô tô tại Việt Nam.</p>       
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
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
