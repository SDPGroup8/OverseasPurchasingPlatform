package com.g8.servlet;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.g8.model.ProductBean;
import com.g8.model.ProductTypeBean;
import com.g8.service.IProductService;
import com.g8.service.impl.ProductService;
import com.g8.utils.BasePage;
import com.g8.utils.WebUtils;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/back/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IProductService service = new ProductService();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//get the value of the task
		String task = request.getParameter("task");
		//Add new product information
		if ("add".equals(task)) {
			// The uploaded file is saved to the server
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			try {
				//Parse the request
				List<FileItem> list = upload.parseRequest(request);
				//Instantiate a Product object to store user-submitted information
				ProductBean product = new ProductBean();
				for (FileItem fi : list) {
					if (fi.isFormField()) {
						// Normal Text
						// Gets the value of the tag's name attribute
						String filedname = fi.getFieldName();
						// Gets the corresponding value
						String value = fi.getString("utf-8");
						//product name
						if ("comname".equals(filedname)) {
							product.setComname(value.toLowerCase());
						} 
						//product price
						else if ("price".equals(filedname)) {
							product.setPrice(WebUtils.parseDouble(value));
						} 
						//the quantity of the product
						else if ("amount".equals(filedname)) {
							product.setQuantity(WebUtils.parseInt(value));
						} 
						//the category id of the product
						else if ("smalltypeid".equals(filedname)) {
							product.setSmalltypeid(WebUtils.parseInt(value));
						} 
						//the description of the product
						else if ("description".equals(filedname)) {
							product.setComdesc(value);
						}
					} 
					    // File
						else {
					    //get file name
						String fileName = fi.getName();
						//if the user has uploaded an image
						if (!WebUtils.isEmpty(fileName)) {
							//set the file name to the product object
							product.setPic(fileName);
							// You can get the root directory of the upload folder
							String path = this.getServletContext().getRealPath("/upload");
							fi.write(new File(path + "/" + fileName));
						}
						// if the user did not upload an image
						else{
							product.setPic("");
						}
					}
				}
				service.add(product);
				query(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} 
		//delete selected product
		else if("delete".equals(task)){
			String comid = request.getParameter("comid");
			service.delete(WebUtils.parseInt(comid));
			query(request, response);
		} 
		//query the product according to the product id
		else if("queryById".equals(task)){
			String comid = request.getParameter("comid");
			ProductBean product = service.queryById(WebUtils.parseInt(comid));
			ProductTypeBean type = service.queryTypeName(product.getSmalltypeid());
			request.setAttribute("product", product);
			request.setAttribute("type", type);
			request.getRequestDispatcher("shop-product-list-update.jsp?comid="+comid).forward(request, response);
			
		} 
		//modify the product information
		else if("update".equals(task)){
			String comid = request.getParameter("comid");
			// The uploaded file is saved to the server
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			try {
				List<FileItem> list = upload.parseRequest(request);
				ProductBean product = service.queryById(WebUtils.parseInt(comid));
				for (FileItem fi : list) {
					if (fi.isFormField()) {
						// Normal Text
						// Gets the value of the tag's name attribute
						String filedname = fi.getFieldName();
						// Gets the corresponding value
						String value = fi.getString("utf-8");
						if ("comname".equals(filedname)) {
							product.setComname(value.toLowerCase());
						} else if ("price".equals(filedname)) {
							product.setPrice(WebUtils.parseDouble(value));
						} else if ("amount".equals(filedname)) {
							product.setQuantity(WebUtils.parseInt(value));
						} else if ("smalltypeid".equals(filedname)) {
							product.setSmalltypeid(WebUtils.parseInt(value));
						} else if ("description".equals(filedname)) {
							product.setComdesc(value);
						}
					} else {
						// File
						String fileName = fi.getName();
						if (!WebUtils.isEmpty(fileName)) {
							product.setPic(fileName);
							// You can get the root directory of the upload
							// folder
							String path = this.getServletContext().getRealPath("/upload");
							fi.write(new File(path + "/" + fileName));
						}else{
							product.setPic("");
						}
					}
				}
				service.update(product);
				query(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
			else {
			query(request, response);
		}
	}

	/**
	 * Display the product information on the page
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Get paging parameters
		int currentPage = WebUtils.getCurrentPage(request, 1);
		int pageSize = WebUtils.getPageSize(request, 5);
		// Get the conditions for the user's submitted query
		String productname = request.getParameter("productname");
		ProductBean product = new ProductBean();
		if (!WebUtils.isEmpty(productname)) {
			//indicates that the user wants to find the data by product name
			product.setComname(productname);
		}
		//According to the paging parameters query page data -> service -> Dao ---> database operation
		BasePage<ProductBean> page = new BasePage<>(currentPage, pageSize);
		page = service.queryByPage(product, page);
		//Put the relevant data in the request scope
		request.setAttribute("page", page);
		request.setAttribute("productname", productname);
		request.setAttribute("totalPage", page.getTotalPage());
		//Jump to the corresponding jsp page
		request.getRequestDispatcher("shop-product-list-data.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
