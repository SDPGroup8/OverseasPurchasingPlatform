package com.g8.service.impl;

import com.g8.dao.IUserDao;
import com.g8.dao.impl.UserDaoImpl;
import com.g8.model.UserBean;
import com.g8.service.IUserService;

public class UserServiceImpl implements IUserService {
	IUserDao dao = new UserDaoImpl();
	@Override
	public UserBean login(String userName, String password) {
		// TODO Auto-generated method stub
		return dao.login(userName, password);
	}

	@Override
	public int register(UserBean user) {
		// TODO Auto-generated method stub
		return dao.register(user);
	}

	@Override
	public UserBean userNameCheck(String userName) {
		// TODO Auto-generated method stub
		return dao.userNameCheck(userName);
	}

	@Override
	public int updateUserInfo(String firstName, String lastName, String email, String phoneno, String address,
			String postalcode, String userName) {
		// TODO Auto-generated method stub
		return dao.updateUserInfo(firstName, lastName, email, phoneno, address, postalcode, userName);
	}


}
