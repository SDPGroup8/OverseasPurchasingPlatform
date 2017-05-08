package com.g8.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.g8.dao.IProductDao;
import com.g8.model.ProductBean;
import com.g8.model.ProductTypeBean;
import com.g8.utils.BaseDao;
import com.g8.utils.BasePage;
import com.g8.utils.WebUtils;

public class ProductDaoImpl extends BaseDao implements IProductDao {

	private String sql;

	@Override
	public int add(ProductBean product) {
		sql = "insert into t_commodity(comid,comname,comdesc,price,pic,flag,smalltypeid,quantity,createdate) values (seq_t_mc.nextval,?,?,?,?,?,?,?,sysdate)";
		return super.baseQueryForCount(sql, product);
	}

	@Override
	public int update(ProductBean product) {
		sql = "update t_commodity set comname = ?, comdesc = ?, price = ?, pic = ?, flag = ?, smalltypeid = ?, quantity = ? where comid = ?";
		return super.baseQueryForCount(sql, product);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public List<ProductBean> query() {
		sql = "select * from t_commodity";
		return super.baseQuery(sql, ProductBean.class);
	}

	@Override
	public ProductBean queryById(int id) {
		sql = "select * from t_commodity where comid=?";
		return super.baseQueryById(sql, ProductBean.class, id);
	}

	@Override
	public BasePage<ProductBean> queryByPage(ProductBean product,BasePage page) {
		StringBuilder countSql = new StringBuilder(" select count(1) from t_commodity where 1=1 ");
		StringBuilder querySql = new StringBuilder(" select * from t_commodity where 1=1 ");
		StringBuilder whereSql = new StringBuilder();
		StringBuilder otherSql = new StringBuilder();
		
		List<Object> list = new ArrayList<>();
		if(product != null){
			//The attributes in the object are judged one by one
			if(!WebUtils.isEmpty(product.getComname())){
				//Search by product name
				whereSql.append(" and comname like ? ");
				//Assign values to the data in the placeholder
				list.add("%"+product.getComname()+"%");
			}else if(WebUtils.isEmpty(product.getComname())&& (product.getSmalltypeid()!=0)){
				whereSql.append(" and smalltypeid = ? ");
				list.add(product.getSmalltypeid());
			}
		}
		return super.queryByPage(countSql,
				querySql, whereSql, otherSql, 
				page.getPageSize(), page.getCurrentPage()
				, ProductBean.class, list);
	}

	@Override
	public ProductTypeBean queryTypeName(int typeid) {
		sql = "select t2.* from t_commodity t1 inner join t_comtype t2 on t1.smalltypeid = t2.typeid where t1.smalltypeid = ?";
		return super.baseQueryById(sql, ProductTypeBean.class, typeid);
	}

	

}
