package com.g8.dao.impl;

import java.util.List;

import com.g8.dao.IOrderDetailDao;
import com.g8.model.OrderDetailBean;
import com.g8.utils.BaseDao;

public class OrderDetailImpl extends BaseDao implements IOrderDetailDao{
	private String sql;
	@Override
	public int add(OrderDetailBean detail) {
		sql =" insert into t_orderdetail(detailid,orderid,productid,productname,price,buynum)values(seq_t_orderdetail.nextval,?,?,?,?,?)";
		return super.baseUpdate(sql, detail.getOrderid(),detail.getProductid(),detail.getProductname(),detail.getPrice(),detail.getBuynum());
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
		sql = " select * from t_orderdetail ";
		return super.baseQuery(sql, OrderDetailBean.class);
	}

	@Override
	public OrderDetailBean queryById(String orderId) {
		sql = "select * from t_orderdetail where orderid = ?";
		return super.baseQueryById(sql, OrderDetailBean.class, orderId);
	}

	@Override
	public List<OrderDetailBean> queryByOrderId(OrderDetailBean order,String orderid) {
		sql = "SELECT * FROM T_ORDERDETAIL WHERE ORDERID = ?";
		return super.baseQuery(sql, OrderDetailBean.class, orderid);
	}
	
	

}
