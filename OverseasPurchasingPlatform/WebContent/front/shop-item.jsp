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
		<jsp:param value="1" name="flag" />
	</jsp:include>
	<div class="main">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="index.html">Home</a></li>
				<li class="active">Cool green dress with red bell</li>
			</ul>
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row margin-bottom-40">
				<!-- BEGIN SIDEBAR -->
				<div class="sidebar col-md-3 col-sm-5">
					<ul class="list-group margin-bottom-25 sidebar-menu">
						<li class="list-group-item clearfix dropdown active"><a
							href="shop-product-list.html" class="collapsed"> <i
								class="fa fa-angle-right"></i>Baby &amp; Child Care
						</a>
							<ul class="dropdown-menu" style="display: block;">
								<li class="list-group-item dropdown clearfix active"><a
									href="shop-product-list.html" class="collapsed"><i
										class="fa fa-angle-right"></i> For Baby &amp; Child </a></li>
								<li><a href="shop-product-list.html"><i
										class="fa fa-angle-right"></i> For Mum</a></li>
								<li><a href="shop-product-list.html"><i
										class="fa fa-angle-right"></i> Accessories</a></li>
							</ul></li>
						<li class="list-group-item clearfix dropdown active"><a
							href="shop-product-list.html" class="collapsed"> <i
								class="fa fa-angle-right"></i>Natural Health
						</a>
							<ul class="dropdown-menu" style="display: block;">
								<li class="list-group-item dropdown clearfix active"><a
									href="shop-product-list.html" class="collapsed"><i
										class="fa fa-angle-right"></i> Bone &amp; Joint Support </a></li>
								<li><a href="shop-product-list.html"><i
										class="fa fa-angle-right"></i> Brain Health</a></li>
								<li><a href="shop-product-list.html"><i
										class="fa fa-angle-right"></i> Eye Health</a></li>
								<li><a href="shop-product-list.html"><i
										class="fa fa-angle-right"></i> Heart Health</a></li>
								<li><a href="shop-product-list.html"><i
										class="fa fa-angle-right"></i> Diet &amp; Weight Loss</a></li>
								<li class="list-group-item dropdown clearfix active"><a
									href="shop-product-list.html" class="collapsed"><i
										class="fa fa-angle-right"></i> MultiVitamin &amp; Minerals </a></li>
							</ul></li>
						<li class="list-group-item clearfix dropdown active"><a
							href="shop-product-list.html" class="collapsed"> <i
								class="fa fa-angle-right"></i>Beauty
						</a>
							<ul class="dropdown-menu" style="display: block;">
								<li class="list-group-item dropdown clearfix active"><a
									href="shop-product-list.html" class="collapsed"><i
										class="fa fa-angle-right"></i> Skin Care </a></li>
								<li><a href="shop-product-list.html"><i
										class="fa fa-angle-right"></i> Body Care</a></li>
								<li><a href="shop-product-list.html"><i
										class="fa fa-angle-right"></i> Hair Care</a></li>
							</ul></li>
						<li class="list-group-item clearfix dropdown active"><a
							href="shop-product-list.html" class="collapsed"> <i
								class="fa fa-angle-right"></i>Food
						</a>
							<ul class="dropdown-menu" style="display: block;">
								<li class="list-group-item dropdown clearfix active"><a
									href="shop-product-list.html" class="collapsed"><i
										class="fa fa-angle-right"></i> Beverage </a></li>
								<li><a href="shop-product-list.html"><i
										class="fa fa-angle-right"></i> Fruit</a></li>
								<li><a href="shop-product-list.html"><i
										class="fa fa-angle-right"></i> Snack</a></li>
								<li><a href="shop-product-list.html"><i
										class="fa fa-angle-right"></i> Wine</a></li>
							</ul></li>
					</ul>
				</div>
				<!-- END SIDEBAR -->
				<!-- BEGIN CONTENT -->
				<div class="col-md-9 col-sm-7">
					<div class="product-page">
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="product-main-image">
									<img src="assets/pages/img/products/model7.jpg"
										alt="Cool green dress with red bell" class="img-responsive"
										data-BigImgsrc="assets/pages/img/products/model7.jpg">
								</div>
								<div class="product-other-images">
									<a href="assets/pages/img/products/model1.jpg"
										class="fancybox-button" rel="photos-lib"><img
										alt="Berry Lace Dress"
										src="assets/pages/img/products/model1.jpg"></a> <a
										href="assets/pages/img/products/model1.jpg"
										class="fancybox-button" rel="photos-lib"><img
										alt="Berry Lace Dress"
										src="assets/pages/img/products/model1.jpg"></a> <a
										href="assets/pages/img/products/model1.jpg"
										class="fancybox-button" rel="photos-lib"><img
										alt="Berry Lace Dress"
										src="assets/pages/img/products/model1.jpg"></a>
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
								<h1>${com.comname }</h1>
								<div class="price-availability-block clearfix">
									<div class="price">
										<strong><span>$</span>${com.price }</strong>

									</div>
									<div class="availability">
										Availability: <strong>In Stock</strong>
									</div>
								</div>
								<div class="description">
									<p>${com.comdesc }</p>
								</div>
								<div class="product-page-options">
									<div class="product-quantity">
										<input id="product-quantity" type="text" value="1" readonly
											class="form-control input-sm">
									</div>
									  <a href="javaScript:shopCar(${com.comid })" class="btn btn-default add2cart">Add to cart</a>
								</div>

							</div>

						</div>

						<div class="product-page-content">
							<ul id="myTab" class="nav nav-tabs">
								<li><a href="#Description" data-toggle="tab">Description</a></li>
								<li><a href="#Information" data-toggle="tab">Information</a></li>
								<li class="active"><a href="#Reviews" data-toggle="tab">Reviews
										(2)</a></li>
							</ul>
							<div id="myTabContent" class="tab-content">
								<div class="tab-pane fade" id="Description">
									<p>${com.comdesc}</p>
								</div>
								<div class="tab-pane fade" id="Information">
									<table class="datasheet">
										<tr>
											<th colspan="2">Additional features</th>
										</tr>
										<tr>
											<td class="datasheet-features-type">Value 1</td>
											<td>21 cm</td>
										</tr>
										<tr>
											<td class="datasheet-features-type">Value 2</td>
											<td>700 gr.</td>
										</tr>
										<tr>
											<td class="datasheet-features-type">Value 3</td>
											<td>10 person</td>
										</tr>
										<tr>
											<td class="datasheet-features-type">Value 4</td>
											<td>14 cm</td>
										</tr>
										<tr>
											<td class="datasheet-features-type">Value 5</td>
											<td>plastic</td>
										</tr>
									</table>
								</div>
								<div class="tab-pane fade in active" id="Reviews">
									<!--<p>There are no reviews for this product.</p>-->
									<div class="review-item clearfix">
										<div class="review-item-submitted">
											<strong>Bob</strong> <em>30/12/2013 - 07:37</em>
											<div class="rateit" data-rateit-value="5"
												data-rateit-ispreset="true" data-rateit-readonly="true"></div>
										</div>
										<div class="review-item-content">
											<p>Sed velit quam, auctor id semper a, hendrerit eget
												justo. Cum sociis natoque penatibus et magnis dis parturient
												montes, nascetur ridiculus mus. Duis vel arcu pulvinar dolor
												tempus feugiat id in orci. Phasellus sed erat leo. Donec
												luctus, justo eget ultricies tristique, enim mauris bibendum
												orci, a sodales lectus purus ut lorem.</p>
										</div>
									</div>
									<div class="review-item clearfix">
										<div class="review-item-submitted">
											<strong>Mary</strong> <em>13/12/2013 - 17:49</em>
											<div class="rateit" data-rateit-value="2.5"
												data-rateit-ispreset="true" data-rateit-readonly="true"></div>
										</div>
										<div class="review-item-content">
											<p>Sed velit quam, auctor id semper a, hendrerit eget
												justo. Cum sociis natoque penatibus et magnis dis parturient
												montes, nascetur ridiculus mus. Duis vel arcu pulvinar dolor
												tempus feugiat id in orci. Phasellus sed erat leo. Donec
												luctus, justo eget ultricies tristique, enim mauris bibendum
												orci, a sodales lectus purus ut lorem.</p>
										</div>
									</div>

									<!-- BEGIN FORM-->
									<form action="#" class="reviews-form" role="form">
										<h2>Write a review</h2>
										<div class="form-group">
											<label for="name">Name <span class="require">*</span></label>
											<input type="text" class="form-control" id="name">
										</div>
										<div class="form-group">
											<label for="email">Email</label> <input type="text"
												class="form-control" id="email">
										</div>
										<div class="form-group">
											<label for="review">Review <span class="require">*</span></label>
											<textarea class="form-control" rows="8" id="review"></textarea>
										</div>
										<div class="form-group">
											<label for="email">Rating</label> <input type="range"
												value="4" step="0.25" id="backing5">
											<div class="rateit" data-rateit-backingfld="#backing5"
												data-rateit-resetable="false" data-rateit-ispreset="true"
												data-rateit-min="0" data-rateit-max="5"></div>
										</div>
										<div class="padding-top-20">
											<button type="submit" class="btn btn-primary">Send</button>
										</div>
									</form>
									<!-- END FORM-->
								</div>
							</div>
						</div>


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
</body>
</html>