package com.g8.model;

import java.sql.Date;

public class AdminBean {
	private int adminid;
	private String adminname;
	private String apassword;
	private int adminlevel;
	private Date regdate;
	public int getAdminid() {
		return adminid;
	}
	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getApassword() {
		return apassword;
	}
	public void setApassword(String apassword) {
		this.apassword = apassword;
	}
	public int getAdminlevel() {
		return adminlevel;
	}
	public void setAdminlevel(int adminlevel) {
		this.adminlevel = adminlevel;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public AdminBean(int adminid, String adminname, String apassword, int adminlevel, Date regdate) {
		super();
		this.adminid = adminid;
		this.adminname = adminname;
		this.apassword = apassword;
		this.adminlevel = adminlevel;
		this.regdate = regdate;
	}
	public AdminBean() {
		super();
	}
	@Override
	public String toString() {
		return "AdminBean [adminid=" + adminid + ", adminname=" + adminname + ", apassword=" + apassword
				+ ", adminlevel=" + adminlevel + ", regdate=" + regdate + "]";
	}
	
}
