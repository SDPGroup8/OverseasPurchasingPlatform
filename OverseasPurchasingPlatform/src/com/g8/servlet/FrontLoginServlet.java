package com.g8.servlet;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class FrontLoginServlet
 */
@WebServlet("/front/FrontLoginServlet")
public class FrontLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IUserService service = new UserServiceImpl();
	private HttpSession session;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		session = request.getSession();
		String task = request.getParameter("task");
		String rand = (String) session.getAttribute("rand");
		if ("login".equals(task)) {
			// 1.Get the data submitted by the user
			String userName = request.getParameter("email-login");
			String password = request.getParameter("password-login");
			String code = request.getParameter("code");
			// 2.Through the login method in the service to verify whether the
			// successful login
			UserBean user = service.login(userName, password);
			HttpSession session = request.getSession();
			// 3. Make a different response based on the results of the
			if (code.equals(rand)) {
				// validation
				if (user != null) {
					// Indicates successful login
					// The current login user information stored in the session
					// scope, easy to use the login user's information at any time
					session.setAttribute("user", user);
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				// }
				else {
					// Login failed
					PrintWriter out = response.getWriter();
					out.print(
							"<script  type='text/javascript'> alert('Login Failed!');window.location.href='shop-login.jsp'</script>");
				}
			} else {
				//Wrong verified code
				PrintWriter out = response.getWriter();
				out.print(
						"<script  type='text/javascript'> alert('Wrong verified code!');window.location.href='shop-login.jsp'</script>");
			}
		}

		else if ("register".equals(task)) {
			response.sendRedirect("FrontRegister.jsp");

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
