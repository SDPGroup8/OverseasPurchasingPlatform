<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="shop-header.jsp">
		<jsp:param value="1" name="flag" />
	</jsp:include>
<body>
<div class="title-wrapper">
  <div class="container">
    <div class="container-inner">
      <h1><span>MEN</span> CATEGORY</h1>
      <em>Over 4000 Items are available here</em>
    </div>
  </div>
</div>

<div class="main">
  <div class="container">
    <ul class="breadcrumb">
      <li><a href="index.html">Home</a></li>
      <li class="active">Men category</li>
    </ul>
    <!-- BEGIN SIDEBAR & CONTENT -->
    <div class="row margin-bottom-40">
      <!-- BEGIN SIDEBAR -->
      <div class="sidebar col-md-3 col-sm-5">
        <ul class="list-group margin-bottom-25 sidebar-menu">
          <li class="list-group-item clearfix dropdown active">
            <a href="shop-product-list.jsp" class="collapsed">
              <i class="fa fa-angle-right"></i>Baby &amp; Child Care</a>
            <ul class="dropdown-menu" style="display:block;">
              <li class="list-group-item dropdown clearfix active"><a href="HomeServlet?task=productlist" class="collapsed"><i class="fa fa-angle-right"></i> For Baby &amp; Child </a></li>
              <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> For Mum</a></li>
              <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Accessories</a></li>
            </ul>
          </li>
          <li class="list-group-item clearfix dropdown active">
            <a href="shop-product-list.html" class="collapsed">
              <i class="fa fa-angle-right"></i>Natural Health</a>
            <ul class="dropdown-menu" style="display:block;">
              <li class="list-group-item dropdown clearfix active"><a href="shop-product-list.html" class="collapsed"><i class="fa fa-angle-right"></i> Bone &amp; Joint Support </a></li>
              <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Brain Health</a></li>
              <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Eye Health</a></li>
              <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Heart Health</a></li>
              <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Diet &amp; Weight Loss</a></li>
              <li class="list-group-item dropdown clearfix active"><a href="shop-product-list.html" class="collapsed"><i class="fa fa-angle-right"></i> MultiVitamin &amp; Minerals </a></li>
            </ul>
          </li>
          <li class="list-group-item clearfix dropdown active">
            <a href="shop-product-list.html" class="collapsed">
              <i class="fa fa-angle-right"></i>Beauty</a>
            <ul class="dropdown-menu" style="display:block;">
              <li class="list-group-item dropdown clearfix active"><a href="shop-product-list.html" class="collapsed"><i class="fa fa-angle-right"></i> Skin Care </a></li>
              <li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Body Care</a></li>
              <li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Hair Care</a></li>
            </ul>
          </li>
          <li class="list-group-item clearfix dropdown active">
            <a href="shop-product-list.html" class="collapsed">
              <i class="fa fa-angle-right"></i>Food</a>
            <ul class="dropdown-menu" style="display:block;">
              <li class="list-group-item dropdown clearfix active"><a href="shop-product-list.html" class="collapsed"><i class="fa fa-angle-right"></i> Beverage </a></li>
              <li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Fruit</a></li>
              <li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Snack</a></li>
              <li><a href="shop-product-list.html"><i class="fa fa-angle-right"></i> Wine</a></li>
            </ul>
          </li>
        </ul>
      </div>
      <!-- END SIDEBAR -->
      <!-- BEGIN CONTENT -->
      <div class="col-md-9 col-sm-7">
        <div class="row list-view-sorting clearfix">
          <div class="col-md-2 col-sm-2 list-view">
            <a href="javascript:;"><i class="fa fa-th-large"></i></a>
            <a href="javascript:;"><i class="fa fa-th-list"></i></a>
          </div>
          <div class="col-md-10 col-sm-10">
           
            <jsp:include page="show-and-page.jsp">
						<jsp:param value="1" name="flag" />
					</jsp:include>
				
          </div>
        </div>
        <!-- BEGIN PRODUCT LIST -->
        <div class="row product-list">
         <c:forEach var="com" items="${page.list }">
          <!-- PRODUCT ITEM START -->
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="product-item">
              <div class="pi-img-wrapper">
                <img src="assets/pages/img/products/model1.jpg" class="img-responsive" alt="Berry Lace Dress">
                <div>
                  <a href="assets/pages/img/products/model1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                  <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                </div>
              </div>
              <h3><a href="HomeServlet?comid=${com.comid }">${com.comname }</a></h3>
              <div class="pi-price">$${com.price }</div>
              <a href="javaScript:shopCar(${com.comid })" class="btn btn-default add2cart">Add to cart</a>
            </div>
          </div>
            </c:forEach>
          <!-- PRODUCT ITEM END -->
          <form action="HomeServlet?task=productlist" method="post" id="myForm">
						<input type="hidden" name="currentPage" id="currentPage" value="${page.currentPage }">
						<input type="hidden" name="pageSize" id="pageSize" value="${page.pageSize }">
						</form>
        </div>
        
        <!-- END PRODUCT LIST -->
        <!-- BEGIN PAGINATOR -->
        <jsp:include page="paging.jsp">
						<jsp:param value="1" name="flag" />
					</jsp:include>
        <!-- END PAGINATOR -->
      </div>
      <!-- END CONTENT -->
    </div>
    <!-- END SIDEBAR & CONTENT -->
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
     				document.getElementById("shopCount").innerHTML =http.responseText;
     				document.getElementById("shopTotalPrice").innerHTML =http.responseText;
     			}
     			
     		}
     	}
     </script>
<jsp:include page="shop-footer.jsp">
		<jsp:param value="1" name="flag" />
	</jsp:include>
	 
</body>
</html>