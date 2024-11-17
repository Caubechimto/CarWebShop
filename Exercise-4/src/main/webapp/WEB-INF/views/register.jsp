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
                            
							<form:form id="formEdit">
	                            <div class="form-outline form-white mb-2">
	                                <label class="form-label" for="typePasswordX">Tên đầy đủ</label>
	                                <input type="email" id="fullName" class="form-control form-control-lg" />
	                            </div>
	
	                            <div class="form-outline form-white mb-2">
	                                <label class="form-label" for="typePasswordX">Username</label>
	                                <input type="email" id="userName" class="form-control form-control-lg" />
	                            </div>
	
	                            <div class="form-outline form-white mb-2">
	                                <label class="form-label" for="typeEmailX">Password</label>
	                                <input type="email" id="passWord" class="form-control form-control-lg" />
	                            </div>
	
	                            <button type="submit" class="btn btn-primary" id="btnAddOrUpdateUsers">Đăng ký</button>
	
	                            <div class="d-flex justify-content-center text-center mt-2 pt-1">
	                                <a href="#!" class="login-extension text-white"><i
	                                        class="fab fa-facebook-f fa-lg"></i></a>
	                                <a href="#!" class="login-extension text-white"><i
	                                        class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
	                                <a href="#!" class="login-extension text-white"><i
	                                        class="fab fa-google fa-lg"></i></a>
	                            </div>
							</form:form>

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

	
</script>