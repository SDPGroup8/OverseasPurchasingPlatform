<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function inFirstName() {
		var fcheck = false;
		first_name_mess.innerHTML = "Please input your first name";
		first_name_mess.style.visibility = "visible";
	}
	function outFirstName() {
		fm = f1.first_name.value;
		if (fm == "") {
			first_name_mess.style.visibility = "hidden";
			f1.first_name.style.border = "";
			fcheck = false;
			return;
		}
		reg = /^[a-zA-Z\-]+$/;
		if (reg.test(fm)) {
			first_name_mess.innerHTML = "";
			f1.first_name.style.color = "black";
			f1.first_name.style.border = "";
			fcheck = true;
			return;
		} else {
			first_name_mess.innerHTML = "Wrong first name";
			f1.first_name.style.color = "red";
			f1.first_name.style.border = "1px solid red";
			fcheck = false;
			return;
		}
	}
	function inLastName() {
		last_name_mess.innerHTML = "Please input your last name";
		last_name_mess.style.visibility = "visible";
		var lcheck = false;
	}
	function outLastName() {
		lm = f1.last_name.value;
		if (lm == "") {
			last_name_mess.style.visibility = "hidden";
			f1.last_name.style.border = "";
			lcheck = false;
			return;
		}
		reg = /^[a-zA-Z\-]+$/;
		if (reg.test(lm)) {
			last_name_mess.innerHTML = "";
			f1.last_name.style.color = "black";
			f1.last_name.style.border = "";
			lcheck = true;
			return;
		} else {
			last_name_mess.innerHTML = "Wrong last name";
			f1.last_name.style.color = "red";
			f1.last_name.style.border = "1px solid red";
			lcheck = false;
			return;
		}
	}
	function inMail() {
		var mcheck = false;
		mail_mess.innerHTML = "Please input your common used e-mail";
		mail_mess.style.visibility = "visible";
	}
	function outMail() {
		mm = f1.mail.value;
		if (mm == "") {
			mail_mess.style.visibility = "hidden";
			f1.mail.style.border = "";
			mcheck = false;
			return;
		}
		reg = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
		if (reg.test(mm)) {
			mail_mess.innerHTML = "";
			f1.mail.style.color = "black";
			f1.mail.style.border = "";
			mcheck = true;
			return;
		} else {
			mail_mess.innerHTML = "Wrong email pattern";
			f1.mail.style.color = "red";
			f1.mail.style.border = "1px solid red";
			mcheck = false;
			return;
		}

	}
	function inPhone() {
		var pcheck = false;
		phone_mess.innerHTML = "Please input your common used phone number. e.g.(022) 123-4567";
		phone_mess.style.visibility = "visible";
	}
	function outPhone() {
		pm = f1.phone.value;
		if (pm == "") {
			phone_mess.style.visibility = "hidden";
			f1.phone.style.border = "";
			pcheck = false;
			return;
		}
		reg = /^\(\d\d\d\) \d\d\d\-\d\d\d\d$/;
		if (reg.test(pm)) {
			phone_mess.innerHTML = "";
			f1.phone.style.color = "black";
			f1.phone.style.border = "";
			pcheck = true;
			return;
		} else {
			phone_mess.innerHTML = "Wrong phone pattern";
			f1.phone.style.color = "red";
			f1.phone.style.border = "1px solid red";
			pcheck = false;
			return;
		}

	}
	function inPass() {
		var pacheck = false;
		pass_mess.innerHTML = "Please input the password. The password should between 6 to 18 characters.";
		pass_mess.style.visibility = "visible";
	}
	function outPass() {
		p = f1.password_login.value;
		if (p == "") {
			pass_mess.style.visibility = "hidden";
			f1.password_login.style.border = "";
			pacheck = false;
			return;
		}
		reg = /^[A-Za-z]\w{6,18}$/;
		if (reg.test(p)) {
			pass_mess.innerHTML = "";
			f1.password_login.style.color = "black";
			f1.password_login.style.border = "";
			pacheck = true;
			return;
		} else {
			pass_mess.innerHTML = "Wrong password pattern.The password should between 6 to 18 characters.";
			f1.password_login.style.color = "red";
			f1.password_login.style.border = "1px solid red";
			pacheck = false;
			return;
		}
	}
	function inRPass() {
		var rpcheck = false;
		rpass_mess.innerHTML = "Please confirm the password";
		rpass_mess.style.visibility = "visible";

	}
	function outRPass() {
		rp = f1.password_comfirm.value;
		if (rp == "") {
			rpass_mess.style.visibility = "hidden";
			f1.password_confirm.style.border = "";
			rpcheck = false;
			return;
		}
		if (f1.password_login.value != f1.password_comfirm.value) {
			rpass_mess.innerHTML = "Your new and confirm password are different";
			rpass_mess.style.visibility = "visible";
			rpass_mess.style.color = "red";
			f1.password_comfirm.style.border = "1px solid red";
			rpcheck = false;
			return;
		} else {
			rpass_mess.style.visibility = "visble";
			rpass_mess.innerHTML = "Great! Your new and confirm password are the same";
			rpass_mess.style.color = "black";
			f1.password_confirm.style.color = "black";
			f1.password_confirm.style.border = "";
			rpcheck = true;
			return;
		}
	}
	function validate_info() {
		if (fcheck && lcheck && pcheck && pacheck && rpcheck) {
			return true;
		} else {
			alert("The information has errors, please correct and submit.");
			return false;
		}
	}
</script>
</head>
<body>
	<jsp:include page="shop-header.jsp">
		<jsp:param value="1" name="flag" />
	</jsp:include>
	<div class="main">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li class="active">Register</li>
			</ul>
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row margin-bottom-40">
				<!-- BEGIN SIDEBAR -->
				<div class="sidebar col-md-3 col-sm-5">
					<ul class="list-group margin-bottom-25 sidebar-menu">
						<li class="list-group-item clearfix"><a href="javascript:;"><i
								class="fa fa-angle-right"></i>About Us</a></li>
						<li class="list-group-item clearfix"><a href="javascript:;"><i
								class="fa fa-angle-right"></i>Contact Us</a></li>
						<li class="list-group-item clearfix"><a href="javascript:;"><i
								class="fa fa-angle-right"></i>Shipping</a></li>
						<li class="list-group-item clearfix"><a href="javascript:;"><i
								class="fa fa-angle-right"></i>Privacy</a></li>
						<li class="list-group-item clearfix"><a href="javascript:;"><i
								class="fa fa-angle-right"></i>Terms &amp; Conditions</a></li>
					</ul>
				</div>
				<!-- END SIDEBAR -->

				<!-- BEGIN CONTENT -->
				<div class="col-md-9 col-sm-7">
					<h1>New Customer</h1>
					<div class="content-form-page">
						<form id="f1" role="form"
							class="form-horizontal form-without-legend" method="post"
							action="FrontRegisterServlet" onsubmit="return validate_info();">
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first_name">First
									Name <span class="require">*</span>
								</label>
								<div class="col-lg-8">
									<input type="text" id="first-name" class="form-control"
										name="first_name" onFocus="inFirstName()"
										onBlur="outFirstName()">
									<div id="first_name_mess" class="clr"></div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="last_name">Last
									Name <span class="require">*</span>
								</label>
								<div class="col-lg-8">
									<input type="text" id="last-name" class="form-control"
										name="last_name" onFocus="inLastName()" onBlur="outLastName()">
									<div id="last_name_mess" class="clr"></div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="email">E-Mail
									<span class="require">*</span>
								</label>
								<div class="col-lg-8">
									<input type="text" id="mail" class="form-control" name="mail"
										onFocus="inMail()" onBlur="outMail()" />
									<div id="mail_mess" class="clr"></div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="phone">Phone
									<span class="require">*</span>
								</label>
								<div class="col-lg-8">
									<input type="text" id="phone" class="form-control" name="phone"
										onFocus="inPhone()" onBlur="outPhone()">
									<div id="phone_mess" class="clr"></div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="password-login">Password<span
									class="require">*</span></label>
								<div class="col-lg-8">
									<input type="password" id="password-login" class="form-control"
										name="password_login" onFocus="inPass()" onBlur="outPass()">
									<div id="pass_mess" class="clr"></div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="password-comfirm">Confirm
									Password<span class="require">*</span>
								</label>
								<div class="col-lg-8">
									<input type="password" id="password-comfirm"
										class="form-control" name="password_comfirm"
										onFocus="inRPass()" onBlur="outRPass()">
									<div id="rpass_mess" class="clr"></div>
								</div>
							</div>
							<div class="row">
								<div
									class="col-lg-8 col-md-offset-2 padding-left-0 padding-top-20">
									<button class="btn btn-primary" type="submit">Register</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- END CONTENT -->
			</div>
			<!-- END SIDEBAR & CONTENT -->
		</div>
	</div>

	<jsp:include page="shop-footer.jsp">
		<jsp:param value="1" name="flag" />
	</jsp:include>
</body>
</html>