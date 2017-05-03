package com.g8.model;

public class ProductTypeBean {
	//Type Id
	private int typeid;
	//Type Name
	private String typename;
	//Big Type Id
	private int bigtypeid;
	public int getTypeid() {
		return typeid;
	}
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public int getBigtypeid() {
		return bigtypeid;
	}
	public void setBigtypeid(int bigtypeid) {
		this.bigtypeid = bigtypeid;
	}
	public ProductTypeBean(int typeid, String typename, int bigtypeid) {
		super();
		this.typeid = typeid;
		this.typename = typename;
		this.bigtypeid = bigtypeid;
	}
	public ProductTypeBean() {
		super();
	}
	@Override
	public String toString() {
		return "ProdutTypeBean [typeid=" + typeid + ", typename=" + typename + ", bigtypeid=" + bigtypeid + "]";
	}
	
}
