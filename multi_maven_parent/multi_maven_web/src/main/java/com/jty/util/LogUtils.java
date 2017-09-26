package com.jty.util;


import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.log4j.Logger;

public class LogUtils {

	static SimpleDateFormat format=new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
	private  static Logger controller=Logger.getLogger("Controller");
	private  static Logger logger1=Logger.getLogger(LogUtils.class);
	
	public static void testName(String str)  {
		controller.info(str);
		System.out.println(format.format(new Date())+str);
	}
	
	public static void main(String[] args) {
//		logger1.info("我自己的测试122");
		testName("hhahahha");
	}
}
