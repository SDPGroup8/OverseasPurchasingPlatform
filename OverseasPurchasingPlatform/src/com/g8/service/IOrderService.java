package com.g8.service;

import java.util.List;

import com.g8.model.OrderBean;
import com.g8.utils.BasePage;

public interface IOrderService {

	/**
	 * Add order
	 * @param order
	 * @return
	 */
	public int add(OrderBean order);
	/**
	 * Update order
	 * @param order
	 * @return
	 */
	public int update(OrderBean order);
	/**
	 * Delete order
	 * @param oderId
	 * @return
	 */
	public int delte(String oderId);
	/**
	 * Query order
	 * @param order
	 * @param userId
	 * @return
	 */
	public List<OrderBean> query(OrderBean order,int userId);
	/**
	 * Query order by the order id
	 * @param orderId
	 * @return
	 */
	public OrderBean queryById(String orderId);
	/**
	 * Base page query order
	 * @param currentPage
	 * @param pageSize
	 * @param userId
	 * @return
	 */
	public BasePage<OrderBean> queryByPage(int currentPage,int pageSize,int userId);
}
