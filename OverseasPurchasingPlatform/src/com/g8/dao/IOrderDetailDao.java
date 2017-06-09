package com.g8.dao;

import java.util.List;

import com.g8.model.OrderDetailBean;

public interface IOrderDetailDao {
	
	public int add(OrderDetailBean detail);
	
	public int update(OrderDetailBean detail);
	
	public int delete(String orderId);
	
	public List<OrderDetailBean> query(OrderDetailBean detail);
	
	public OrderDetailBean queryById(String orderId);
	
	public List<OrderDetailBean> queryByOrderId(OrderDetailBean detail,String orderid);
}
