package com.jty.controller.manage;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jty.util.RequestUtils;

//@Controller
public class indexController {
//	@RequestMapping("/*/index.html")
	public void index(HttpServletRequest request,HttpServletResponse response) {
		System.err.println(RequestUtils.getUrl());
//		String str = RequestUtils.getUrl().toString();
//		if(str.indexOf("?")>-1)
//			str.subSequence(0, str.indexOf(str));
//		System.err.println("str:"+str);
//		if(str.equals("http://localhost:8088/maven/html/login.html"))
//			return null;
		Object userName = RequestUtils.getUserName("username");
		if(userName==null){
			try {
				response.sendRedirect("http://localhost:8088/maven/html/login.html");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
//			redirect();
//			return "redirect:http://www.baidu.com";
	}
	
	public String redirect() {
		System.err.println(RequestUtils.getUrl());
		return "redirect:http://localhost:8088/maven/html/login.html";
	}
}
