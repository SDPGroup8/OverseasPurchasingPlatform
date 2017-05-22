package com.g8.service.impl;

import java.util.List;

import com.g8.dao.IProductDao;
import com.g8.dao.impl.ProductDaoImpl;
import com.g8.model.ProductBean;
import com.g8.model.ProductTypeBean;
import com.g8.service.IProductService;
import com.g8.utils.BasePage;

public class ProductService implements IProductService {
	IProductDao dao = new ProductDaoImpl();
	@Override
	public int add(ProductBean product) {
		// TODO Auto-generated method stub
		return dao.add(product);
	}

	@Override
	public int update(ProductBean product) {
		// TODO Auto-generated method stub
		return dao.update(product);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

	@Override
	public List<ProductBean> query() {
		// TODO Auto-generated method stub
		return dao.query();
	}

	@Override
	public ProductBean queryById(int id) {
		// TODO Auto-generated method stub
		return dao.queryById(id);
	}

	@Override
	public BasePage<ProductBean> queryByPage(ProductBean product, BasePage page) {
		// TODO Auto-generated method stub
		return dao.queryByPage(product, page);
	}

	@Override
	public ProductTypeBean queryTypeName(int typeid) {
		// TODO Auto-generated method stub
		return dao.queryTypeName(typeid);
	}

}
