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
		fm = f2.first_name.value;
		if (fm == "") {
			first_name_mess.style.visibility = "hidden";
			f2.first_name.style.border = "";
			fcheck = false;
			return;
		}
		reg = /^[a-zA-Z\-]+$/;
		if (reg.test(fm)) {
			first_name_mess.innerHTML = "";
			f2.first_name.style.color = "black";
			f2.first_name.style.border = "";
			fcheck = true;
			return;
		} else {
			first_name_mess.innerHTML = "Wrong first name";
			f2.first_name.style.color = "red";
			f2.first_name.style.border = "1px solid red";
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
		lm = f2.last_name.value;
		if (lm == "") {
			last_name_mess.style.visibility = "hidden";
			f2.last_name.style.border = "";
			lcheck = false;
			return;
		}
		reg = /^[a-zA-Z\-]+$/;
		if (reg.test(lm)) {
			last_name_mess.innerHTML = "";
			f2.last_name.style.color = "black";
			f2.last_name.style.border = "";
			lcheck = true;
			return;
		} else {
			last_name_mess.innerHTML = "Wrong last name";
			f2.last_name.style.color = "red";
			f2.last_name.style.border = "1px solid red";
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
		mm = f2.mail.value;
		if (mm == "") {
			mail_mess.style.visibility = "hidden";
			f2.mail.style.border = "";
			mcheck = false;
			return;
		}
		reg = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
		if (reg.test(mm)) {
			mail_mess.innerHTML = "";
			f2.mail.style.color = "black";
			f2.mail.style.border = "";
			mcheck = true;
			return;
		} else {
			mail_mess.innerHTML = "Wrong email pattern";
			f2.mail.style.color = "red";
			f2.mail.style.border = "1px solid red";
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
		pm = f2.phone.value;
		if (pm == "") {
			phone_mess.style.visibility = "hidden";
			f2.phone.style.border = "";
			pcheck = false;
			return;
		}
		reg = /^\(\d\d\d\) \d\d\d\-\d\d\d\d$/;
		if (reg.test(pm)) {
			phone_mess.innerHTML = "";
			f2.phone.style.color = "black";
			f2.phone.style.border = "";
			pcheck = true;
			return;
		} else {
			phone_mess.innerHTML = "Wrong phone pattern";
			f2.phone.style.color = "red";
			f2.phone.style.border = "1px solid red";
			pcheck = false;
			return;
		}

	}
	function inPostCode() {
		var pccheck = false;
		postalcode_mess.innerHTML = "Please enter the zip code for your region";
		postalcode_mess.style.visibility = "visible";
	}
	function outPostCode() {
		pc = f2.postalcode.value;
		if (pc == "") {
			postalcode_mess.style.visibility = "hidden";
			f2.postalcode.style.border = "";
			pccheck = false;
			return;
		}
		reg = /^[0-9]+$/;
		if (reg.test(pc)) {
			postalcode_mess.innerHTML = "";
			f2.postalcode.style.color = "black";
			f2.postalcode.style.border = "";
			pccheck = true;
			return;
		} else {
			postalcode_mess.innerHTML = "Wrong postalcode pattern";
			f2.postalcode.style.color = "red";
			f2.postalcode.style.border = "1px solid red";
			pccheck = false;
			return;
		}
	}
	function inAddress() {
		address_mess.innerHTML = "Please enter your current address";
		address_mess.style.visibility = "visible";
	}

	function validate_info() {
		if (fcheck && lcheck && pcheck && pacheck && rpcheck && pccheck) {
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
				<li class="active">Personal Information Update</li>
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
					<h1>Personal Information Update</h1>
					<div class="content-form-page">
						<form role="form" id="f2"
							class="form-horizontal form-without-legend"
							action="HomeServlet?task=userUpdate" method="post"
							onsubmit="return validate_info();">
							<div class="form-group">
								<label class="col-lg-2 control-label" for="first-name">First
									Name </label>
								<div class="col-lg-8">
									<input type="text" id="first-name" name="first_name"
										value="${ sessionScope.user.firstname }" class="form-control"
										onFocus="inFirstName()" onBlur="outFirstName()">
									<div id="first_name_mess" class="clr"></div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="last-name">Last
									Name </label>
								<div class="col-lg-8">
									<input type="text" id="last-name" name="last_name"
										value="${ sessionScope.user.lastname }" onFocus="inLastName()"
										onBlur="outLastName()" class="form-control">
									<div id="last_name_mess" class="clr"></div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="email">E-Mail
								</label>
								<div class="col-lg-8">
									<input type="text" id="email" name="mail"
										value="${ sessionScope.user.email }" onFocus="inMail()"
										onBlur="outMail()" class="form-control">
									<div id="mail_mess" class="clr"></div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="phone">Phone
								</label>
								<div class="col-lg-8">
									<input type="text" id="phone" name="phone" onFocus="inPhone()"
										value="${ sessionScope.user.phoneno }"
										onBlur="outPhone()" class="form-control">
									<div id="phone_mess" class="clr"></div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="address">Address</label>
								<div class="col-lg-8">
									<input type="text" id="address" name="address"
										value="${ sessionScope.user.address }"
										onFocus="inAddress()" class="form-control">
									<div id="address_mess" class="clr"></div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label" for="post-code">Post
									Code</label>
								<div class="col-lg-8">
									<input type="text" id="post-code" maxlength="4"
										name="postalcode" onFocus="inPostCode()"
										value="${ sessionScope.user.postalcode }"
										onBlur="outPostCode()" class="form-control">
									<div id="postalcode_mess" class="clr"></div>
								</div>
								<input type="hidden" name="username"
									value="${ sessionScope.user.email }">
							</div>
							<div class="row">
								<div
									class="col-lg-8 col-md-offset-2 padding-left-0 padding-top-20">
									<button class="btn btn-primary" type="submit">Update</button>
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