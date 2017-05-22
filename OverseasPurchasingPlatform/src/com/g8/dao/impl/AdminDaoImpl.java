package com.g8.dao.impl;

import com.g8.dao.IAdminDao;
import com.g8.model.AdminBean;
import com.g8.utils.BaseDao;

public class AdminDaoImpl extends BaseDao implements IAdminDao{
	
	private String sql;
	
	@Override
	public AdminBean login(String adminname, String apassword) {
		sql = "select * from t_admin where adminname = ? and apassword = ?";
		return super.baseQueryById(sql, AdminBean.class, adminname,apassword);
	}

}
