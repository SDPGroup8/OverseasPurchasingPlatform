<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <!-- BEGIN SIDEBAR & CONTENT -->
    <div class="row margin-bottom-40">
      <!-- BEGIN CONTENT -->
      <div class="col-md-12 col-sm-12">
        <h1>Shopping cart</h1>
        <div class="goods-page">
          <div class="goods-data clearfix">
            <div class="table-wrapper-responsive">
            <table summary="Shopping cart">
              <tr>
                <th class="goods-page-image">Image</th>
                <th class="goods-page-description">Description</th>
                <th class="goods-page-ref-no">Ref No</th>
                <th class="goods-page-quantity">Quantity</th>
                <th class="goods-page-price">Unit price</th>
                <th class="goods-page-total" colspan="2">Total</th>
              </tr>
              <c:forEach var="com" items="${SESSION_SHOPCAR.list }">
              <tr>
                <td class="goods-page-image">
                  <a href="javascript:;"><img src="${com.pic }" alt="Berry Lace Dress"></a>
                </td>
                <td class="goods-page-description">
                  <h3><a href="javascript:;">${com.comname }</a></h3>
                  <em>More info is here</em>
                </td>
                <td class="goods-page-ref-no">
                  refno${com.comid }
                </td>
                <td class="goods-page-quantity">
                  <div class="product-quantity">
                      <input id="product-quantity" type="text" value="${com.shopNum }" onChange="onUpdateNum(${com.comid},this.value);"  class="form-control input-sm">
                  </div>
                </td>
                <td class="goods-page-price">
                  <strong><span>$</span>${com.price}</strong>
                </td>
                <td class="goods-page-total">
                  <strong><span>$</span>${ com.shopNum*com.price}</strong>
                </td>
                <td class="del-goods-col">
                  <a class="del-goods" href="javascript:delGoods(${ com.comid});">&nbsp;</a>
                </td>
              </tr>
              </c:forEach>
             
            </table>
            </div>

            <div class="shopping-total">
              <ul>
                <li>
                  <em>Sub total</em>
                  <strong class="price"><span>$</span>${ (SESSION_SHOPCAR.count == null || SESSION_SHOPCAR.count ==0) ? 0.00 : SESSION_SHOPCAR.totalPrice}</strong>
                </li>
                <li>
                  <em>Shipping cost</em>
                  <strong class="price"><span>$</span>${ (SESSION_SHOPCAR.count == null || SESSION_SHOPCAR.count ==0) ? 0.00 : 3.00 }</strong>
                </li>
                <li class="shopping-total-price">
                  <em>Total</em>
                  <strong class="price"><span>$</span>${ (SESSION_SHOPCAR.count == null || SESSION_SHOPCAR.count ==0) ? 0.00 : SESSION_SHOPCAR.totalPrice+3.0}</strong>
                </li>
              </ul>
            </div>
          </div>
          <a href="HomeServlet?task=home"><button class="btn btn-default" type="button">Continue shopping <i class="fa fa-shopping-cart"></i></button></a>
          <a href="filterpage/shop-checkout.jsp" class="btn btn-primary">Checkout</a> <i class="fa fa-check"></i>
        </div>
      </div>
      <!-- END CONTENT -->
    </div>
    <!-- END SIDEBAR & CONTENT -->
  </div>
</div>
	<script type="text/javascript">
			function delGoods(comid){
				// Remove items in the shopping cart
				location.href="ShopCarServlet?task=delete&comid="+comid;
			}
			// Change the number of purchases based on comid
			function onUpdateNum(comid,num){
				location.href="ShopCarServlet?task=update&comid="+comid+"&num="+num;
			}
		</script>
<jsp:include page="shop-footer.jsp">
		<jsp:param value="1" name="flag" />
	</jsp:include>
</body>
</html>