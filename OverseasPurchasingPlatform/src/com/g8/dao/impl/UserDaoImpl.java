package com.g8.dao.impl;

import com.g8.dao.IUserDao;
import com.g8.model.UserBean;
import com.g8.utils.BaseDao;

public class UserDaoImpl extends BaseDao implements IUserDao {

	private String sql;

	@Override
	public UserBean login(String userName, String password) {
		sql = "select * from t_user where username = ? and password = ?";
		return super.baseQueryById(sql, UserBean.class, userName, password);
	}

	@Override
	public int register(UserBean user) {
		sql = "insert into t_user (userid,username,firstname,lastname,email,phoneno,password) "
				+ "values (seq_t_user.nextval,?,?,?,?,?,?)";
		return super.baseUpdate(sql, user.getUsername(), user.getFirstname(), user.getLastname(), user.getEmail(),
				user.getPhoneno(), user.getPassword());
	}

	@Override
	public UserBean userNameCheck(String userName) {
		sql = "select * from t_user where username = ?";
		return super.baseQueryById(sql, UserBean.class, userName);
	}
	
	@Override
	public int updateUserInfo(String firstName, String lastName, String email, String phoneno, String address, String postalcode,
			String userName) {
		sql = "update t_user set firstname=?,lastname=?,email=?,phoneno=?,address=?,postalcode=? where username=?";
		return super.baseUpdate(sql,firstName, lastName, email, phoneno, address, postalcode, userName);
	}

}
