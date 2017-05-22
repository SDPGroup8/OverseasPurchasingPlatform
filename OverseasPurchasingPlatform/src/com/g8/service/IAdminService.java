package com.g8.service;

import com.g8.model.AdminBean;
/**
 * Service Admin
 * @author Minghao Yang
 *
 */
public interface IAdminService {
	/**
	 * Verify that the admin is logged in successfully
	 * @param adminname
	 * @param apassword
	 * @return
	 * 		null Login failed
	 */
	public AdminBean login(String adminname,String apassword);
}
