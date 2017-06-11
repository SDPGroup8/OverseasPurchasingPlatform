package com.g8.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.g8.model.ProductTypeBean;
import com.g8.service.IProductTypeService;
import com.g8.service.impl.ProductTypeServiceImpl;
import com.g8.utils.WebUtils;

/**
 * Servlet implementation class ProductTypeServlet
 */
@WebServlet("/back/ProductTypeServlet")
public class ProductTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrintWriter out;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IProductTypeService service = new ProductTypeServiceImpl();
		String task = request.getParameter("task");
		//Query the category
		if ("queryBigType".equals(task)) {
			List<ProductTypeBean> list = service.queryBigType();
			request.setAttribute("bigtypelist", list);
			request.getRequestDispatcher("shop-product-category-create.jsp").forward(request, response);
		} 
		//add a new product category
		else if ("add".equals(task)) {
			String typename = request.getParameter("categoryname");
			String bigTypid = request.getParameter("bigtypeid");
			service.add(new ProductTypeBean(typename, WebUtils.parseInt(bigTypid)));
			query(request, response, service);
		} 
		//delete the selected category
		else if ("delete".equals(task)) {
			String typeid = request.getParameter("typeid");
			service.delete(WebUtils.parseInt(typeid));
			query(request, response, service);
		} 
		//query the product category according to the type id
		else if ("queryById".equals(task)) {
			String typeid = request.getParameter("typeid");
			ProductTypeBean type = service.queryById(WebUtils.parseInt(typeid));
			List<ProductTypeBean> list = service.queryBigType();
			request.setAttribute("type", type);
			request.setAttribute("bigtypelist", list);
			request.getRequestDispatcher("shop-product-category-update.jsp").forward(request, response);
		} 
		//modify the category information
		else if ("update".equals(task)) {
			String typeid = request.getParameter("typeid");
			String typename = request.getParameter("typename");
			String bigtypeid = request.getParameter("bigtypeid");
			ProductTypeBean type = new ProductTypeBean(WebUtils.parseInt(typeid), typename,
					WebUtils.parseInt(bigtypeid));
			service.update(type);
			query(request, response, service);
		} 
		//get the category list
		else if ("loadBigType".equals(task)) {
			List<ProductTypeBean> list = service.queryBigType();
			JSONArray json = new JSONArray(list);
			out = response.getWriter();
			out.write(json.toString());
			out.close();
		} 
		//get the sub-category list according to the category
		else if ("loadSmallType".equals(task)) {
			String typeid = request.getParameter("typeid");
			List<ProductTypeBean> list = service.querySmallType(WebUtils.parseInt(typeid));
			JSONArray json = new JSONArray(list);
			PrintWriter out = response.getWriter();
			out.write(json.toString());
			out.close();
		} else {
			query(request, response, service);
		}
	}

	/**
	 * @param request
	 * @param response
	 * @param service
	 * @throws ServletException
	 * @throws IOException
	 */
	private void query(HttpServletRequest request, HttpServletResponse response, IProductTypeService service)
			throws ServletException, IOException {
		List<ProductTypeBean> list = service.query();
		request.setAttribute("list", list);
		request.getRequestDispatcher("shop-product-category-data.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
