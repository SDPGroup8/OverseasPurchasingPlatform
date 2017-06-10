package com.g8.service;

import java.util.List;

import com.g8.model.OrderDetailBean;

public interface IOrderDetailService {
	
	/**
	 * Add order detail
	 * @param detail
	 * @return
	 */
	public int add(OrderDetailBean detail);
	/**
	 * Update order detail
	 * @param detail
	 * @return
	 */
	public int update(OrderDetailBean detail);
	/**
	 * Delete order detail
	 * @param orderId
	 * @return
	 */
	public int delete(String orderId);
	/**
	 * Query the order detail
	 * @param detail
	 * @return
	 */
	public List<OrderDetailBean> query(OrderDetailBean detail);
}
