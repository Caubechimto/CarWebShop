<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>
</head>
<body>
   <div class="container">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card text-white" style="border-radius: 1rem; background-color: #35bf76;">
                    <div class="card-body p-2 px-5 text-center">
                        <div class="md-5 md-4 mt-4 pb-2">
                            <h2 class="fw-bold mb-2 text-uppercase">Create an account</h2>
                            <p class="text-white-50 mb-2">Please enter your Information</p>
                            
							<form id="formEdit">
	                            <div class="form-outline form-white mb-2">
	                                <label class="form-label" for="typePasswordX">Tên đầy đủ</label>
	                                <input name="fullName" id="fullName" class="form-control form-control-lg" />
	                            </div>
	
	                            <div class="form-outline form-white mb-2">
	                                <label class="form-label" for="typePasswordX">Username</label>
	                                <input name="userName" id="userName" class="form-control form-control-lg" />
	                            </div>
	
	                            <div class="form-outline form-white mb-2">
	                                <label class="form-label" for="typeEmailX">Password</label>
	                                <input type="password" name="password" id="password" class="form-control form-control-lg" />
	                            </div>
	
	                            <input type="button" class="btn btn-white btn-warning btn-bold"
                                       value="Đăng ký" id="btnAddOrUpdateUsers"/>
	
	                            <div class="d-flex justify-content-center text-center mt-2 pt-1">
	                                <a href="#!" class="login-extension text-white"><i
	                                        class="fab fa-facebook-f fa-lg"></i></a>
	                                <a href="#!" class="login-extension text-white"><i
	                                        class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
	                                <a href="#!" class="login-extension text-white"><i
	                                        class="fab fa-google fa-lg"></i></a>
	                            </div>
							</form>

                            <p class="text-center text-muted mt-2 mb-0">Have already an account? <a href="/spring-boot/login"
                                                                                                    class="fw-bold text-body"><u style="color: white ;">Login here</u></a></p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</html>
<script>
	$("#btnAddOrUpdateUsers").click(function (event) {
	    event.preventDefault();
	    var formData = $("#formEdit").serializeArray();
	    var dataArray = {};
	    $.each(formData, function (i, v) {
	        dataArray["" + v.name + ""] = v.value;
	    });
	    var userName = dataArray['userName'];
	    dataArray['roleCode'] = 'USER';
	    if (userName != '') {
	        addUser(dataArray);
	    } else {
	        window.location.href = "http://localhost:8085/spring-boot/register?empty-userName";
	    }
	});
	
	function addUser(data) {
        $.ajax({
            url: 'http://localhost:8085/spring-boot/api/web',
            type: 'POST',
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (res) {
                window.location.href = "http://localhost:8085/spring-boot/login";
            },
            error: function (res) {
            	window.location.href = "http://localhost:8085/spring-boot/register?error";
            }
        });
    }
	
</script>