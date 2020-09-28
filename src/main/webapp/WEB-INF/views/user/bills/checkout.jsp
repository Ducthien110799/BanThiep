<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<meta charset="ISO-8859-1">
<title>Thanh toán</title>
</head>
<body>
	<h3>NGƯỜI DÙNG</h3>
	<hr class="soft" />
	<div class="row">
		<form class="form-horizontal">
			<div class="well">

				<form:form action="checkout" method="POST" modelAttribute="bills"></form:form>
				<h3>Thanh toán đơn hàng</h3>
				<div class="control-group">
					<label class="control-label">Họ tên <sup>*</sup></label>
					<div class="controls">
						<form:input path="display_name" type="text"
							placeholder="Mời nhập tên" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Email <sup>*</sup></label>
					<div class="controls">
						<form:input path="user" class="span3" type="email" placeholder="Mời nhập email" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Liên hện <sup>*</sup></label>
					<div class="controls">
						<form:input path="phone"  type="text" placeholder="Mời nhập số điện thoại" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Địa chỉ <sup>*</sup></label>
					<div class="controls">
						<form:textarea path="address" row="5" cols="30" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Ghi chú <sup>*</sup></label>
					<div class="controls">
						<form:textarea rows="5" cols="30" path="note"/>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<input type="submit" name="submitAccount" value="Register"
							class="shopBtn exclusive">
					</div>
				</div>
		</form>
	</div>
	</div>
</body>
