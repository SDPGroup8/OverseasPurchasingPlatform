package com.g8.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.g8.model.AdminBean;
import com.g8.service.IAdminService;
import com.g8.service.impl.AdminServiceImpl;

/**
 * Servlet implementation class BackLoginServlet
 */
@WebServlet("/back/BackLoginServlet")
public class BackLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IAdminService service = new AdminServiceImpl();
	private HttpSession session;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Get the data submitted by the user
		String adminName = request.getParameter("adminName");
		String apassword = request.getParameter("apassword");
		//Through the login method in the service to verify whether the successful login
		AdminBean admin = service.login(adminName, apassword);
		session = request.getSession();
		//According to the results of the verification to make a different response
		if(admin != null){
			//successful login
			//The current login admin information stored in the session scope, easy to use the login admin's information at any time
			session.setAttribute("BACK_ADMIN", admin);
			request.getRequestDispatcher("../front/index.jsp").forward(request, response);
		}else{
			//login failed
			session.setAttribute("LOGIN_ERROR", " (Wrong admin name or password)");
			response.sendRedirect("shop-admin-login.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
