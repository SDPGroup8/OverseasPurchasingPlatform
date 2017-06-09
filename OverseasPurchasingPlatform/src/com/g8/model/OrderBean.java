package com.g8.model;

import java.sql.Date;
import java.util.List;
/**
 * JavaBean Order
 * @author Minghao Yang
 *
 */
public class OrderBean {
	private String orderid;
	private int userid;
	private double totalprice;
	private String paytype;
	private String receivedtype;
	private String username;
	private String email;
	private String phoneno;
	private String address;
	private String city;
	private String postalcode;
	private String country;
	private String status;
	private Date orderdate;
	private List<OrderDetailBean> list;
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	public String getPaytype() {
		return paytype;
	}
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
	public String getReceivedtype() {
		return receivedtype;
	}
	public void setReceivedtype(String receivedtype) {
		this.receivedtype = receivedtype;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPostalcode() {
		return postalcode;
	}
	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public List<OrderDetailBean> getList() {
		return list;
	}
	public void setList(List<OrderDetailBean> list) {
		this.list = list;
	}
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
	@Override
	public String toString() {
		return "OrderBean [orderid=" + orderid + ", userid=" + userid + ", totalprice=" + totalprice + ", paytype="
				+ paytype + ", receivedtype=" + receivedtype + ", username=" + username + ", email=" + email
				+ ", phoneno=" + phoneno + ", address=" + address + ", city=" + city + ", postalcode=" + postalcode
				+ ", country=" + country + ", status=" + status + ", orderdate=" + orderdate + ", list=" + list + "]";
	}
	
}
