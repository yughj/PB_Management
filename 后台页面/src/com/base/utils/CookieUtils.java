package com.base.utils;

import java.math.BigInteger;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CookieUtils {
	
	public static void addCookie(String name,String value,HttpServletResponse response)
	{
		
		Cookie cookie=new Cookie(name,value);		
		cookie.setMaxAge(60*60*24); //有效时间为1天
		cookie.setPath("/BaseWeb/");
		response.addCookie(cookie);
	}
	
	public static boolean addCookie(HttpServletRequest request,HttpServletResponse response)
	{	
		Cookie[] cookies=request.getCookies();		
		boolean flag=false;
		for(Cookie co:cookies)
		{
			if(co.getName().equals("username"))
			{	
				co.setMaxAge(60*60*24);
				response.addCookie(co);				
				flag=true;
				break;
			}
		}
		
		return flag;
	}
	
	//判断用户是否登录
	//情况一：未登录，返回登录界面
	//情况二：登录成功，但未响应时间超过了10分钟，需要重新登录
	//情况三：登录成功，响应时间也未超过了10分钟，则重新更新登录时间
	public static boolean checkLogin(HttpServletRequest request,HttpServletResponse response,Cookie[] cookies)
	{	
			//Cookie[] cookies=request.getCookies();		
			boolean flag=false;
			for(Cookie co:cookies)
			{
				if(co.getName().equalsIgnoreCase("username"))//判断是否登录，如果登录成功就会有cookie字段username
				{	
					flag=true;
					break;
				}
			}
			//System.out.print(flag);
			if(!flag) //如果没有登录，则直接返回
				return flag;
			else{     //如果登录成功，则判断未响应时间是否超过了10分钟
				for(Cookie co:cookies)
				{
					if(co.getName().equalsIgnoreCase("logintime"))//判断未响应时间超过了10分钟
					{	
						//大数值字符串不能转化为Integer
						BigInteger loginTime = new BigInteger(co.getValue()); 
						long currentTime =  new Date().getTime();
						long subTime = currentTime -loginTime.longValue() ;
						//System.out.println(loginTime);
						//System.out.println(currentTime);
						//System.out.println(subTime / (1000*60));
                        if( subTime / (1000*60) >= 10){
                        	flag = false;
                        	//System.out.print("超过时间");            	
                        }else{//未超过了10分钟,则更新时间
                        	co.setMaxAge(60*60*10);
                        	co.setPath("/BaseWeb/");
                        	co.setValue(String.valueOf(currentTime));
            				response.addCookie(co);
                        }
					}
				}			
			}
			
			return flag;
	}
	
	
    public static void free(Connection conn,Statement stmt,ResultSet rs){
		
		try{
			if(rs!=null)
				rs.close();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				if(stmt!=null)
					stmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}finally{				
				try{
					if(conn!=null)
						conn.close();
				}catch(SQLException e){
					e.printStackTrace();
				}	
			}	
		}	
	}

	
}
