package com.g8.service;

import java.util.List;

import com.g8.model.ProductTypeBean;

/**
 * Service Product Type
 * @author Minghao Yang
 *
 */
public interface IProductTypeService {
	/**
	 * Add product category information
	 * @param type
	 * @return
	 * 		-1 indicates that the operation failed
	 * 		Others Indicates the number of rows affected
	 */
	public int add(ProductTypeBean type);
	/**
	 * Update product category information
	 * @param type
	 * @return
	 * 		-1 indicates that the operation failed
	 * 		Others Indicates the number of rows affected		
	 */
	public int update(ProductTypeBean type);
	/**
	 * Delete product category information
	 * @param id
	 * @return
	 * 		-1 indicates that the operation failed
	 * 		Others Indicates the number of rows affected
	 */
	public int delete(int id);
	/**
	 * According to id query commodity category information
	 * @param id
	 * @return
	 *      The result of the query
	 *      null does not exist
	 */
	public ProductTypeBean queryById(int id);
	/**
	 * Check all product category information
	 * @return
	 * 		The result of the query
	 *      null does not exist
	 */
	public List<ProductTypeBean> query();
	/**
	 * Query all big type of goods
	 * @return
	 * 		The result of query
	 */
	public List<ProductTypeBean> queryBigType();
	/**
	 * Query the small type information according to the large type number
	 * @param bigTypeId
	 * @return	
	 * 		The result of query
	 */
	public List<ProductTypeBean> querySmallType(int bigTypeId);
}
