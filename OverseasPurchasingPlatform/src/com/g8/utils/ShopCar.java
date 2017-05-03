package com.g8.utils;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.g8.model.ProductBean;
import com.g8.utils.ShopCar;

public class ShopCar {
	//All products information
	private List<ProductBean> list;
	//Total number of products
	private int count;
	//The total number of types
	private int totalType;
	//Total price
	private double totalPrice;
	
	private ShopCar(){
		list = new ArrayList<>();
	}
	/**
	 * Give the outside world the only shopping cart object in the conversation
	 * @param session
	 * @return
	 */
	public static ShopCar getShopCar(HttpSession session){
		//Get the cart from the session scope
    	Object obj = session.getAttribute("SESSION_SHOPCAR");
    	if(obj != null){
    		//Indicates that the shopping cart exists
    		return (ShopCar) obj;
    	}
    	//Indicates that the shopping cart is not present
    	//New instantiate a shopping cart object
    	ShopCar car = new ShopCar();
    	//Put the new shopping cart into the session scope
    	session.setAttribute("SESSION_SHOPCAR", car);
    	return car;
	}
	/**
	 * Put the selected product into the shopping cart
	 * @param product
	 */
	public void add(ProductBean product){
		//Indicates that there is no item in the shopping cart
    	boolean flag = true;
    	for (ProductBean productBean : list) {
			if(product.getComid()==productBean.getComid()){
				//Said the goods have been purchased in the shopping cart
				productBean.setShopNum(productBean.getShopNum()+1);
				flag =false;
				break;
			}
		}
    	if(flag == true){
    		list.add(product);
    		//set the purchase quantity to 1
    		product.setShopNum(1);
    	}
    	init();
	}
	/**
	 * Delete the items in the shopping cart by comid
	 * @param comid
	 */
	public void delete(int comid){
		for (ProductBean productBean : list) {
			if(productBean.getComid()==comid){
				list.remove(productBean);
				break;
			}
		}
		init();
	}
	/**
	 * Modify the number of items purchased
	 * @param comid
	 * @param num
	 */
	public void update(int comid,int num){
		for (ProductBean productBean : list) {
			if(productBean.getComid()==comid){
				productBean.setShopNum(num);
				break;
			}
		}
		init();
	}
	/**
	 * Empty the shopping cart
	 */
	public void clear(){
		list.clear();
		init();
	}
	/**
	 * Initialize the statistics
	 */
	public void init(){
		//initial
		count = 0;
    	totalType = 0;
    	totalPrice = 0;
    	//Re-statistics
    	for (ProductBean productBean : list) {
			count += productBean.getShopNum();
			totalPrice += productBean.getPrice()*productBean.getShopNum();
		}
    	totalType = list.size();
	}
	public List<ProductBean> getList() {
		return list;
	}
	public void setList(List<ProductBean> list) {
		this.list = list;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getTotalType() {
		return totalType;
	}
	public void setTotalType(int totalType) {
		this.totalType = totalType;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
}
