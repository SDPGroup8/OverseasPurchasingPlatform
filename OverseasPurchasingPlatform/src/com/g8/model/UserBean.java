package com.g8.model;

import java.sql.Date;

/**
 * JavaBean User
 * @author Minghao Yang
 *
 */
public class UserBean {
	//User ID
	private int userid;
	//User Name
	private String username;
	//First Name
	private String firstname;
	//Last Name
	private String lastname;
	//E-mail
	private String email;
	//Phone number
	private String phoneno;
	//PostalCode
	private String postalcode;
	//Address
	private String address;
	//Password
	private String password;
	//Registration date
	private Date regdate;
	//Lock state
	private String lockstate;
	//Last lock time
	private Date lastaccess;
	//Number of logins
	private int login;
	
	public UserBean(int userid, String username, String firstname, String lastname, String email, String phoneno,
			String postalcode, String address, String password, Date regdate, String lockstate, Date lastaccess,
			int login) {
		super();
		this.userid = userid;
		this.username = username;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.phoneno = phoneno;
		this.postalcode = postalcode;
		this.address = address;
		this.password = password;
		this.regdate = regdate;
		this.lockstate = lockstate;
		this.lastaccess = lastaccess;
		this.login = login;
	}

	public UserBean() {
		super();
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
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

	public String getPostalcode() {
		return postalcode;
	}

	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getLockstate() {
		return lockstate;
	}

	public void setLockstate(String lockstate) {
		this.lockstate = lockstate;
	}

	public Date getLastaccess() {
		return lastaccess;
	}

	public void setLastaccess(Date lastaccess) {
		this.lastaccess = lastaccess;
	}

	public int getLogin() {
		return login;
	}

	public void setLogin(int login) {
		this.login = login;
	}

	@Override
	public String toString() {
		return "UserBean [userid=" + userid + ", username=" + username + ", firstname=" + firstname + ", lastname="
				+ lastname + ", email=" + email + ", phoneno=" + phoneno + ", postalcode=" + postalcode + ", address="
				+ address + ", password=" + password + ", regdate=" + regdate + ", lockstate=" + lockstate
				+ ", lastaccess=" + lastaccess + ", login=" + login + "]";
	}
	
}
