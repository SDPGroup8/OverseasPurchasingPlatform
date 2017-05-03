package com.g8.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.g8.model.ProductBean;
import com.g8.service.IProductService;
import com.g8.service.impl.ProductService;
import com.g8.utils.ShopCar;
import com.g8.utils.WebUtils;


/**
 * Servlet implementation class ShopCarServlet
 */
@WebServlet("/front/ShopCarServlet")
public class ShopCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IProductService service = new ProductService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String task = request.getParameter("task");
		HttpSession session = request.getSession();
		//获取购物车对象
		ShopCar car = ShopCar.getShopCar(session);
		if("clear".equals(task)){
			//表示清空购物车
			car.clear();
			response.sendRedirect("shop-shoppingcart.jsp");
		}else if("delete".equals(task)){
			//获取请求提交的商品编号
			String comid = request.getParameter("comid");
			car.delete(WebUtils.parseInt(comid));
			response.sendRedirect("shop-shoppingcart.jsp");
		}else if("update".equals(task)){
			//获取请求提交的商品编号
			String comid = request.getParameter("comid");
			String num = request.getParameter("num");
			
			car.update(WebUtils.parseInt(comid), WebUtils.parseInt(num));
			response.sendRedirect("shop-shoppingcart.jsp");
		}
		else{
		//获取请求提交的商品编号
		String comid = request.getParameter("comid");
		//往购物车中添加商品信息
		ProductBean com = service.queryById(WebUtils.parseInt(comid));
		car.add(com);
		//服务器给出响应
		PrintWriter out = response.getWriter();
		//响应的信息不要是int类型
    	out.write(car.getCount()+"");
		out.close();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
