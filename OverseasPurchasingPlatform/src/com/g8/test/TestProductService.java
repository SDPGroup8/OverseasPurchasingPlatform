package com.g8.test;


import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.g8.model.ProductBean;
import com.g8.model.ProductTypeBean;
import com.g8.service.IProductService;
import com.g8.service.impl.ProductService;

import junit.framework.Assert;

public class TestProductService {
	IProductService service = new ProductService();
	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}
	/**
	 * Test add product function
	 */
	@Test
	public void testAddProduct() {
		ProductBean product = new ProductBean();
		product.setComname("Test");
		product.setComdesc("Test");
		product.setPrice(0.0);
		product.setSmalltypeid(5);
		int a = service.add(product);
		Assert.assertEquals(1, a);
	}
	
	/**
	 * Test modify product function
	 */
	@Test
	public void testUpdateProduct() {
		ProductBean product = new ProductBean();
		product.setComname("Test");
		product.setComid(81);
		product.setComdesc("Test1");
		product.setPrice(0.0);
		product.setSmalltypeid(5);
		int a = service.update(product);
		Assert.assertEquals(1, a);
	}
	
	/**
	 * Test modify product function
	 */
	@Test
	public void testDeleteProduct() {
		int a = service.delete(81);
		Assert.assertEquals(1, a);
	}
	
	/**
	 * Test query product by product id function
	 */
	@Test
	public void testQueryProductById() {
		ProductBean product = service.queryById(3);
		Assert.assertNotNull(product);
		System.out.println(product);
	}
	
	/**
	 * Test query product by type function
	 */
	@Test
	public void testQueryProductByType() {
		ProductTypeBean type = service.queryTypeName(5);
		Assert.assertNotNull(type);
		System.out.println(type);
	}
	
	/**
	 * Test query product
	 */
	@Test
	public void testQueryAll() {
		List<ProductBean> list = service.query();
		Assert.assertNotNull(list);
		System.out.println(list);
	}
	
	
}
