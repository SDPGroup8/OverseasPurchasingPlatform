package com.g8.service.impl;

import java.util.List;

import com.g8.dao.IOrderDetailDao;
import com.g8.dao.impl.OrderDetailImpl;
import com.g8.model.OrderDetailBean;
import com.g8.service.IOrderDetailService;

public class OrderDetailServiceImpl implements IOrderDetailService{
	IOrderDetailDao dao = new OrderDetailImpl();

	@Override
	public int add(OrderDetailBean detail) {
		// TODO Auto-generated method stub
		return dao.add(detail);
	}

	@Override
	public int update(OrderDetailBean detail) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String orderId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<OrderDetailBean> query(OrderDetailBean detail) {
		// TODO Auto-generated method stub
		return dao.query(detail);
	}


	
}
