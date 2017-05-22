package com.g8.service.impl;

import com.g8.dao.IAdminDao;
import com.g8.dao.impl.AdminDaoImpl;
import com.g8.model.AdminBean;
import com.g8.service.IAdminService;

/**
 * ServiceImpl Admin
 * @author Administrator
 *
 */
public class AdminServiceImpl implements IAdminService{
	IAdminDao dao = new AdminDaoImpl();
	@Override
	public AdminBean login(String adminname, String apassword) {
		// TODO Auto-generated method stub
		return dao.login(adminname, apassword);
	}

}
