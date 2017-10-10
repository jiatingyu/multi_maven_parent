package com.jty.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.jty.common.CommonField;
import com.jty.util.RequestUtils;

public class MyFirstInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		System.err.println("---->in"+request.getRequestURL());
		
		Object userName = RequestUtils.getUserName("username");
		if(userName!=null || request.getRequestURL().toString().equals(CommonField.Login_opreate)){
			return true;
		}else{
			response.sendRedirect("http://localhost:8088/maven/html/login.html");
			return false;
		}
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}
	

}
