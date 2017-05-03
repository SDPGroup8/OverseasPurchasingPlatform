package com.g8.utils;

import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 * Database Operation Tool
 * @author Minghao Yang
 *
 */
public class BaseDao {

	private static Connection conn;
	private static PreparedStatement ps;
	private static ResultSet rs;

	/**
	 * The public method of executing add,modify and delete operation.
	 * @param sql SQL statement
	 * @param objs placeholder in the SQL statement
	 * @return
	 * 		-1 could not execute
	 * 		Other values indicate the number of rows affected
	 */
	public static int baseUpdate(String sql,Object ... objs){
		// Gets the connection channel for the database
		conn = DBUtils.getConnection();
		// Build the SQL statement
		// Execute SQL statement
		try {
			ps = conn.prepareStatement(sql);
			// Assign the placeholder in the SQL statement
			if(objs != null){
				//Traverse the parameter list to assign a placeholder
				for(int i = 0 ; i < objs.length ; i++){
					ps.setObject(i+1, objs[i]);
				}	
			}
			//Execute the SQL statement to return the number of rows affected
			return ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//Close the resource
			DBUtils.close(conn, ps);
		}
		return -1;
	}
	
	/**
	 * The number of records in the table structure that satisfy the query condition
	 * @param sql SQL statement
	 * @param objs placeholder in the SQL statement
	 * @return
	 * 		  -1 could not execute
	 *        Other values indicate the number of rows affected
	 */
	public static int baseQueryForCount(String sql,Object ... objs){
		conn = DBUtils.getConnection();
		try {
			ps = conn.prepareStatement(sql);
			//Assign the placeholder in the SQL statement
			if(objs != null){
				for(int i = 0 ; i < objs.length ; i++){
					ps.setObject(i+1, objs[i]);
				}
			}
			rs = ps.executeQuery();
			if(rs.next()){
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			//Close the resource
			DBUtils.close(conn, ps, rs);
		}
		return -1;
	}
	
	/**
	 * Query a single record and return the corresponding object
	 * @param sql SQL statement
	 * @param cls Returns the class object corresponding to the object
	 * @param objs placeholder in the SQL statement
	 * @return
	 * 		Returns the object encapsulating the query record
	 */
	public static <T> T baseQueryById(String sql,Class cls,Object ... objs){
		// Gets the connection channel for the database
		conn = DBUtils.getConnection();
		try {
			ps = conn.prepareStatement(sql);
			//Assign the placeholder in the SQL statement
			if(objs != null){
				for (int i = 0; i < objs.length; i++) {
					ps.setObject(i+1, objs[i]);
				}
			}
			// Execute the SQL statement
			rs = ps.executeQuery();
			// MetaData
			ResultSetMetaData md = rs.getMetaData();
			int rowCount = md.getColumnCount();
			if(rs.next()){
				// Gets the corresponding object of the package data
				Object obj = cls.newInstance();
				// Take each field and the corresponding value in the row record£¬
				for (int i = 0; i < rowCount; i++) {
					String name = md.getColumnLabel(i+1).toLowerCase();
					Object value = rs.getObject(name);
					// If the value of the field of the query is empty, 
					//then there is no need to assign an attribute to the object
					if(value == null){
						continue;
					}
					// The value of the field of the query is saved to the member variable (attribute) of the corresponding object
					// Determines whether there is a member variable for the field in the table object
					if(hasField(cls, name)){
						// Gets the corresponding member variable in the class object based on the name of the field of the query
						Field field = cls.getDeclaredField(name);
						// Allow assignment to private member variables
						field.setAccessible(true);
						if(value instanceof BigDecimal){
							// Value may be an integer or a decimal
							BigDecimal bigValue = (BigDecimal) value;
							// Determine what type of member variable is
							if(field.getType().getName().equals("int")){
								// Assign the value to the object's object's variable 
								field.set(obj, bigValue.intValue());
							}else{
								field.set(obj, bigValue.doubleValue());
							}
						}else{
							//Assign the value to the object's object's variable
							field.set(obj, value);
						}
					}
				}
				// Return the corresponding object
				return (T) obj;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (NoSuchFieldException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} finally{
			DBUtils.close(conn, ps, rs);
		}
		return null;
	}
	/**
	 * Query multiple data
	 * @param sql SQL statement
	 * @param cls Returns the class object corresponding to the object
	 * @param objs placeholder in the SQL statement
	 * @return
	 * 		Query the data
	 */
	public static <T> List<T> baseQuery(String sql,Class cls,Object ... objs){
		List<T> list = new ArrayList<>();
		// Gets the connection channel for the database
		conn = DBUtils.getConnection();
		try {
			ps = conn.prepareStatement(sql);
			//Assign the placeholder in the SQL statement
			if(objs != null){
				for (int i = 0; i < objs.length; i++) {
					ps.setObject(i+1, objs[i]);
				}
			}
			// Execute the SQL statement
			rs = ps.executeQuery();
			// MetaData
			ResultSetMetaData md = rs.getMetaData();
			int rowCount = md.getColumnCount();
			while(rs.next()){
				// Gets the corresponding object of the package data
				Object obj = cls.newInstance();
				//  Take each field and the corresponding value in the line record
				for (int i = 0; i < rowCount; i++) {
					String name = md.getColumnLabel(i+1).toLowerCase();
					Object value = rs.getObject(name);
					// If the value of the field of the query is empty, 
					//then there is no need to assign an attribute to the object
					if(value == null){
						continue;
					}
					// The value of the field of the query is saved to the member variable (attribute) of the corresponding object
					// Determines whether there is a member variable for the field in the table object
					if(hasField(cls, name)){
						// Gets the corresponding member variable in the class object based on the name of the field of the query
						Field field = cls.getDeclaredField(name);
						// Allow assignment to private member variables
						field.setAccessible(true);
						if(value instanceof BigDecimal){
							// Value may be an integer or a decimal
							BigDecimal bigValue = (BigDecimal) value;
							// Determine what type of member variable is
							if(field.getType().getName().equals("int")){
								// Assign a value to a member of an object's object
								field.set(obj, bigValue.intValue());
							}else{
								field.set(obj, bigValue.doubleValue());
							}
						}else{
							// Assign a value to a member of an object's object
							field.set(obj, value);
						}
					}
				}
				//Save the traversed records into the collection
				list.add((T) obj);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (NoSuchFieldException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} finally{
			DBUtils.close(conn, ps, rs);
		}
		return list;
	}
	
	/**
	 * Determines whether the name attribute exists in the class object
	 * @param cls
	 * @param name
	 * @return
	 * 		true Exist
	 * 		false Not Exist
	 */
	public static boolean hasField(Class cls,String name){
		// Gets all the attributes in the class object
		Field[] fls = cls.getDeclaredFields();
		for (Field field : fls) {
			if(field.getName().equals(name.trim())){
				return true;
			}
		}
		return false;
	}
	
	private final String QUERY_BEGIN = " select t2.*,rownum from (select t1.*,rownum num from  ( ";
	private final String QUERY_END = " ) t1 where rownum <= ?) t2 where t2.num >= ? ";
	
	/**
	 * Paging query
	 * @param <T>
	 * @param countSql Query the total number of records sql
	 * @param querySql Query statement
	 * @param whereSql The condition of the query
	 * @param otherSql Other sql
	 * @param pageSize The number of pages per page
	 * @param currentPage current page
	 * @param cls  The corresponding class object
	 * @param list  The placeholder corresponds to the data
	 * @return
	 *     The result of the query
	 */
	public <T> BasePage<T> queryByPage(StringBuilder countSql,StringBuilder querySql
			,StringBuilder whereSql,StringBuilder otherSql,int pageSize,int currentPage
			,Class cls ,List list){
		// 1.Query the total number of records
		// Add condition
		countSql.append(whereSql.toString());
		int count = this.baseQueryForCount(countSql.toString(),list.toArray());
		// 2. Query the paged data
		// Query statement add condition; select * from mc where 1=1 and mcname like '%abc%'
		querySql.append(whereSql.toString());
		querySql.insert(0, QUERY_BEGIN);
		querySql.append(QUERY_END);
		// Assign a placeholder to a paging statement
		list.add(pageSize*(currentPage));
		list.add(pageSize*(currentPage-1)+1);
		List<T> queryList = this.baseQuery(querySql.toString(), cls,list.toArray());
		//Encapsulates the query amount data into the BasePage object
		BasePage<T> page = new BasePage<>();
		page.setSize(count);
		page.setCurrentPage(currentPage);
		page.setPageSize(pageSize);
		page.setList(queryList);
		//page.setTotalPage((page.getList().size()+pageSize-1)/pageSize);
		page.setTotalPage((count-1)/pageSize+1);
		return page;
	}
	
	

}
