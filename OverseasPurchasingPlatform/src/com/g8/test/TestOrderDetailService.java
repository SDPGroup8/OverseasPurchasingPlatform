package com.g8.test;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.g8.model.OrderDetailBean;
import com.g8.service.IOrderDetailService;
import com.g8.service.impl.OrderDetailServiceImpl;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import junit.framework.Assert;

public class TestOrderDetailService {
	
	IOrderDetailService service = new OrderDetailServiceImpl();
	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}
	/**
	 * Test add oreder detail function
	 */
	@Test
	public void testAddOrderDetail() {
		OrderDetailBean detail = new OrderDetailBean();
		detail.setBuynum(4);
		detail.setDetailid(2);
		detail.setOderid("1496740695232");
		detail.setPrice(20.0);
		detail.setProductid(3);
		detail.setProductname("baby product 3");
		int a = service.add(detail);
		Assert.assertEquals(1,a);
	}
	/**
	 * Test order detail query function
	 */
	@Test
	public void testQueryOrderDetail() {
		OrderDetailBean detail = new OrderDetailBean();
		detail.setBuynum(4);
		detail.setDetailid(2);
		detail.setOderid("1496740695232");
		detail.setPrice(20.0);
		detail.setProductid(3);
		detail.setProductname("baby product 3");
		List detailList = (List) service.query(detail);
		Assert.assertNotNull(detailList);
	}
	

}
