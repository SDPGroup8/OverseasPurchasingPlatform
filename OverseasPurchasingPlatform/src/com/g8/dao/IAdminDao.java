package com.g8.dao;

import com.g8.model.AdminBean;

/**
 * Dao Admin
 * @author Minghao Yang
 *
 */
public interface IAdminDao {
	/**
	 * Verify that the admin is logged in successfully
	 * @param adminname
	 * @param apassword
	 * @return
	 * 		null Login failed
	 */
	public AdminBean login(String adminname,String apassword);
	
	
}
