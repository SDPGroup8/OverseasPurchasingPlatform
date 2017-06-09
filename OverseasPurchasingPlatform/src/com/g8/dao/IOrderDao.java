package com.g8.dao;

import java.util.List;

import com.g8.model.OrderBean;
import com.g8.utils.BasePage;

public interface IOrderDao {
		
	public int add(OrderBean order);
	
	public int update(OrderBean order);
	
	public int delte(String oderId);
	
	public List<OrderBean> query(OrderBean order,int userId);

	public OrderBean queryById(String orderId);

	public BasePage<OrderBean> queryByPage(int currentPage,int pageSize,int userId);
}
