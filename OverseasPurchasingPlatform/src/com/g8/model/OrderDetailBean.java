package com.g8.model;

public class OrderDetailBean {
	private int detailid;
	
	private String orderid;
	
	private int productid;
	
	private String productname;
	
	private int buynum;
	
	private double price;
	
	private OrderBean order;

	public int getDetailid() {
		return detailid;
	}

	public void setDetailid(int detailid) {
		this.detailid = detailid;
	}

	public String getOrderid() {
		return orderid;
	}

	public void setOderid(String orderid) {
		this.orderid = orderid;
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public int getBuynum() {
		return buynum;
	}

	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}

	public OrderBean getOrder() {
		return order;
	}

	public void setOrder(OrderBean order) {
		this.order = order;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "OrderDetailBean [detailid=" + detailid + ", orderid=" + orderid + ", productid=" + productid
				+ ", productname=" + productname + ", buynum=" + buynum + ", price=" + price + ", order=" + order + "]";
	}
	
	
}
