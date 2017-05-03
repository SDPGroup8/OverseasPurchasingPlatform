package com.g8.dao;

import java.util.List;

import com.g8.model.ProductBean;
import com.g8.model.ProductTypeBean;
import com.g8.utils.BasePage;

/**
 * Dao Product
 * @author Minghao Yang
 *
 */
public interface IProductDao {
		/**
		 * Add product information
		 * @param product
		 * @return
		 * -1 indicates that the operation failed
		 * Other numbers indicate the number of rows affected
		 */
		public int add(ProductBean product);
		/**
		 * Modify product information
		 * @param product
		 * @return
		 * -1 indicates that the operation failed
		 * Other numbers indicate the number of rows affected
		 */
		public int update(ProductBean product);
		/**
		 * Delete data according to product id
		 * @param id
		 * @return
		 * -1 indicates that the operation failed
		 * Other numbers indicate the number of rows affected
		 */
		public int delete(int id);
		/**
		 * Search all product information
		 * @return
		 * Search result
		 */
		public List<ProductBean> query();
		/**
		 * Search for product information based on id
		 * @param id
		 * @return
		 * Search result
		 */
		public ProductBean queryById(int id);
		/**
		 * Query the page-related data
		 * @param product
		 * @return
		 */
		public BasePage<ProductBean> queryByPage(ProductBean product,BasePage page);
		/**
		 * Get the product object with typeid
		 * @param typeid
		 * @return
		 */
		public ProductTypeBean queryTypeName(int typeid);
}
