package com.g8.test;


import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.Before;
import org.junit.Test;

import com.g8.servlet.ProductServlet;
import static org.easymock.EasyMock.*;

import java.io.IOException;
import java.io.PrintWriter;

import junit.framework.TestCase;

public class ProductServletTest extends TestCase {

	@Test  
    public void testDoPostHttpServletRequestHttpServletResponse() throws ServletException, IOException {  
		HttpServletRequest request = createMock(HttpServletRequest.class);
		HttpServletResponse response = createMock(HttpServletResponse.class);
		
		ServletConfig servletConfig = createMock(ServletConfig.class);
		
		ServletContext servletContext = createMock(ServletContext.class);
		
		ProductServlet productServlet = new ProductServlet();
		
		productServlet.init(servletConfig);
		
		expect(servletConfig.getServletContext()).andReturn(servletContext).anyTimes();
		
		expect(request.getParameter("task")).andReturn("add");
		PrintWriter pw = new PrintWriter(System.out,true);
		
		expect(response.getWriter()).andReturn(pw).anyTimes();
		
		replay(request);
		replay(response);
		replay(servletConfig);
		replay(servletContext);
		
		productServlet.doPost(request, response);
		
		pw.flush();
		
		verify(request);
		verify(response);
		verify(servletConfig);
		verify(servletContext);
          
    }  

}
