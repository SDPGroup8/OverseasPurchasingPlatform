<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
	<jsp:include page="../shop-header.jsp">
		<jsp:param value="1" name="flag" />
	</jsp:include>
    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li class="active">Order Detail</li>
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
            <h1>Order Detail</h1>
            <div class="goods-page">
              <div class="goods-data clearfix">
                <div class="table-wrapper-responsive">
                <table summary="Shopping cart">
                  <tr>
                    <th class="goods-page-description">Order #: ${order.orderid }</th>
                    <th class="goods-page-stock">Date: ${order.orderdate }</th>
                  </tr>
                  <tr>               
                    <td class="goods-page-description">
                      <p>Name:${order.username }</p>
                      <p>Phone:${order.phoneno }</p>
                      <p>Ship To:</p>
                      <p>${order.address }</p>
                      <p>${order.city }</p>
                      <p>${order.country }</p>
                      <p>${order.postalcode }</p>
                    </td>
                    <td class="goods-page-price">
                      <strong><span>NZ$</span>${order.totalprice }</strong>
                    </td>
                  </tr>
             
                </table>
                </div>             
              </div>
            </div>            
            <div class="goods-page">
              <div class="goods-data clearfix">
                <div class="table-wrapper-responsive">
                <table summary="Shopping cart">
                  <tr>
                    <th class="goods-page-image">Image</th>
                    <th class="goods-page-description">Product</th>
                    <th class="goods-page-price">Price</th>
                    <th class="goods-page-stock">Quantity</th>
                    <th class="goods-page-price">Total</th>
                  </tr>
                  
                  <c:forEach var="detail" items="${detaillist }">
                  <tr>
                    <td class="goods-page-image">
                      <a href="javascript:;"><img src="assets/pages/img/products/model1.jpg" alt="Berry Lace Dress"></a>
                    </td>                    
                    <td class="goods-page-description">
                      <p>${detail.productname }</p>
                    </td>
                    <td class="goods-page-price">
                      <p>NZ$ ${detail.price }</p>
                    </td>                    
                    <td class="goods-page-stock">
                      <p>${detail.buynum }</p>
                    </td>
                    <td class="goods-page-price">
                      <p>NZ$ ${detail.buynum*detail.price }</p>
                    </td>
                  </tr>
                  </c:forEach>
                </table>
                </div>
                <div class="shopping-total">
                  <ul>
                    <li>
                      <em>Sub total</em>
                      <strong class="price"><span>NZ$</span>${order.totalprice }</strong>
                    </li>
                    <li>
                      <em>Shipping cost</em>
                      <strong class="price"><span>NZ$</span>3.00</strong>
                    </li>
                    <li class="shopping-total-price">
                      <em>Total</em>
                      <strong class="price"><span>NZ$</span>${order.totalprice+3 }</strong>
                    </li>
                  </ul>
                </div>                
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>
<jsp:include page="../shop-footer.jsp">
		<jsp:param value="1" name="flag" />
	</jsp:include>
