package com.g8.utils;

import java.util.List;

/**
 * Paging tool class
 * @author Minghao Yang
 * @param <T>
 *
 */
public class BasePage<T> {
		//Current Page
		private int currentPage;
		//The number of pages per page
		private int pageSize;
		//Paged data
		private List<T> list;
		//The total number of data
		private int size;
		//The total number of pages
		private int totalPage;
		
		public int getCurrentPage() {
			return currentPage;
		}
		public void setCurrentPage(int currentPage) {
			this.currentPage = currentPage;
		}
		public int getPageSize() {
			return pageSize;
		}
		public void setPageSize(int pageSize) {
			this.pageSize = pageSize;
		}
		public List<T> getList() {
			return list;
		}
		public void setList(List<T> list) {
			this.list = list;
		}
		public int getSize() {
			return size;
		}
		public void setSize(int size) {
			this.size = size;
		}
		public int getTotalPage() {
			return totalPage;
		}
		public void setTotalPage(int totalPage) {
			this.totalPage = totalPage;
		}
		public BasePage() {
			super();
		}
		public BasePage(int currentPage, int pageSize) {
			super();
			this.currentPage = currentPage;
			this.pageSize = pageSize;
		}
		
}
