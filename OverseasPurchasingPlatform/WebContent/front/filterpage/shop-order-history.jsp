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
            <li class="active">Order History</li>
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
            <h1>Order History</h1>
            <div class="goods-page">
              <div class="goods-data clearfix">
                <div class="table-wrapper-responsive">
                <table summary="Shopping cart">
                  <tr>
                    <th class="goods-page-stock">Order #</th>
                    <th class="goods-page-stock">Status</th>
                    <th class="goods-page-description">Customer</th>
                    <th class="goods-page-stock">Date</th>
                    <th class="goods-page-price" colspan="2">Total</th>
                  </tr>
                   <c:forEach var="order" items="${orderlist }">
                  <tr>
                    <td class="goods-page-stock">
                      <p>#${order.orderid }</p>
                    </td>
                    <td class="goods-page-stock">
                      <p>${order.status }</p>
                    </td>                    
                    <td class="goods-page-description">
                      <p>${order.username }</p>
                      <p>${order.email }</p>
                    </td>
                    <td class="goods-page-stock">
                      <p>${order.orderdate }</p>
                    </td>
                    <td class="goods-page-price">
                      <strong><span>NZ$</span>${order.totalprice }</strong>
                    </td>
                  </tr>
               	</c:forEach>
                </table>
                </div>
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>
