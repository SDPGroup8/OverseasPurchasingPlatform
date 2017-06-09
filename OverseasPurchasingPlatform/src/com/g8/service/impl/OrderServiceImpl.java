package com.g8.service.impl;

import java.util.List;

import com.g8.dao.IOrderDao;
import com.g8.dao.impl.OrderDaoImpl;
import com.g8.model.OrderBean;
import com.g8.service.IOrderService;
import com.g8.utils.BasePage;

public class OrderServiceImpl implements IOrderService{
	IOrderDao dao = new OrderDaoImpl();
	@Override
	public int add(OrderBean order) {
		// TODO Auto-generated method stub
		return dao.add(order);
	}

	@Override
	public int update(OrderBean order) {
		// TODO Auto-generated method stub
		return dao.update(order);
	}

	@Override
	public int delte(String oderId) {
		// TODO Auto-generated method stub
		return dao.delte(oderId);
	}

	@Override
	public List<OrderBean> query(OrderBean order,int userId) {
		// TODO Auto-generated method stub
		return dao.query(order,userId);
	}

	@Override
	public OrderBean queryById(String orderId) {
		// TODO Auto-generated method stub
		return dao.queryById(orderId);
	}

	@Override
	public BasePage<OrderBean> queryByPage(int currentPage, int pageSize, int userId) {
		// TODO Auto-generated method stub
		return dao.queryByPage(currentPage, pageSize, userId);
	}

}
