package com.jty.test;

import static org.junit.Assert.*;

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

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

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
		String str="{\"is_menu_open\":0,\"selfmenu_info\":{\"button\":[{\"name\":\"菜单名称\",\"sub_button\":{\"list\":[{\"type\":\"text\",\"name\":\"点击发送文字消息\",\"value\":\"点击发送文字消息\"},{\"type\":\"news\",\"name\":\"发送图文消息\",\"value\":\"BKTQj2-nZGbV5EyYUlEr5WYN9_pRUlq0ctrbOQtNsuM\",\"news_info\":{\"list\":[{\"title\":\"点击下方蓝色字体关注我们\",\"author\":\"云函科技\",\"digest\":\"点击上方关注我们\",\"show_cover\":0,\"cover_url\":\"http://mmbiz.qpic.cn/mmbiz_jpg/35goyJvR9Yx9u7pDSF9pVeLgwwzeOVmSibxQp9GJWAdyWGicuMjG8eQEQibhmchJrSoiaqExckibHeWuXb6weP8UTJQ/0?wx_fmt=jpeg\",\"content_url\":\"http://mp.weixin.qq.com/s?__biz=MzIwMzQzNTY0Mg==&mid=100000006&idx=1&sn=77e942b795b8a07556e47ae583334c0c&chksm=16ce3a1321b9b3056a1eac92cba09fdec65a42df5018b25ec9758aaa5f27bd378f40eefa031b#rd\",\"source_url\":\"\"}]}}]}},{\"type\":\"view\",\"name\":\"kyunra\",\"url\":\"http://kyunra.tunnel.qydev.com/net/weixin/weixinEntrance\"}]}}";
		JSONObject jsonObject=new JSONObject();
		JSONObject object = JSONObject.fromObject(str);
		int indexOf = str.toString().indexOf("news_info");
		
//		System.err.println(object.get("selfmenu_info"));
//		Object object2 = object.get("selfmenu_info");
//		JSONObject object3 = JSONObject.fromObject(object2);
//		System.out.println(object3.get("button"));
//		Object object4 = object3.get("button");
//		JSONArray array = JSONArray.fromObject(object4);
//		System.err.println(array.get(0));
//		Object object5 = array.get(0);
//		JSONObject jsonObject2 = JSONObject.fromObject(object5);
//		Object object6 = jsonObject2.get("sub_button");
//		JSONObject jsonObject21 = JSONObject.fromObject(object6);
//		System.err.println(jsonObject21.get("list"));
//		Object object7 = jsonObject21.get("list");
//		JSONArray array2 = JSONArray.fromObject(object7);
//		Object object8 = array2.get(1);
//		JSONObject jsonObject211 = JSONObject.fromObject(object8);
//		jsonObject211.remove("news_info");
//		System.err.println(jsonObject211);
//		
//		System.err.println(JSONArray.fromObject(JSONObject.fromObject(JSONObject.fromObject(JSONArray.fromObject(JSONObject.fromObject(JSONObject.fromObject(str).get("selfmenu_info")).get("button")).get(0)).get("sub_button")).get("list")).get(1));
//		System.err.println(JSONObject.fromObject(JSONArray.fromObject(JSONObject.fromObject(JSONObject.fromObject(JSONArray.fromObject(JSONObject.fromObject(JSONObject.fromObject(str).get("selfmenu_info")).get("button")).get(0)).get("sub_button")).get("list")).get(1)).remove("news_info"));
		
		
//		System.err.println(object2);
//		System.err.println(jsonObject211.get("news_info"));
	}
	//Thread.currentThread().getName() 拿到当前线程的引用和名称  
	
	
	  @Test
	public void testName11() throws Exception {
		A a=new A();
		a.setId("11");
		a.setName("222");
		a.setId("444");
		B b=new B();
		b.setSex("000");
		b.setAge("001");
		a.setBb(b);
		System.out.println(JSONObject.fromObject(a).remove("bb"));
	}
}
