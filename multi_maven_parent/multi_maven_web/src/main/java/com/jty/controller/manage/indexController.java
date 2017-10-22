package com.jty.controller.manage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexController {
	//测试权限页面
	@RequestMapping("/test")
	public void index() {
	}
	//用户管理
	@RequestMapping("/userManage")
	public void userManage() {
	}
	//资源管理页面
	@RequestMapping("/privilegeManage")
	public void privilegeManage() {
	}
	//角色管理页面
	@RequestMapping("/roleManage")
	public void roleManage() {
	}
	//菜单管理页面
	@RequestMapping("/menuManage")
	public void menuManage() {
	}
	
} 
