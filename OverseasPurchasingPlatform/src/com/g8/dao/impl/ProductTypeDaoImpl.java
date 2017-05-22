package com.g8.dao.impl;

import java.util.List;

import com.g8.dao.IProductTypeDao;
import com.g8.model.ProductTypeBean;
import com.g8.utils.BaseDao;

public class ProductTypeDaoImpl extends BaseDao implements IProductTypeDao{

	private String sql;
	
	@Override
	public int add(ProductTypeBean type) {
		sql = "insert into t_comtype(typeid,typename,bigtypeid) values (seq_t_comtype.nextval,?,?)";
		return super.baseUpdate(sql, type.getTypename(),type.getBigtypeid());
	}

	@Override
	public int update(ProductTypeBean type) {
		sql = "update t_comtype set typename= ? ,bigtypeid=? where typeid =?";
		return super.baseUpdate(sql, type.getTypename(),type.getBigtypeid(),type.getTypeid());
	}

	@Override
	public int delete(int id) {
		sql ="delete from t_comtype where typeid=? or bigtypeid=?";
		return super.baseUpdate(sql, id, id);
	}

	@Override
	public ProductTypeBean queryById(int id) {
		sql = "select * from t_comtype where typeid=?";
		return super.baseQueryById(sql, ProductTypeBean.class, id);
	}

	@Override
	public List<ProductTypeBean> query() {
		sql = "select * from t_comtype";
		return super.baseQuery(sql, ProductTypeBean.class);
	}

	@Override
	public List<ProductTypeBean> queryBigType() {
		sql = "select * from t_comtype where bigtypeid=0";
		return super.baseQuery(sql, ProductTypeBean.class);
	}

	@Override
	public List<ProductTypeBean> querySmallType(int bigTypeId) {
		sql = "select * from t_comtype where bigtypeid = ?";
		return super.baseQuery(sql, ProductTypeBean.class, bigTypeId);
	}

}
