package com.g8.dao;

import com.g8.model.UserBean;

/**
 * Dao User
 * @author Minghao Yang
 *
 */
public interface IUserDao {
	/**
	 * Verify that the user is logged in successfully
	 * @param username 
	 * @param password 
	 * @return
	 * 	 null Login failed
	 * 	
	 */
	public UserBean login(String userName,String password);
	/**
	 * Provide user registration
	 * @param user
	 * @return
	 */
	public int register(UserBean user);
	/**
	 * Verify that the user name already exists
	 * @param userName
	 * @return
	 */
	public UserBean userNameCheck(String userName);
	/**
	 * Upadte user information
	 * @param firstName
	 * @param lastName
	 * @param email
	 * @param phoneno
	 * @param address
	 * @param userName
	 * @param postalcode
	 * @return
	 */
	public int updateUserInfo(String firstName,String lastName,String email,String phoneno,String address,String postalcode,String userName);
}
