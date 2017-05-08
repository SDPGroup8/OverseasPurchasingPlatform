<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="shop-header.jsp">
<jsp:param value="1" name="flag"/>
</jsp:include>
<div class="main">
  <div class="container">
    <ul class="breadcrumb">
        <li><a href="index.html">Home</a></li>
        <li class="active">Login</li>
    </ul>
    <!-- BEGIN SIDEBAR & CONTENT -->
    <div class="row margin-bottom-40">
      <!-- BEGIN SIDEBAR -->
      <div class="sidebar col-md-3 col-sm-5">
        <ul class="list-group margin-bottom-25 sidebar-menu">
          <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>About Us</a></li>
          <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Contact Us</a></li>
          <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Shipping</a></li>
          <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Privacy</a></li>
          <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Terms &amp; Conditions</a></li>
        </ul>
      </div>
      <!-- END SIDEBAR -->

      <!-- BEGIN CONTENT -->
      <div class="col-md-9 col-sm-7">
        <h1>Login</h1>
        <div class="content-form-page margin-bottom-40">
          <form role="form" class="form-horizontal form-without-legend" action="FrontLoginServlet?task=login" method="post">                        
            <div class="form-group">
              <label class="col-lg-2 control-label" for="email-login">E-Mail<span class="require">*</span></label>
              <div class="col-lg-8">
                <input type="text" id="email-login" name="email-login" class="form-control">
              </div>
            </div>
            <div class="form-group">
              <label class="col-lg-2 control-label" for="password-login">Password<span class="require">*</span></label>
              <div class="col-lg-8">
                <input type="password" id="password-login" name="password-login" class="form-control">
              </div>
            </div>
            <div class="form-group">
              <label class="col-lg-2 control-label" for="verified-code">Verified Code<span class="require">*</span></label>
              <div class="col-lg-4">
			  <input type="text" maxlength="4" name="code" id="code" size="4" class="form-control"> <br/>
			  <img src="img2.jsp"  onclick="this.src='img2.jsp?'+new Date();" width="70" height="30"/> 
              </div>
            </div>
            <div class="row">
              <div class="col-lg-8 col-md-offset-2 padding-left-0 padding-top-20">
                <button class="btn btn-primary" type="submit">Login</button>
              </div>
              <div class="col-lg-8 col-md-offset-2 padding-left-0 padding-top-20">
                <p>Forgotten Password? Click here to <a href="javascript:;"><span class="color-red-v2">Recover password</span></a>.</p>
              </div>
            </div>
          </form>
        </div>

        <h1>New Customer</h1>
        <div class="content-form-page">
          <form role="form" class="form-horizontal form-without-legend" action="FrontLoginServlet?task=register" method="post">
            <div class="padding-left-0">
              <p>Registering with XXX gives you access to special deals, personalised service and extra site features.</p>
            </div>                                 
            <div class="row">
              <div class="col-lg-2 padding-top-20">
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
<jsp:param value="1" name="flag"/>
</jsp:include>
</body>
</html>