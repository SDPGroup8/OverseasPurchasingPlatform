<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
  <meta charset="utf-8">
  <title>Metronic Shop UI</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <meta content="Metronic Shop UI description" name="description">
  <meta content="Metronic Shop UI keywords" name="keywords">
  <meta content="Group 8" name="Group 8">

  <meta property="og:site_name" content="-CUSTOMER VALUE-">
  <meta property="og:title" content="-CUSTOMER VALUE-">
  <meta property="og:description" content="-CUSTOMER VALUE-">
  <meta property="og:type" content="website">
  <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
  <meta property="og:url" content="-CUSTOMER VALUE-">

  <link rel="shortcut icon" href="favicon.ico">

  <!-- Fonts START -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"><!--- fonts for slider on the index page -->  
  <!-- Fonts END -->

  <!-- Global styles START -->          
  <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
  <!-- Page level plugin styles START -->
  <link href="assets/pages/css/animate.css" rel="stylesheet">
  <link href="assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="assets/pages/css/components.css" rel="stylesheet">
  <link href="assets/pages/css/slider.css" rel="stylesheet">
  <link href="assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
  <link href="assets/corporate/css/style.css" rel="stylesheet">
  <link href="assets/corporate/css/style-responsive.css" rel="stylesheet">
  <link href="assets/corporate/css/themes/blue.css" rel="stylesheet" id="style-color">
  <link href="assets/corporate/css/custom.css" rel="stylesheet">
  <!-- Theme styles END -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">

    <!-- BEGIN TOP BAR -->
    <div class="pre-header">
        <div class="container">
            <div class="row">
                <!-- BEGIN TOP BAR LEFT PART -->
                <div class="col-md-6 col-sm-6 additional-shop-info">
                    <ul class="list-unstyled list-inline">
                        <li><i class="fa fa-phone"></i><span>+1 456 6717</span></li>
                        <!-- BEGIN CURRENCIES -->
                        <li class="shop-currencies">$ NZD</li>
                        <!-- END CURRENCIES -->
                        <!-- BEGIN LANGS -->
                        <li class="langs-block">English</li>
                        <!-- END LANGS -->
                    </ul>
                </div>
                <!-- END TOP BAR LEFT PART -->
                <!-- BEGIN TOP BAR MENU -->
                <div class="col-md-6 col-sm-6 additional-nav">
                    <ul class="list-unstyled list-inline pull-right">
                        <li><a href="shop-account.jsp">My account</a></li>
                        <li><a href="shop-login.jsp">Login</a></li>
                        <li><a href="FrontRegister.jsp">Register</a></li>            
                        <li><a href="shop-faq.html">FAQ</a></li>
                        <li><a href="shop-contact.html">Contact Us</a></li>
                    </ul>
                </div>
                <!-- END TOP BAR MENU -->
            </div>
        </div>        
    </div>
    <!-- END TOP BAR -->

    <!-- BEGIN HEADER -->
    <div class="header">
      <div class="container">
        <a class="site-logo" href="HomeServlet?task=home"><img src="assets/corporate/img/logos/logo-shop-blue.png" alt="Metronic Shop UI"></a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <!-- BEGIN CART -->
        <div class="top-cart-block">
          <div class="top-cart-info">            
            <a href="shop-shoppingcart.jsp" class="top-cart-info-count"><span id="shopCount" >${SESSION_SHOPCAR.count == null ? 0 : SESSION_SHOPCAR.count}</span>  items</a>
          </div>
          <i class="fa fa-shopping-cart"></i>
                                   
        </div>
        <!--END CART -->

        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation">
          <ul>
            <li class="dropdown active">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">Baby &amp; Child Care</a>               
              <ul class="dropdown-menu">
                <li><a href="HomeServlet?task=productlist&smalltypeid=5">For Baby &amp; Child</a></li>
                <li><a href="HomeServlet?task=productlist&smalltypeid=6">For Mum</a></li>
                <li><a href="HomeServlet?task=productlist&smalltypeid=7">Accessories</a></li>
              </ul>
            </li>
            
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">Natural Health</a>               
              <ul class="dropdown-menu">
                <li><a href="HomeServlet?task=productlist&smalltypeid=8">Bone &amp; Joint Support</a></li>
                <li><a href="HomeServlet?task=productlist&smalltypeid=9">Brain Health</a></li>
                <li><a href="HomeServlet?task=productlist&smalltypeid=10">Eye Health</a></li>
                <li><a href="HomeServlet?task=productlist&smalltypeid=11">Heart Health</a></li>
                <li><a href="HomeServlet?task=productlist&smalltypeid=12">Diet &amp; Weight Loss</a></li>
                <li><a href="HomeServlet?task=productlist&smalltypeid=13">MultiVitamin &amp; Minerals</a></li>
              </ul>
            </li>

            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">Beauty</a>             
              <ul class="dropdown-menu">
                <li><a href="HomeServlet?task=productlist&smalltypeid=2">Skin Care</a></li>
                <li><a href="HomeServlet?task=productlist&smalltypeid=1">Body Care</a></li>
                <li><a href="HomeServlet?task=productlist&smalltypeid=3">Hair Care</a></li>               
              </ul>
            </li>          

            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">Food</a>               
              <ul class="dropdown-menu">              
                <li><a href="HomeServlet?task=productlist&smalltypeid=2">Beverage</a></li>                
                <li><a href="HomeServlet?task=productlist&smalltypeid=2">Fruit</a></li>
                <li><a href="HomeServlet?task=productlist&smalltypeid=1">Snack</a></li>
                <li><a href="HomeServlet?task=productlist&smalltypeid=3">Wine</a></li>
              </ul>
            </li>

            <!-- BEGIN TOP SEARCH -->
            <li class="menu-search">
              <span class="sep"></span>
              <i class="fa fa-search search-btn"></i>
              <div class="search-box">
                <form action="HomeServlet?task=productlist" method="post" id="myForm">
                  <div class="input-group">
                   <input type="hidden" name="currentPage" id="currentPage" value="${page.currentPage }">
			       <input type="hidden" name="pageSize" id="pageSize" value="${page.pageSize }">
                    <input type="text" placeholder="Search" value="${comname }" name="comname" class="form-control">
                    <input type="hidden" name="smalltypeid" id="smalltypeid" value="${smalltypeid }">
                    <span class="input-group-btn">
                      <button class="btn btn-primary" type="submit">Search</button>
                    </span>
                  </div>
                </form>
              </div> 
            </li>
            <!-- END TOP SEARCH -->
          </ul>
        </div>
        <!-- END NAVIGATION -->
      </div>
    </div>
    <!-- Header END -->
