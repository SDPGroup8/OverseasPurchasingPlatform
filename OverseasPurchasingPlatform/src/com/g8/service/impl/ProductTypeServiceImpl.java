package com.g8.service.impl;

import java.util.List;

import com.g8.dao.IProductTypeDao;
import com.g8.dao.impl.ProductTypeDaoImpl;
import com.g8.model.ProductTypeBean;
import com.g8.service.IProductTypeService;

public class ProductTypeServiceImpl implements IProductTypeService{
	IProductTypeDao dao = new ProductTypeDaoImpl();
	@Override
	public int add(ProductTypeBean type) {
		// TODO Auto-generated method stub
		return dao.add(type);
	}

	@Override
	public int update(ProductTypeBean type) {
		// TODO Auto-generated method stub
		return dao.update(type);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

	@Override
	public ProductTypeBean queryById(int id) {
		// TODO Auto-generated method stub
		return dao.queryById(id);
	}

	@Override
	public List<ProductTypeBean> query() {
		// TODO Auto-generated method stub
		return dao.query();
	}

	@Override
	public List<ProductTypeBean> queryBigType() {
		// TODO Auto-generated method stub
		return dao.queryBigType();
	}

	@Override
	public List<ProductTypeBean> querySmallType(int bigTypeId) {
		// TODO Auto-generated method stub
		return dao.querySmallType(bigTypeId);
	}

}
