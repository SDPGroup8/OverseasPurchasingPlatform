package com.g8.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.g8.model.UserBean;
import com.g8.service.IUserService;
import com.g8.service.impl.UserServiceImpl;

/**
 * Servlet implementation class FrontRegisterServlet
 */
@WebServlet("/front/FrontRegisterServlet")
public class FrontRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;
	IUserService service = new UserServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		String email = request.getParameter("mail");
		String phoneno = request.getParameter("phoneno");
		String password = request.getParameter("password_login");
		String passwordConf = request.getParameter("password_comfirm");
				
		UserBean user = new UserBean();
		user.setFirstname(firstName);
		user.setLastname(lastName);
		user.setEmail(email);
		//The user name and email address are the same
		user.setUsername(email);
		user.setPhoneno(phoneno);
		user.setPassword(passwordConf);
		if(service.userNameCheck(email)!=null){
			//request.getRequestDispatcher("FrontRegister.jsp").forward(request, response);
			PrintWriter out = response.getWriter();
			out.print(
					"<script  type='text/javascript'> alert('Sorry! The input mailbox has been registered, please try another email.');window.location.href='FrontRegister.jsp'</script>");
		}else{
		service.register(user);
		request.getRequestDispatcher("shop-login.jsp").forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
