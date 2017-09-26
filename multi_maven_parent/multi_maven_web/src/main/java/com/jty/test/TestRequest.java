package com.jty.test;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jty.util.XmlUtils;

@Controller
public class TestRequest {
	@ResponseBody
	@RequestMapping("/request")
	public String testName(HttpServletRequest request,HttpServletResponse response)  {
		
		Enumeration<String> names = request.getParameterNames();
		String xx="";
		StringBuffer buffer=new StringBuffer();
		while (names.hasMoreElements()) {
			
			String name = (String) names.nextElement();
			if(name.equals("echostr")){
				xx=request.getParameter(name);
			}
			System.err.println(name+"-->"+request.getParameter(name));	
		}
		try {
			ServletInputStream inputStream = request.getInputStream();
			InputStreamReader inputStreamReader=new InputStreamReader(inputStream);
			BufferedReader reader=new BufferedReader(inputStreamReader);
			String str="";
			while ((str=reader.readLine())!=null) {
				System.err.println(str);
				buffer.append(str);
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Map<String, Object> result = XmlUtils.getResult(buffer.toString());
		if(result.get("MsgType").equals("text")){
			System.err.println(new Date().getTime()/1000);
			List<String> asList = Arrays.asList("");
			return "<xml>                                             "+
					"<ToUserName><![CDATA["+result.get("FromUserName")+"]]></ToUserName>      "+
					"<FromUserName><![CDATA["+result.get("ToUserName")+"]]></FromUserName>"+
					"<CreateTime>"+new Date().getTime()/1000+"</CreateTime>                "+
					"<MsgType><![CDATA[text]]></MsgType>              "+
					"<Content><![CDATA["+result.get("Content")+"]]></Content>              "+
					"</xml>";                                     
		}
		
		
		return "";
	}
}