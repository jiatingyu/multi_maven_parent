package com.jty.controller.manage;


import static org.junit.Assert.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jetty.client.HttpResponse;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jty.common.CommonField;
import com.jty.common.Resource;
import com.jty.manage.entity.Menu;
import com.jty.manage.entity.Privilege;
import com.jty.manage.entity.Role;
import com.jty.manage.entity.User;
import com.jty.manage.entity.sysLog;
import com.jty.service.manage.PermissionService;
import com.jty.test.activemq.recevier;
import com.jty.util.AjaxRes;
import com.jty.util.ClassScaner;
import com.jty.util.RequestUtils;

@Controller
@RequestMapping("/permission")
public class PermissionController {
	@Autowired
	PermissionService permissionService;
	
	@ResponseBody
	@Resource(ResourceName="权限url生成")
	@RequestMapping("/generatePrivilege")
	public String generatePrivilege() {
		Map<String, String> map = ClassScaner.getAllResourceInterface();
		permissionService.generatePrivilege(map);
		return "1";
	}
	
	@ResponseBody
	@RequestMapping("/login")
	public Map<String,Object> login(String username,String pwd) {
		Map<String,Object> map=new HashMap<String ,Object>();
		if(!CommonField.env){
			RequestUtils.setUserName("username", username);
			map.put("data", 1);
			return map;
		}
		User user=permissionService.findUserByUsernameAndPwd(username,pwd);
		if(user!=null){
			RequestUtils.setUserName("username", username);
			//查询当前用户的全部角色
			user.setRoleList(permissionService.findUserAllRole(user.getId()));
			//查询出当前用户的全部资源权限
			user.setPrivilegeList(permissionService.findUserAllPrivilege(user.getId()));
			RequestUtils.setUser(user);
			map.put("data", 1);
		}else{
			map.put("data", 0);
			map.put("message", "用户名，密码不正确");
		}
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
	@RequestMapping("/findAllPrivilege")
	@Resource(ResourceName="查看所有权限资源")
	public Map<String,Object> findAllPrivilege(String page,String rows) {
		Map<String,Object> map=new HashMap<String ,Object>();
		List<Privilege> list = permissionService.findAllPrivilege();
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
	
	////==========================
	@ResponseBody
	@RequestMapping("/findAllRole")
	@Resource(ResourceName="查看角色")
	public Map<String,Object> findAllRole() {
		Map<String,Object> map=new HashMap<String ,Object>();
		List<Role> list = permissionService.findAllRole();
		map.put("rows", list);
		return map;
	}
	
	@ResponseBody
	@RequestMapping("/addRole")
	@Resource(ResourceName="增加角色")
	public Map<String,Object> addRole(Role role) {
		Map<String,Object> map=new HashMap<String ,Object>();
		 permissionService.addRole(role);
		map.put("data", 1);
		return map;
	}
	@ResponseBody
	@RequestMapping("/loginOut")
	public void loginOut() {
		System.err.println("----------.>loginOut");
		RequestUtils.getSession().removeAttribute("username");
		RequestUtils.getSession().removeAttribute("user");
	}
	
	@ResponseBody
	@RequestMapping("/findAllMenu")
	@Resource(ResourceName="查询所有菜单")
	public Map<String,Object> findAllMenu(String page,String rows) {
		System.err.println("----------.>findAllMenu");
		Map<String,Object> map=new HashMap<String,Object>();
		List<Menu> list=permissionService.findAllMenu();
		
		map.put("rows", list);
		return map;
	}
	@ResponseBody
	@RequestMapping("/addMenu")
	@Resource(ResourceName="增加菜单")
	public AjaxRes addMenu(Menu menu) {
		System.err.println("----------.>findAllMenu");
		AjaxRes ajaxRes=new AjaxRes();
		int i=permissionService.addMenu(menu);
		ajaxRes.setRes(i);
		return ajaxRes;
	}
	
	
}
