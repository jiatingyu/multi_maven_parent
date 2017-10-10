package com.jty.util;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class RequestUtils {
	
	private static HttpServletRequest getRequest(){
		ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
		return requestAttributes.getRequest();
	}
	
	public static Object getUrl(){
		return  getRequest().getRequestURL();
	}
	public static Object getUserName(String name){
		return  getRequest().getSession().getAttribute(name);
	}
	public static void setUserName(String name,Object value){
		getRequest().getSession().setAttribute(name,value);
	}
	
	public static HttpSession getSession(){
		return getRequest().getSession();
	}
}
