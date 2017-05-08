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
        <a class="site-logo" href="HomeServlet?task=home"><img src="assets/corporate/img/logos/logo-shop-red.png" alt="Metronic Shop UI"></a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <!-- BEGIN CART -->
        <div class="top-cart-block">
          <div class="top-cart-info">            
            <a href="shop-shoppingcart.jsp" class="top-cart-info-count"><span id="shopCount" >${SESSION_SHOPCAR.count}</span>  items</a>
        
          </div>
          <i class="fa fa-shopping-cart"></i>
                        
          <div class="top-cart-content-wrapper">
            <div class="top-cart-content">
              <ul class="scroller" style="height: 250px;">
              <c:forEach var="com" items="${SESSION_SHOPCAR.list }">  
                <li>
                  <a href="shop-item.jsp"><img src="assets/pages/img/products/model1.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                  <span class="cart-content-count">x ${com.shopNum }</span>
                  <strong><a href="shop-item.jsp">${com.comname }</a></strong>
                  <em>$${ com.shopNum*com.price}</em>
                  <a href="javascript:delGoods(${ com.comid});" class="del-goods">&nbsp;</a>
                </li>
              </c:forEach>
              </ul>
              <div class="text-right">
                <a href="shop-shoppingcart.jsp" class="btn btn-default">View Cart</a>
                <a href="shop-checkout.jsp" class="btn btn-primary">Checkout</a>
              </div>
            </div>
          </div>            
        </div>
        <!--END CART -->

        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation">
          <ul>
            <li class="dropdown active">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">Baby &amp; Child Care</a>               
              <ul class="dropdown-menu">
                <li><a href="HomeServlet?task=productlist">For Baby &amp; Child</a></li>
                <li class="active"><a href="shop-for-mum.html">For Mum</a></li>
                <li><a href="shop-accessories.html">Accessories</a></li>
              </ul>
            </li>
            
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">Natural Health</a>               
              <ul class="dropdown-menu">
                <li><a href="shop-bone-joint-health.html">Bone &amp; Joint Support</a></li>
                <li><a href="shop-brain-health.html">Brain Health</a></li>
                <li><a href="shop-eye-health.html">Eye Health</a></li>
                <li><a href="shop-heart-health.html">Heart Health</a></li>
                <li><a href="shop-diet-weight-loss.html">Diet &amp; Weight Loss</a></li>
                <li><a href="shop-multivitamin-minerals.html">MultiVitamin &amp; Minerals</a></li>
              </ul>
            </li>

            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">Beauty</a>             
              <ul class="dropdown-menu">
                <li><a href="shop-skin-care.html">Skin Care</a></li>
                <li><a href="shop-boby-care.html">Body Care</a></li>
                <li><a href="shop-hair-care.html">Hair Care</a></li>               
              </ul>
            </li>          

            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">Food</a>               
              <ul class="dropdown-menu">              
                <li><a href="shop-beverage.html">Beverage</a></li>                
                <li><a href="shop-fruit.html">Fruit</a></li>
                <li><a href="shop-snack.html">Snack</a></li>
                <li><a href="shop-wine.html">Wine</a></li>
              </ul>
            </li>

            <!-- BEGIN TOP SEARCH -->
            <li class="menu-search">
              <span class="sep"></span>
              <i class="fa fa-search search-btn"></i>
              <div class="search-box">
                <form action="HomeServlet?task=productlist" method="post">
                  <div class="input-group">
                    <input type="text" placeholder="Search" name="comname" class="form-control">
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
    <script type="text/javascript">
			function delGoods(comid){
				// Remove items in the shopping cart
				location.href="ShopCarServlet?task=delete&comid="+comid;
			}
		</script>