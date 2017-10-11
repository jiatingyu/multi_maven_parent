package com.jty.util;

import net.sf.json.JSONObject;

public class ResultUtil {
	
	public String  setSuccess(String message,Object object){
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("message", message);
		jsonObject.put("data", object);
		return jsonObject.toString();
	}
	public String  setSuccess(String flag,String message){
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("flag", flag);
		jsonObject.put("message", message);
		return jsonObject.toString();
	}
	
	public String  setSuccess(String flag,String message,Object obj){
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("flag", flag);
		jsonObject.put("message", message);
		jsonObject.put("data", obj);
		return jsonObject.toString();
	}
}
