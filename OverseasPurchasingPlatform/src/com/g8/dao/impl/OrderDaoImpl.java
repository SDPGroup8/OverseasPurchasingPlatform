package com.g8.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.g8.dao.IOrderDao;
import com.g8.dao.IOrderDetailDao;
import com.g8.model.OrderBean;
import com.g8.model.OrderDetailBean;
import com.g8.utils.BaseDao;
import com.g8.utils.BasePage;

public class OrderDaoImpl extends BaseDao implements IOrderDao {
	private String sql;
	IOrderDetailDao dao = new OrderDetailImpl();
	@Override
	public int add(OrderBean order) {
		sql="INSERT INTO T_ORDER(ORDERID,USERID,TOTALPRICE,PAYTYPE,RECEIVEDTYPE,USERNAME,ADDRESS,POSTALCODE,PHONENO,EMAIL,CITY,COUNTRY,STATUS,ORDERDATE)values(?,?,?,?,?,?,?,?,?,?,?,?,'Unassigned',sysdate)";
		int i = super.baseUpdate(sql,order.getOrderid(),order.getUserid(),order.getTotalprice()+3,order.getPaytype(),order.getReceivedtype(),order.getUsername(),order.getAddress(),order.getPostalcode(),order.getPhoneno(),order.getEmail(),order.getCity(),order.getCountry());
		List<OrderDetailBean> list = order.getList();
		for (OrderDetailBean detail : list) {
			detail.setOderid(order.getOrderid());
			dao.add(detail);
		}
		return i;
	}

	@Override
	public int update(OrderBean order) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delte(String oderId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<OrderBean> query(OrderBean order,int userId) {
		sql = "SELECT * FROM T_ORDER WHERE USERID = ?";
		return super.baseQuery(sql, OrderBean.class,userId);
	}

	@Override
	public OrderBean queryById(String orderId) {
		sql = "SELECT * FROM T_ORDER WHERE ORDERID = ?";
		OrderBean order = super.baseQueryById(sql, OrderBean.class, orderId);
		List<OrderDetailBean> list = new ArrayList<>();
		OrderDetailBean orderdetail = new OrderDetailBean();
		list = dao.queryByOrderId(orderdetail, order.getOrderid());
		order.setList(list);
		return order;
	}
	

	@Override
	public BasePage<OrderBean> queryByPage(int currentPage, int pageSize, int userId) {
		// TODO Auto-generated method stub
		return null;
	}

}
