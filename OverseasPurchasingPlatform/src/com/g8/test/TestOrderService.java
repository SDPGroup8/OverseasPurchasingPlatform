package com.g8.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.g8.model.OrderBean;
import com.g8.model.OrderDetailBean;
import com.g8.service.IOrderService;
import com.g8.service.impl.OrderServiceImpl;

import junit.framework.Assert;

public class TestOrderService {
	IOrderService service = new OrderServiceImpl();
	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}
	/**
	 * Test add order function
	 */
	@Test
	public void testAdd() {
		List<OrderDetailBean> list = new ArrayList<>();
		OrderBean order = new OrderBean();
		order.setOrderid("test");
		order.setAddress("23 Eban Ave, Auckland");// Shipping address
		order.setEmail("test@gmail.com");// email
		order.setPhoneno("(022) 432-8767");// phone number
		order.setPostalcode("1242");// postal code
		order.setUsername("Minghao" + " " + "Yang");// user name
		order.setList(list);
		order.setUserid(23);
		order.setCity("Auckland");// city
		order.setCountry("New Zealand");// country
		order.setPaytype("Visa");// payment method
		order.setTotalprice(300.0);// total price of the products
		order.setReceivedtype("Flat Shipping Rate");// received type
		int a = service.add(order);
		Assert.assertEquals(1, a);
	}
	
	/**
	 * Test order query by id function
	 */
	@Test
	public void testQueryById() {
		String orderid = "1496740695230";
		OrderBean order = service.queryById(orderid);
		Assert.assertNotNull(order);
	}
	
	/**
	 * Test the order history function
	 */
	@Test
	public void testOrderHistory(){
		OrderBean order = new OrderBean();
		List<OrderBean> list= service.query(order, 104);
		Assert.assertNotNull(list);
		for (OrderBean orderBean : list) {
			System.out.println(orderBean);
		}
	}

}
