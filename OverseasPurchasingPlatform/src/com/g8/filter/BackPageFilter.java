package com.g8.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class BackPageFilter
 */
@WebFilter("/back/filterpage/*")
public class BackPageFilter implements Filter {

    /**
     * Default constructor. 
     */
    public BackPageFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// 1.Determine whether the current session is logged in,
		// According to the login when the success of the fall into the scope of
		// the user parameters
		// get the user data from the session
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		HttpSession session = req.getSession();
		Object obj = session.getAttribute("BACK_ADMIN");
		if (obj != null) {
			// Already login
			chain.doFilter(request, response);
		} else {
			// Not yet logged in
			String currentURI = req.getRequestURI();
			resp.sendRedirect("../shop-admin-login.jsp");
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
