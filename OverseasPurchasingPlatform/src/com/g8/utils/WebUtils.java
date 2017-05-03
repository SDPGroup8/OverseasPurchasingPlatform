package com.g8.utils;

import javax.servlet.http.HttpServletRequest;

/**
 * Commonly used operating tools
 * @author Minghao Yang
 *
 */
public class WebUtils {
			/**
			 * Converts the data of the string type to an integer
			 * @param val Need to convert the data
			 * @return Converted data
			 */
			public static int parseInt(String val){
				int num = 0;
				try{
					//Remove the space
					num= Integer.parseInt(val.trim());
				}
				catch(Exception e){
					System.out.println(val+"Error converting to int type");
				}
				return num;
			}
			/**
			 * Converts a string type to a double-precision floating-point type
			 * @param val Need to convert the data
			 * @return Converted data
			 */
			
			public static double parseDouble(String val){
				double num = 0.0;
				try{
					//Remove the space
					num= Double.parseDouble(val.trim());
				}
				catch(Exception e){
					System.out.println(val+"Error converting to Double type");
				}
				return num;
			}
			/**
			 * Determines whether the string is empty
			 * @param val Need to judge the string
			 * @return
			 * 		true empty
			 * 		false not empty
			 */
			public static boolean isEmpty(String val){
				if("".equals(val) || val==null){
					return true;
				}
				return false;
			}
			/**
			 * Get the current page for the request to submit
			 * @param request HttpServletRequest
			 * @param defValue If no requested data returns the specified default value
			 * @return
			 *    Returns the current page
			 */
			public static int getCurrentPage(HttpServletRequest request,int defValue){
				String cp = request.getParameter("currentPage");
				if(!isEmpty(cp)){
					//Indicates that there is data
					return parseInt(cp);
				}
				return defValue;
			}
			/**	
			 * Get the number of pages per page that is requested to be submitted
			 * @param request
			 * @param defValue
			 * @return
			 * 		pageSize
			 */
			public static int getPageSize(HttpServletRequest request,int defValue){
				String ps = request.getParameter("pageSize");
				if(!isEmpty(ps)){
					//Indicates that there is data
					return parseInt(ps);
				}
				return defValue;
			}
			
			public static void setAttribute(){
				
			}
			
}
