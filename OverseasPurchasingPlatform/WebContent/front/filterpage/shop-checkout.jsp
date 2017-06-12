<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript">
function inFirstName() {
	var fcheck = false;
	first_name_mess.innerHTML = "Please input your first name";
	first_name_mess.style.visibility = "visible";
}
function outFirstName() {
	fm = f3.fistname.value;
	if (fm == null || fm== undefined || fm == "") {
		fcheck = false;
		first_name_mess.style.visibility = "hidden";
		f3.first_name.style.border = "";
		return;
	}
	reg = /^[a-zA-Z\-]+$/;
	if (reg.test(fm)) {
		first_name_mess.innerHTML = "";
		f3.fistname.style.color = "black";
		f3.fistname.style.border = "";
		fcheck = true;
		return;
	} else {
		first_name_mess.innerHTML = "Wrong first name";
		f3.fistname.style.color = "red";
		f3.fistname.style.border = "1px solid red";
		fcheck = false;
		return;
	}
}
function inLastName() {
	last_name_mess.innerHTML = "Please input your last name";
	last_name_mess.style.visibility = "visible";
	var lcheck = false;
}
function outLastName() {
	lm = f3.lastname.value;
	if (lm == null || lm== undefined || lm == "") {
		last_name_mess.style.visibility = "hidden";
		f3.lastname.style.border = "";
		lcheck = false;
		return;
	}
	reg = /^[a-zA-Z\-]+$/;
	if (reg.test(lm)) {
		last_name_mess.innerHTML = "";
		f3.lastname.style.color = "black";
		f3.lastname.style.border = "";
		lcheck = true;
		return;
	} else {
		last_name_mess.innerHTML = "Wrong last name";
		f3.lastname.style.color = "red";
		f3.lastname.style.border = "1px solid red";
		lcheck = false;
		return;
	}
}
function inMail() {
	var mcheck = false;
	mail_mess.innerHTML = "Please input your common used e-mail";
	mail_mess.style.visibility = "visible";
}
function outMail() {
	mm = f3.email.value;
	if (mm == null || mm== undefined || mm == "") {
		mail_mess.style.visibility = "hidden";
		f3.email.style.border = "";
		mcheck = false;
		return;
	}
	reg = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
	if (reg.test(mm)) {
		mail_mess.innerHTML = "";
		f3.email.style.color = "black";
		f3.email.style.border = "";
		mcheck = true;
		return;
	} else {
		mail_mess.innerHTML = "Wrong email pattern";
		f3.email.style.color = "red";
		f3.email.style.border = "1px solid red";
		mcheck = false;
		return;
	}

}
function inPhone() {
	var pcheck = false;
	phone_mess.innerHTML = "Please input your common used phone number. e.g.(022) 123-4567";
	phone_mess.style.visibility = "visible";
}
function outPhone() {
	pm = f3.telephone.value;
	if (pm == null || pm == undefined || pm == "") {
		phone_mess.style.visibility = "hidden";
		f3.telephones.style.border = "";
		pcheck = false;
		return;
	}
	reg = /^\(\d\d\d\) \d\d\d\-\d\d\d\d$/;
	if (reg.test(pm)) {
		phone_mess.innerHTML = "";
		f3.telephone.style.color = "black";
		f3.telephone.style.border = "";
		pcheck = true;
		return;
	} else {
		phone_mess.innerHTML = "Wrong phone pattern";
		f3.telephone.style.color = "red";
		f3.telephone.style.border = "1px solid red";
		pcheck = false;
		return;
	}

}
function inAddress() {
	address_mess.innerHTML = "Please enter your current address";
	address_mess.style.visibility = "visible";
}
function outAddress(){
	ad = f3.address.value;
	if (pm == null || pm == undefined || pm == ""){
	adcheck = false;
	return;
	}else{
	address_mess.style.visibility = "hidden";
	adcheck = true;
	return;
	}
}
function inCity() {
	city_mess.innerHTML = "Please enter your current city";
	city_mess.style.visibility = "visible";
}
function outCity() {
	city_mess.innerHTML = "Please enter your current city";
	city_mess.style.visibility = "hidden";
}
function inCountry() {
	country_mess.innerHTML = "Please enter your current country";
	country_mess.style.visibility = "visible";
}
function outCountry() {
	country_mess.style.visibility = "hidden";
}
function inPostCode() {
	var pccheck = false;
	postalcode_mess.innerHTML = "Please enter the zip code for your region";
	postalcode_mess.style.visibility = "visible";
}
function outPostCode() {
	pc = f3.postalcode.value;
	if (pc == null || pc == undefined || pc == "") {
		postalcode_mess.style.visibility = "hidden";
		f3.postalcode.style.border = "";
		pccheck = false;
		return;
	}
	reg = /^[0-9]+$/;
	if (reg.test(pc)) {
		postalcode_mess.innerHTML = "";
		f3.postalcode.style.color = "black";
		f3.postalcode.style.border = "";
		pccheck = true;
		return;
	} else {
		postalcode_mess.innerHTML = "Wrong postalcode pattern";
		f3.postalcode.style.color = "red";
		f3.postalcode.style.border = "1px solid red";
		pccheck = false;
		return;
	}
}
function validate_info() {
	if("${SESSION_SHOPCAR.totalPrice+3.0}"<=3){
		alert("You should buy something first");
		return false;
	}
	if (fcheck && lcheck && pcheck && pacheck && rpcheck && pccheck && adcheck) {
		return true;
	} else {
		alert("The information has errors, please correct and submit.");
		return false;
	}
}
</script>
	<jsp:include page="shop-header.jsp">
		<jsp:param value="1" name="flag" />
	</jsp:include>
<div class="main">
  <div class="container">
    <ul class="breadcrumb">
        <li><a href="index.html">Home</a></li>
        <li class="active">Checkout</li>
    </ul>
  <form id="f3" role="form" action = "../OrderServlet?task=add" method = "post" onsubmit="return validate_info();">
    <!-- BEGIN SIDEBAR & CONTENT -->
    <div class="row margin-bottom-40">
      <!-- BEGIN CONTENT -->
      <div class="col-md-12 col-sm-12">
        <h1>Checkout</h1>
        <!-- BEGIN CHECKOUT PAGE -->
        <div class="panel-group checkout-page accordion scrollable" id="checkout-page">
          <!-- BEGIN SHIPPING ADDRESS -->
          <div id="shipping-address" class="panel panel-default">
            <div class="panel-heading">
              <h2 class="panel-title">
                <a data-toggle="collapse" data-parent="#checkout-page" href="#shipping-address-content" class="accordion-toggle">
                  Step 1: Delivery Details
                </a>
              </h2>
            </div>
            <div id="shipping-address-content" class="panel-collapse collapse">
              <div class="panel-body row">
                <div class="col-md-6 col-sm-6">
                  <div class="form-group">
                    <label for="firstname-dd">First Name <span class="require">*</span></label>
                    <input type="text" name="fistname" id="firstname-dd" class="form-control" onFocus="inFirstName()"
					onBlur="outFirstName()">
                    <div id="first_name_mess" class="clr"></div>
                  </div>
                  <div class="form-group">
                    <label for="lastname-dd">Last Name <span class="require">*</span></label>
                    <input type="text" name="lastname" id="lastname-dd" class="form-control" onFocus="inLastName()" 
                    onBlur="outLastName()">
					<div id="last_name_mess" class="clr"></div>
                  </div>
                  <div class="form-group">
                    <label for="email-dd">E-Mail <span class="require">*</span></label>
                    <input type="text" name="email" id="email-dd" class="form-control" onFocus="inMail()"
 					onBlur="outMail()" />
					<div id="mail_mess" class="clr"></div>
                  </div>
                  <div class="form-group">
                    <label for="telephone-dd">Telephone <span class="require">*</span></label>
                    <input type="text" name="telephone" id="telephone-dd" class="form-control" onFocus="inPhone()" 
                    onBlur="outPhone()">
					<div id="phone_mess" class="clr"></div>
                  </div>
                 
                </div>
                <div class="col-md-6 col-sm-6">
                  <div class="form-group">
                    <label for="address1-dd">Address <span class="require">*</span></label>
                    <input type="text" name="address" id="address1-dd" onFocus="inAddress()" class="form-control"
                    onBlur="outAddress()">
					<div id="address_mess" class="clr"></div>
                  </div>
             
                  <div class="form-group">
                    <label for="city-dd">City <span class="require">*</span></label>
                    <input type="text" name="city" id="city-dd" onFocus="inCity()" class="form-control"
                    onBlur="outCity()">
					<div id="city_mess" class="clr"></div>
                  </div>
                  <div class="form-group">
                    <label for="post-code-dd">Post Code <span class="require">*</span></label>
                    <input type="text" name="postalcode" id="post-code-dd" onFocus="inPostCode()"
					onBlur="outPostCode()" class="form-control">
					<div id="postalcode_mess" class="clr"></div>
                  </div>
                  <div class="form-group">
                    <label for="country-dd">Country <span class="require">*</span></label>
                     <input type="text" name="country" id="country" onFocus="inCountry()" class="form-control"
                     onBlur="outCountry()">
					<div id="country_mess" class="clr"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- END SHIPPING ADDRESS -->

          <!-- BEGIN PAYMENT METHOD -->
          <div id="payment-method" class="panel panel-default">
            <div class="panel-heading">
              <h2 class="panel-title">
                <a data-toggle="collapse" data-parent="#checkout-page" href="#payment-method-content" class="accordion-toggle">
                  Step 2: Payment Method
                </a>
              </h2>
            </div>
            <div id="payment-method-content" class="panel-collapse collapse">
              <div class="panel-body row">
                <div class="col-md-12">
                  <p>Please select the preferred payment method to use on this order.</p>
                  <div class="radio-list">
                    <label>
                      <input type="radio" name="paymentmethod" checked="true" value="CashOnDelivery"> Cash On Delivery
                    </label>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- END PAYMENT METHOD -->

          <!-- BEGIN CONFIRM -->
          <div id="confirm" class="panel panel-default">
            <div class="panel-heading">
              <h2 class="panel-title">
                <a data-toggle="collapse" data-parent="#checkout-page" href="#confirm-content" class="accordion-toggle">
                  Step 3: Confirm Order
                </a>
              </h2>
            </div>
            <div id="confirm-content" class="panel-collapse collapse">
              <div class="panel-body row">
                <div class="col-md-12 clearfix">
                  <div class="table-wrapper-responsive">
                  <table>
                    <tr>
                      <th class="checkout-image">Image</th>
                      <th class="checkout-description">Description</th>
                      <th class="checkout-model">RefNo</th>
                      <th class="checkout-quantity">Quantity</th>
                      <th class="checkout-price">Price</th>
                      <th class="checkout-total">Total</th>
                    </tr>
                     <c:forEach var="com" items="${SESSION_SHOPCAR.list }">
              <tr>
                <td class="goods-page-image">
                  <a href="javascript:;"><img src="../${com.pic }" alt="Berry Lace Dress"></a>
                </td>
                <td class="goods-page-description">
                  <h3><a href="javascript:;">${com.comname }</a></h3>
                  <em>More info is here</em>
                </td>
                <td class="goods-page-ref-no">
                  refno${com.comid }
                </td>
                  <td class="checkout-quantity">${com.shopNum }</td>     
                <td class="goods-page-price">
                  <strong><span>$</span>${com.price}</strong>
                </td>
                <td class="goods-page-total">
                  <strong><span>$</span>${ com.shopNum*com.price}</strong>
                </td>
              </tr>
              </c:forEach>
                  </table>
                  </div>
                  <div class="checkout-total-block">
                    <ul>
                      <li>
                        <em>Sub total</em>
                        <strong class="price"><span>$</span>${ SESSION_SHOPCAR.totalPrice}</strong>
                      </li>
                      <li>
                        <em>Shipping cost</em>
                        <strong class="price"><span>$</span>3.00</strong>
                      </li>
                      <li class="checkout-total-price">
                        <em>Total</em>
                        <strong class="price"><span>$</span>${ SESSION_SHOPCAR.totalPrice+3.0}</strong>
                      </li>
                    </ul>
                  </div>
                  <div class="clearfix"></div>
                  <button class="btn btn-primary pull-right" type="submit" id="button-confirm">Confirm Order</button>
                  <button type="button" class="btn btn-default pull-right margin-right-20">Cancel</button>
                </div>
              </div>
            </div>
          </div>
          <!-- END CONFIRM -->
        </div>
        <!-- END CHECKOUT PAGE -->
      </div>
      <!-- END CONTENT -->
    </div>
    <!-- END SIDEBAR & CONTENT -->
    </form>
  </div>
</div>

	<jsp:include page="shop-footer.jsp">
		<jsp:param value="1" name="flag" />
	</jsp:include>