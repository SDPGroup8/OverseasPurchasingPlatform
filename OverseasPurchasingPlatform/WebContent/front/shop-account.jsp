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
        <li class="active">My Account</li>
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
        <h1>Account Detail</h1>
        <div class="content-page">
          <h3>My Account</h3>
          <ul>
            <li><a href="shop-information-update.jsp">Personal Information</a></li>
            <li><a href="javascript:;">Change Password</a></li>
            <li><a href="javascript:;">Address Book</a></li>
          </ul>
          <hr>

          <h3>My Orders</h3>
          <ul>
            <li><a href="OrderServlet?task=history">Order History</a></li>
            <li><a href="javascript:;">Transactions</a></li>
          </ul>
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