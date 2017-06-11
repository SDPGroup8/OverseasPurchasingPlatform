package com.g8.test;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.g8.model.ProductTypeBean;
import com.g8.service.IProductTypeService;
import com.g8.service.impl.ProductTypeServiceImpl;

import junit.framework.Assert;

public class TestProductTypeService {
	IProductTypeService service = new ProductTypeServiceImpl();
	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}
	/**
	 * Test the add product type function
	 */
	@Test
	public void testAdd() {
		ProductTypeBean type = new ProductTypeBean();
		type.setBigtypeid(1);
		type.setTypename("Test");
		int a = service.add(type);
		Assert.assertEquals(1, a);
	}
	
	/**
	 * Test the modify product type function
	 */
	@Test
	public void testUpdate(){
		ProductTypeBean type = new ProductTypeBean();
		type.setBigtypeid(1);
		type.setTypeid(17);
		type.setTypename("Test1");
		int a = service.update(type);
		Assert.assertEquals(1, a);
	}
	
	
	/**
	 * Test the product type delete function
	 */
	@Test
	public void testDelete(){
		ProductTypeBean type = new ProductTypeBean();
		type.setBigtypeid(1);
		type.setTypeid(17);
		type.setTypename("Test1");
		int a = service.update(type);
		Assert.assertEquals(1, a);
	}
	
	/**
	 * Test the query by id function for product type
	 */
	@Test
	public void testQueryById(){
		ProductTypeBean type = service.queryById(5);
		Assert.assertNotNull(type);
		System.out.println(type);
	}
	
	/**
	 * Test the query all product types function
	 */
	@Test
	public void testQuery(){
		List<ProductTypeBean> typeList = new ArrayList<>();
		typeList = service.query();
		Assert.assertNotNull(typeList);
		System.out.println(typeList);
	}
	
	/**
	 * Test query all the categories
	 */
	@Test
	public void testQueryBigType(){
		List<ProductTypeBean> typeList = new ArrayList<>();
		typeList = service.queryBigType();
		Assert.assertNotNull(typeList);
		System.out.println(typeList);
		
	}
	
	/**
	 * Test query all sub-categories according to the category
	 */
	@Test
	public void testQuerSmall(){
		List<ProductTypeBean> typeList = new ArrayList<>();
		typeList = service.querySmallType(1);
		Assert.assertNotNull(typeList);
		System.out.println(typeList);
	}
}
