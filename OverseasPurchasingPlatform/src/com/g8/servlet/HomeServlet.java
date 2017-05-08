package com.g8.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.g8.model.ProductBean;
import com.g8.service.IProductService;
import com.g8.service.IUserService;
import com.g8.service.impl.ProductService;
import com.g8.service.impl.UserServiceImpl;
import com.g8.utils.BasePage;
import com.g8.utils.WebUtils;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/front/HomeServlet")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IUserService userService = new UserServiceImpl();
	IProductService proservice = new ProductService();
	HttpSession session;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String task = request.getParameter("task");
		//show prodcut list
		if ("productlist".equals(task)) {
			int currentPage = WebUtils.getCurrentPage(request, 1);
			//default page size
			int pageSize = WebUtils.getPageSize(request, 6);
			String comname = request.getParameter("comname");
			ProductBean product = new ProductBean();
			//if the search text filed is not empty
			if(!WebUtils.isEmpty(comname)){
				product.setComname(comname);
			}
			BasePage<ProductBean> page = new BasePage<>(currentPage, pageSize);
			page = proservice.queryByPage(product, page);
			request.setAttribute("page", page);
			request.setAttribute("totalPage", page.getTotalPage());
			request.setAttribute("comname", comname);
			request.getRequestDispatcher("shop-product-list.jsp").forward(request, response);
		}
		//return to the home page of the website
		else if("home".equals(task)){
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		//update user's personal information
		else if("userUpdate".equals(task)){
			String userName = request.getParameter("username");
			String firstName = request.getParameter("first_name");
			String lastName = request.getParameter("last_name");
			String email = request.getParameter("mail");
			String phoneno = request.getParameter("phone");
			String postalcode = request.getParameter("postalcode");
			String address = request.getParameter("address");
			request.getRequestDispatcher("shop-account.jsp").forward(request, response);
		}
		//jump to the shop-item page according to the id of the selected product
		else{
			String comid = request.getParameter("comid");
			ProductBean product = new ProductBean();
			product = proservice.queryById(WebUtils.parseInt(comid));
			request.setAttribute("com", product);
			request.getRequestDispatcher("shop-item.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
