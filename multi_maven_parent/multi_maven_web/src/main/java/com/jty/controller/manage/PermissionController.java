package com.jty.controller.manage;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jty.common.Resource;
import com.jty.manage.entity.User;
import com.jty.service.manage.PermissionService;
import com.jty.util.RequestUtils;

@Controller
@RequestMapping("/permission")
public class PermissionController {
	@Autowired
	PermissionService permissionService;
	

	
	@ResponseBody
	@RequestMapping("/login")
	public Map<String,Object> login(String username,String pwd) {
		Map<String,Object> map=new HashMap<String ,Object>();
		RequestUtils.setUserName("username", username);
		map.put("data", 1);
		return map;
	}
	
	@ResponseBody
	@RequestMapping("/findAllUser")
	@Resource(ResourceName="查询用户")
	public Map<String,Object> findAllUser(String page,String rows) {
		Map<String,Object> map=new HashMap<String ,Object>();
		List<User> list = permissionService.getAllUser();
		map.put("rows", list);
		return map;
	}
	@ResponseBody
	@RequestMapping("/addUser")
	@Resource(ResourceName="增加用户")
	public Map<String,Object> addUser(User user) {
		Map<String,Object> map=new HashMap<String ,Object>();
		permissionService.insertUser(user);
		map.put("data", 1);
		return map;
	}
	@ResponseBody
	@RequestMapping("/deleteUser")
	@Resource(ResourceName="删除用户")
	public Map<String,Object> deleteUser(String id) {
		Map<String,Object> map=new HashMap<String ,Object>();
		permissionService.deleteUser(id);
		map.put("data", 1);
		return map;
	}
}
