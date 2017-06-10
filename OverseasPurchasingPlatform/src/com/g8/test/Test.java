package com.g8.test;

import static org.junit.Assert.*;

import java.io.IOException;
import java.net.MalformedURLException;

import javax.servlet.ServletException;

import org.junit.After;
import org.junit.Before;

import com.g8.servlet.ProductServlet;
import com.meterware.httpunit.GetMethodWebRequest;
import com.meterware.httpunit.WebRequest;
import com.meterware.servletunit.InvocationContext;
import com.meterware.servletunit.ServletRunner;
import com.meterware.servletunit.ServletUnitClient;

public class Test {

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@org.junit.Test
	public void test() {
		ServletRunner sr = new ServletRunner();
		sr.registerServlet("ProductServlet", ProductServlet.class.getName());
		ServletUnitClient sc = sr.newClient();
		 WebRequest request = new GetMethodWebRequest("http://localhost:8081/OverseasPurchasingPlatform/back/ProductServlet");
		 try {
			InvocationContext ic = sc.newInvocation(request);
			ProductServlet ps = (ProductServlet) ic.getServlet();
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
