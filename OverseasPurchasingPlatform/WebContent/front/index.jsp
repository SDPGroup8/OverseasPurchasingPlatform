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
<!-- 
Home Page
 -->
<!-- BEGIN SLIDER -->
<div class="page-slider margin-bottom-35">
    <div id="carousel-example-generic" class="carousel slide carousel-slider">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <!-- First slide -->
            <div class="item carousel-item-four active">
                <div class="center-block">
                    <div class="center-block-wrap">
                        <div class="center-block-body">
                            <h2 class="carousel-title-v1 margin-bottom-20" data-animation="animated fadeInDown">
                                The most <br/>
                                wanted product
                            </h2>
                            <a class="carousel-btn" href="#" data-animation="animated fadeInUp">But It Now!</a>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Second slide -->
            <div class="item carousel-item-five">
                <div class="center-block">
                    <div class="center-block-wrap">
                        <div class="center-block-body">
                            <h2 class="carousel-title-v1 margin-bottom-20" data-animation="animated fadeInDown">
                                The most <br/>
                                wanted product
                            </h2>
                            <a class="carousel-btn" href="#" data-animation="animated fadeInUp">But It Now!</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Third slide -->
            <div class="item carousel-item-six">
                <div class="center-block">
                    <div class="center-block-wrap">
                        <div class="center-block-body">
                            <h2 class="carousel-title-v1 margin-bottom-20" data-animation="animated fadeInDown">
                                The most <br/>
                                wanted product
                            </h2>
                            <a class="carousel-btn" href="#" data-animation="animated fadeInUp">But It Now!</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Fourth slide -->
            <div class="item carousel-item-seven">
               <div class="center-block">
                    <div class="center-block-wrap">
                        <div class="center-block-body">
                            <h2 class="carousel-title-v1 margin-bottom-20" data-animation="animated fadeInDown">
                                The most <br/>
                                wanted product.
                            </h2>
                            <a class="carousel-btn" href="#" data-animation="animated fadeInUp">But It Now!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control carousel-control-shop" href="#carousel-example-generic" role="button" data-slide="prev">
            <i class="fa fa-angle-left" aria-hidden="true"></i>
        </a>
        <a class="right carousel-control carousel-control-shop" href="#carousel-example-generic" role="button" data-slide="next">
            <i class="fa fa-angle-right" aria-hidden="true"></i>
        </a>
    </div>
</div>
<!-- END SLIDER -->

<div class="main">
  <div class="container">
    <!-- BEGIN SALE PRODUCT -->
    <div class="row margin-bottom-40">
      <!-- BEGIN Latest Products -->
      <div class="col-md-12 sale-product">
        <h2>Latest Products</h2>
        <div class="owl-carousel owl-carousel5">
        
        
          <div>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="../pic/baby & mum/baby/1.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="../pic/baby & mum/baby/1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="HomeServlet?comid=1">BABY PRODUCT 1</a></h3>
                <div class="pi-price">$120.00</div>
                <a href="javaScript:shopCar(1)" class="btn btn-default add2cart">Add to cart</a>
                <div class="sticker sticker-new"></div>
              </div>
          </div>
          <div>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="../pic/baby & mum/baby/2.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="../pic/baby & mum/baby/2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="HomeServlet?comid=2">BABY PRODUCT 2</a></h3>
                <div class="pi-price">$130.00</div>
                <a href="javaScript:shopCar(2)" class="btn btn-default add2cart">Add to cart</a>
                <div class="sticker sticker-new"></div>
              </div>
          </div>
          <div>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="../pic/baby & mum/baby/4.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="../pic/baby & mum/baby/4.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="HomeServlet?comid=3">BABY PRODUCT 3</a></h3>
                <div class="pi-price">$90.00</div>
                <a href="javaScript:shopCar(3)" class="btn btn-default add2cart">Add to cart</a>
                <div class="sticker sticker-new"></div>
              </div>
          </div>
          <div>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="../pic/baby & mum/baby/5.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="../pic/baby & mum/baby/5.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="HomeServlet?comid=4">BABY PRODUCT 4</a></h3>
                <div class="pi-price">$50.00</div>
                <a href="javaScript:shopCar(4)" class="btn btn-default add2cart">Add to cart</a>
                <div class="sticker sticker-new"></div>
              </div>
          </div>
          <div>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="../pic/baby & mum/baby/6.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="../pic/baby & mum/baby/6.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="HomeServlet?comid=5">BABY PRODUCT 5</a></h3>
                <div class="pi-price">$30.00</div>
                <a href="javaScript:shopCar(5)" class="btn btn-default add2cart">Add to cart</a>
                <div class="sticker sticker-new"></div>
              </div>
          </div>                                          
        </div>
      </div>
      <!-- END Latest Products -->
    </div>
    <!-- END SALE PRODUCT-->

    <!-- BEGIN SALE PRODUCT -->
    <div class="row margin-bottom-40">
      <!-- BEGIN Special Offers -->
      <div class="col-md-12 sale-product">
        <h2>Special Offers</h2>
        <div class="owl-carousel owl-carousel5">
        
        
          <div>
            <div class="product-item">
              <div class="pi-img-wrapper">
                <img src="assets/pages/img/products/model1.jpg" class="img-responsive" alt="Berry Lace Dress">
                <div>
                  <a href="assets/pages/img/products/model1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                  <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                </div>
              </div>
              <h3><a href="HomeServlet?comid=6">BABY PRODUCT 6</a></h3>
              <div class="pi-price">$20.00</div>
              <a href="javaScript:shopCar(6)" class="btn btn-default add2cart">Add to cart</a>
              <div class="sticker sticker-sale"></div>
            </div>
          </div>
          <div>
            <div class="product-item">
              <div class="pi-img-wrapper">
                <img src="../pic/baby & mum/mum/1.jpg" class="img-responsive" alt="Berry Lace Dress">
                <div>
                  <a href="../pic/baby & mum/mum/1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                  <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                </div>
              </div>
              <h3><a href="HomeServlet?comid=7">MUM PRODUCT 1</a></h3>
              <div class="pi-price">$50.00</div>
              <a href="javaScript:shopCar(7)" class="btn btn-default add2cart">Add to cart</a>
              <div class="sticker sticker-sale"></div>
            </div>
          </div>
          <div>
            <div class="product-item">
              <div class="pi-img-wrapper">
                <img src="../pic/baby & mum/mum/2.jpg" class="img-responsive" alt="Berry Lace Dress">
                <div>
                  <a href="../pic/baby & mum/mum/2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                  <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                </div>
              </div>
              <h3><a href="HomeServlet?comid=8">MUM PRODUCT 2</a></h3>
              <div class="pi-price">$100.00</div>
              <a href="javaScript:shopCar(8)" class="btn btn-default add2cart">Add to cart</a>
              <div class="sticker sticker-sale"></div>
            </div>
          </div>
          <div>
            <div class="product-item">
              <div class="pi-img-wrapper">
                <img src="../pic/baby & mum/mum/3.jpg" class="img-responsive" alt="Berry Lace Dress">
                <div>
                  <a href="../pic/baby & mum/mum/3.jpg" class="btn btn-default fancybox-button">Zoom</a>
                  <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                </div>
              </div>
              <h3><a href="HomeServlet?comid=9">MUM PRODUCT 3</a></h3>
              <div class="pi-price">$80.00</div>
              <a href="javaScript:shopCar(9)" class="btn btn-default add2cart">Add to cart</a>
              <div class="sticker sticker-sale"></div>
            </div>
          </div>
          <div>
            <div class="product-item">
              <div class="pi-img-wrapper">
                <img src="../pic/baby & mum/mum/4.jpg" class="img-responsive" alt="Berry Lace Dress">
                <div>
                  <a href="../pic/baby & mum/mum/4.jpg" class="btn btn-default fancybox-button">Zoom</a>
                  <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                </div>
              </div>
              <h3><a href="HomeServlet?comid=10">MUM PRODUCT 4</a></h3>
              <div class="pi-price">$75.00</div>
              <a href="javaScript:shopCar(10)" class="btn btn-default add2cart">Add to cart</a>
              <div class="sticker sticker-sale"></div>
            </div>
          </div>
          
          
        </div>
      </div>
      <!-- END Special Offers -->
    </div>
    <!-- END SALE PRODUCT --> 

  </div>
</div>
<script type="text/javascript">
     	function shopCar(comid){
     		//1.Gets the XMLHttpRequest object
     		var http = new XMLHttpRequest();
     		//2.send request
     		http.open("GET","ShopCarServlet?comid="+comid,true);
     		http.send();
     		http.onreadystatechange = function(){
     			if(http.readyState=='4' && http.status=='200'){
     				document.getElementById("shopCount").innerHTML = http.responseText;
     			}
     		}
     	}
     </script>
<jsp:include page="shop-footer.jsp">
<jsp:param value="1" name="flag"/>
</jsp:include>
</body>
</html>
