package com.g8.test;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.g8.model.AdminBean;
import com.g8.service.IAdminService;
import com.g8.service.impl.AdminServiceImpl;

import junit.framework.Assert;


public class TestAdminService {
	private AdminBean admin;
	
	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testLoginSuccessful() {
		IAdminService service = new AdminServiceImpl();
		admin = service.login("admin", "123456");
		Assert.assertNotNull(admin);
	}
	
	@Test
	public void testLoginFail() {
		IAdminService service = new AdminServiceImpl();
		admin = service.login("admin", "123");
		Assert.assertNull(admin);
	}

}
