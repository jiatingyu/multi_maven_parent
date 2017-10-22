package com.jty.controller.manage;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jty.common.CommonField;
import com.jty.common.Resource;
import com.jty.manage.entity.Menu;
import com.jty.manage.entity.Privilege;
import com.jty.manage.entity.Role;
import com.jty.manage.entity.User;
import com.jty.manage.entity.extra.SuperMenu;
import com.jty.service.manage.PermissionService;
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
	@Resource(ResourceName="查看用户列表")
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
		String userId=permissionService.insertUser(user);
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
	@Resource(ResourceName="查看角色列表")
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
	@RequestMapping("/editRole")
	@Resource(ResourceName="编辑角色")
	public Map<String,Object> editRole(String role_id) {
		Map<String,Object> map=new HashMap<String ,Object>();
		Map<String,Object> role=permissionService.editRole(role_id);
		
		map.put("data", role);
		return map;
	}
	@ResponseBody
	@RequestMapping("/addRoleMenuRelation")
	@Resource(ResourceName="角色菜单绑定")
	public Map<String,Object> addRoleMenuRelation(String role_id,@RequestParam(name="menus[]")String[] menus) {
		Map<String,Object> map=new HashMap<String ,Object>();
		List<String> menuList = Arrays.asList(menus);
		
		int num=permissionService.addRoleMenuRelation(role_id,menuList);
		map.put("res", num);
		return map;
	}
	@ResponseBody
	@RequestMapping("/deleteRole")
	@Resource(ResourceName="删除角色")
	public Map<String,Object> deleteRole(String role_id) {
		Map<String,Object> map=new HashMap<String ,Object>();
		//删除角色 和删除角色的全部资源 和菜单
		int num=permissionService.deleteRole(role_id);
		map.put("data", num);
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
		int i=0;
		if(menu.getMenu_id()!=null){
			//更新菜单
			i=permissionService.updateMenu(menu);
		}else{
			//增加菜单
			i=permissionService.addMenu(menu);
		}
		ajaxRes.setRes(i);
		return ajaxRes;
	}
	@ResponseBody
	@RequestMapping("/editMenu")
	@Resource(ResourceName="编辑菜单")
	public AjaxRes editMenu(String menu_id) {
		System.err.println("----------.>editMenu");
		AjaxRes ajaxRes=new AjaxRes();
		Menu menu=permissionService.editMenu(menu_id);
		ajaxRes.setSucceed(menu, "1");
		return ajaxRes;
	}
	/**
	 * 软删除菜单
	 * @param menu
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/deleteMenu")
	@Resource(ResourceName="删除菜单")
	public AjaxRes deleteMenu(String menu_id) {
		System.err.println("----------.>findAllMenu");
		AjaxRes ajaxRes=new AjaxRes();
		int i=permissionService.deleteMenu(menu_id);
		ajaxRes.setRes(i);
		return ajaxRes;
	}
	
	@ResponseBody
	@RequestMapping("/findUserAllMenu")
	public AjaxRes findUserAllMenu(String menu_id) {
		System.err.println("----------.>findUserAllMenu");
		AjaxRes ajaxRes=new AjaxRes();
		//查询当前用户的全部菜单
		List<Menu> list = permissionService.findUserAllMenu(RequestUtils.getUser().getId());
		Map<Object,Object> map=new HashMap<Object,Object>();
		for (Menu menu : list) {
			if(menu.getParentId().equals("0")){
				List<Menu> menuList=new ArrayList<Menu>();
				menuList.add(menu);
				map.put(menu.getMenu_id(), menuList);
			}else{
				System.err.println(map);
				System.err.println(map.get("2"));
				List<Menu> parentList=(List<Menu>) map.get(Integer.parseInt(menu.getParentId()));
				parentList.add(menu); 
			}
			
		}
		System.err.println(map.toString());
		ajaxRes.setObj(map);
		return ajaxRes;
	}
	/**
	 * 查询所有菜单列表
	 * @param menu_id
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/findUserAllMenu1")
	public Object findUserAllMenu1() {
		System.err.println("----------.>findUserAllMenu");
		//查询当前用户的全部菜单
		List<Menu> list = permissionService.findAllMenu();
		List<SuperMenu> menus=new ArrayList<SuperMenu>();
		for (Menu menu : list) {
			if(menu.getParentId().equals("0")){
				SuperMenu superMenu=new SuperMenu();
				superMenu.setMenu_id(menu.getMenu_id());
				superMenu.setMenu(menu);
//				map.put(superMenu.getMenu_id(), superMenu);
				menus.add(superMenu);
			}else{
				for (SuperMenu superMenu : menus) {
					if(superMenu.getMenu_id().equals(Integer.valueOf(menu.getParentId()))){
						superMenu.getChildren().add(menu);
						break;
					}
				}
			}
		}
		System.err.println(menus.toString());
		return menus;
	}
	
	
	
}
