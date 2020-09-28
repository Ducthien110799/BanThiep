<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<meta charset="ISO-8859-1">
<title>Đăng ki</title>
</head>
<body>
	<h3>NGƯỜI DÙNG</h3>
	<hr class="soft" />
	<div class="row">
		<div class="span4">
			<div class="well">
				<h5>ĐĂNG KÝ TÀI KHOẢN</h5>
				<form:form action="dang-ki" method="POST" modelAttribute="user">
					<div class="control-group">

						<label class="control-label" for="inputEmail">Email</label>
						<div class="controls">
							<form:input type="email" class="span3" path="user"
								placeholder="Email" />
						</div>
						<label class="control-label" for="inputPass">Mật khẩu</label>
						<div class="controls">
							<form:input type="password" class="span3" path="password"
								placeholder="Mật khẩu" />
						</div>

						<label class="control-label" for="inputTen">Họ và tên</label>
						<div class="controls">
							<form:input type="text" class="span3" path="display_name"
								placeholder="Họ và tên" />
						</div>

						<label class="control-label" for="inputAddress">Địa chỉ</label>
						<div class="controls">
							<form:input type="text" class="span3" path="address"
								placeholder="Địa chỉ" />
						</div>
					</div>
					<div class="controls">
						<button type="submit" class="btn block">Tạo tài khoản</button>
					</div>
				</form:form>
			</div>
		</div>
		<div class="span1">&nbsp;</div>
		<div class="span4">
			<div class="well">
				<h5>Bạn đã sẵn sàng để đăng nhập ??</h5>
				<h1> ${statusLogin} </h1>
				<form:form action="dang-nhap" method="POST" modelAttribute="user">
					<div class="control-group">
						<label class="control-label" for="inputEmail">Email</label>
						<div class="controls">
							<form:input type="email" class="span3" path="user" placeholder="Email" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputPassword">Password</label>
						<div class="controls">
							<form:input type="password" class="span3" path="password" placeholder="Mật khẩu" />
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button type="submit" class="defaultBtn">Sign in</button>
							<a href="#">Forget password?</a>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
