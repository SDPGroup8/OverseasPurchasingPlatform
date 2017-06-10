package com.g8.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.g8.dao.IOrderDao;
import com.g8.model.OrderBean;
import com.g8.model.OrderDetailBean;
import com.g8.model.ProductBean;
import com.g8.model.UserBean;
import com.g8.service.IOrderService;
import com.g8.service.impl.OrderServiceImpl;
import com.g8.utils.BasePage;
import com.g8.utils.ShopCar;
import com.g8.utils.WebUtils;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/front/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IOrderService service = new OrderServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String task = request.getParameter("task");
		if ("query".equals(task)) {
			int currentPage = WebUtils.getCurrentPage(request, 1);
			int pageSize = WebUtils.getPageSize(request, 10);
			HttpSession session = request.getSession();
			UserBean user = (UserBean) session.getAttribute("user");
			int userId = user.getUserid();

		} else if ("add".equals(task)) {
			//first name of the user 
			String firstname = request.getParameter("fistname");
			//last name of the user
			String lastname = request.getParameter("lastname");
			//email of the user
			String email = request.getParameter("email");
			//telephone of the user
			String telephone = request.getParameter("telephone");
			//postalcode of the user
			String postalcode = request.getParameter("postalcode");
			//current address of the user
			String address = request.getParameter("address");
			//current city of the user
			String city = request.getParameter("city");
			//current country of the user
			String country = request.getParameter("country");
			//payment method
			String paymentmethod = request.getParameter("paymentmethod");
			HttpSession session = request.getSession();
			//Get the shop car object from the sessions
			ShopCar shopCar = (ShopCar) session.getAttribute("SESSION_SHOPCAR");
			double totalPrice = shopCar.getTotalPrice();
			//Get the product list from the shop car
			List<ProductBean> list = shopCar.getList();
			List<OrderDetailBean> detailList = new ArrayList<>();
			//Put the product information into the oder detail
			for (ProductBean product : list) {
				OrderDetailBean detail = new OrderDetailBean();
				detail.setProductid(product.getComid());
				detail.setBuynum(product.getShopNum());
				detail.setProductname(product.getComname());
				detail.setPrice(product.getPrice());
				detailList.add(detail);
			}
			UserBean user = (UserBean) session.getAttribute("user");
			int userId = user.getUserid();
			OrderBean order = new OrderBean();
			order.setAddress(address);// Shipping address
			order.setEmail(email);// email
			order.setPhoneno(telephone);// phone number
			order.setPostalcode(postalcode);// postal code
			order.setUsername(lastname + " " + firstname);// user name
			order.setList(detailList);
			order.setUserid(userId);
			order.setCity(city);// city
			order.setCountry(country);// country
			order.setPaytype(paymentmethod);// payment method
			order.setTotalprice(totalPrice);// total price of the products
			order.setReceivedtype("Flat Shipping Rate");// received type
			String orderId = new Date().getTime() + "";
			order.setOrderid(orderId);//order id
			//Add the order
			service.add(order);
			//Clear the shop car
			shopCar.clear();
			response.sendRedirect("OrderServlet?task=queryById&orderid=" + order.getOrderid());
		}  /* Get the order detail according to the order id */
			else if ("queryById".equals(task)) {
			String orderId = request.getParameter("orderid");
			OrderBean order = service.queryById(orderId);
			request.setAttribute("order", order);
			request.setAttribute("detaillist", order.getList());
			request.getRequestDispatcher("../front/filterpage/shop-order-detail.jsp").forward(request, response);
		}   /* Get the order history according to the current user */
			else if ("history".equals(task)) {
			HttpSession session = request.getSession();
			UserBean user = (UserBean) session.getAttribute("user");
			/* If the user has not login yet */
			if (user != null) {
				int userId = user.getUserid();
				List<OrderBean> list = new ArrayList<>();
				OrderBean order = new OrderBean();
				list = service.query(order, userId);
				request.setAttribute("orderlist", list);
				request.getRequestDispatcher("../front/filterpage/shop-order-history.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("../front/shop-login.jsp").forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
