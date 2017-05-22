package com.g8.model;

import java.sql.Date;

/**
 * JavaBean Product
 * @author Minghao Yang
 *
 */
public class ProductBean {
	//Commodity ID
	private int comid;
	//Commodity Name
	private String comname;
	//Commodity Description
	private String comdesc;
	//Price
	private double price;
	//Picture address of the commodity
	private String pic;
	//Whether it is out of stock
	private String flag;
	//Type ID of the commodity
	private int smalltypeid;
	//Create date
	private Date createdate;
	//Quantity
	private int quantity;
	//The number of goods purchased by the user
	private int shopNum;
	public ProductBean(int comid, String comname, String comdesc, double price, String pic, String flag, int smalltypeid,
			Date createdate, int quantity) {
		super();
		this.comid = comid;
		this.comname = comname;
		this.comdesc = comdesc;
		this.price = price;
		this.pic = pic;
		this.flag = flag;
		this.smalltypeid = smalltypeid;
		this.createdate = createdate;
		this.quantity = quantity;
	}
	public ProductBean() {
		super();
	}
	public int getComid() {
		return comid;
	}
	public void setComid(int comid) {
		this.comid = comid;
	}
	public String getComname() {
		return comname;
	}
	public void setComname(String comname) {
		this.comname = comname;
	}
	public String getComdesc() {
		return comdesc;
	}
	public void setComdesc(String comdesc) {
		this.comdesc = comdesc;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public int getSmalltypeid() {
		return smalltypeid;
	}
	public void setSmalltypeid(int smalltypeid) {
		this.smalltypeid = smalltypeid;
	}
	public Date getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getShopNum() {
		return shopNum;
	}
	public void setShopNum(int shopNum) {
		this.shopNum = shopNum;
	}
	@Override
	public String toString() {
		return "ProductBean [comid=" + comid + ", comname=" + comname + ", comdesc=" + comdesc + ", price=" + price
				+ ", pic=" + pic + ", flag=" + flag + ", smalltypeid=" + smalltypeid + ", createdate=" + createdate
				+ ", quantity=" + quantity + "]";
	}
	
	
}
