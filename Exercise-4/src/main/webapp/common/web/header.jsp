<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaweb.security.utils.SecurityUtils" %>
<nav class="navbar-expand-lg navbar-dark fixed-top">
	<%--<div class="container">--%>
		<%--<a class="navbar-brand" href="#">Nhóm 1</a>--%>
		<%--<button class="navbar-toggler" type="button" data-toggle="collapse"--%>
			<%--data-target="#navbarResponsive" aria-controls="navbarResponsive"--%>
			<%--aria-expanded="false" aria-label="Toggle navigation">--%>
			<%--<span class="navbar-toggler-icon"></span>--%>
		<%--</button>--%>
		<%--<div class="collapse navbar-collapse" id="navbarResponsive">--%>
			<%--<ul class="navbar-nav ml-auto">--%>
				<%--<li class="nav-item active"><a class="nav-link" href="/trang-chu#">Trang chủ--%>
						<%--<span class="sr-only">(current)</span>--%>
				<%--</a></li>--%>
				<%--<security:authorize access = "isAnonymous()">--%>
					<%--<li class><a class="nav-link" href="<c:url value='/login'/>">Đăng nhập</a></li>--%>
					<%--<li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li>="nav-item"--%>
				<%--</security:authorize>--%>
				<%--<security:authorize access = "isAuthenticated()">--%>
					<%--<li class="nav-item"><a class="nav-link" href="#"> Xin chào <%=SecurityUtils.getPrincipal().getUsername()%></a></li>--%>
					<%--<li class="nav-item"><a class="nav-link" href="<c:url value='/logout'/>">Thoát</a></li>--%>
				<%--</security:authorize>--%>
			<%--</ul>--%>
		<%--</div>--%>
	<%--</div>--%>




		<div class="row navbar">
			<div class="col-12 col-md-3">
				<div class="logo">
					<a href="">
						<img src="data:image/png;base64,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"
							 alt="" width="149" height="38">
					</a>
				</div>
			</div>
			<div class="col-12 col-md-6">
				<div class="item-menu">
					<div class="nav nav1">
						<div class="nav-item p-2">
							<a class="nav-item-link" href="/spring-boot/trang-chu">
								<span style="color: var(--primary-color);">Trang chủ</span>
							</a>
						</div>
						<div class="nav-item p-2">
							<a href='<c:url value='/gioi-thieu'/>'>
								<%--<span>Giới thiệu</span>--%>
								<span style="color: var(--primary-color);">Giới thiệu</span>
							</a>
						</div>
						<div class="nav-item p-2">
							<%--<a class="nav-item-link" href="./Duan.html">--%>
							<a href='<c:url value='/san-pham'/>'>
								<%--<span>Sản phẩm</span>--%>
								<span style="color: var(--primary-color);">Sản phẩm</span>
							</a>
						</div>
						<div class="nav-item p-2">
							<a href='<c:url value='/tin-tuc'/>'>
								<%--<span>Tin tức</span>--%>
								<span style="color: var(--primary-color);">Tin tức</span>
							</a>
						</div>
						<div class="nav-item p-2">
							<a href='<c:url value='/lien-he'/>'>
								<%--<span>Liên hệ</span>--%>
									<span style="color: var(--primary-color);">Liên hệ</span>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<%--<li class="nav-item active"><a class="nav-link" href="/trang-chu#">Trang chủ--%>
						<%--<span class="sr-only">(current)</span>--%>
					<%--</a></li>--%>
					<security:authorize access = "isAnonymous()">
						<li class="nav-item"><a class="nav-link" href="<c:url value='/login'/>">Đăng nhập</a></li>
						<li class="nav-item"><a class="nav-link" href="<c:url value='/register'/>">Đăng ký</a></li>
					</security:authorize>
					<security:authorize access = "isAuthenticated()">
						<li class="nav-item"><a class="nav-link" href="/spring-boot/admin/home"> Xin chào <%=SecurityUtils.getPrincipal().getUsername()%></a></li>
						<li class="nav-item"><a class="nav-link" href="<c:url value='/logout'/>">Thoát</a></li>
					</security:authorize>
				</ul>
			</div>
		</div>
</nav>