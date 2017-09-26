package com.jty.test;

import java.io.BufferedReader;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

import org.junit.Test;

public class xxx {

	private static Apple Apple;
	@Test
	public void testName() throws Exception {
		URL url=new URL("http://news.sina.com.cn/");
		URLConnection connection = url.openConnection();
		InputStream inputStream = connection.getInputStream();
		BufferedReader reader=new BufferedReader(new InputStreamReader(inputStream));
		
		PrintWriter printWriter=new PrintWriter(new FileWriter("E:\\pachong.txt",true));
		String str="";
		while ((str=reader.readLine())!=null) {
			printWriter.print(str);
		}
		  System.out.println("爬取成功^_^");
	}
	
	@Test
	public void testName1() throws Exception {
	}
	//Thread.currentThread().getName() 拿到当前线程的引用和名称  
	  
}
