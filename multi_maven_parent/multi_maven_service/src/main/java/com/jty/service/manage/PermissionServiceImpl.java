package com.jty.service.manage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jty.manage.dao.PermissionDao;
import com.jty.manage.entity.Menu;
import com.jty.manage.entity.Privilege;
import com.jty.manage.entity.Role;
import com.jty.manage.entity.User;
@Service("PermissionService")
public class PermissionServiceImpl implements PermissionService {
	@Autowired
	PermissionDao dao;

	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		List<User> findAllUser = dao.findAllUser();
		return findAllUser;
	}
	public String insertUser(User user) {
		dao.insertUser(user);
		if(user.getRoleList()!=null && user.getRoleList().size()>0)
			dao.addUserAndRoleRelation(user.getId(),user.getRoleList().get(0).getRole_id());
		return null;	
		  
	}
	
	public void deleteUser(String id) {
		dao.deleteUser(id);
	}
	public void generatePrivilege(Map<String, String> map) {
		// TODO Auto-generated method stub
		//重新生成权限数据的时候先全部删除
		dao.deletePrivilege();
		//重新生成全部数据
		dao.generatePrivilege(map);
	}
	public List<Privilege> findAllPrivilege() {
		// TODO Auto-generated method stub
		return dao.findAllPrivilege();
	}
	public List<Role> findAllRole() {
		// TODO Auto-generated method stub
		return dao.findAllRole();
	}
	public void addRole(Role role) {
		// TODO Auto-generated method stub
		 dao.addRole(role);
		 //增加角色资源权限
		 dao.addRoleAndPrivilegeRelation(role.getRole_id(),role.getPermissions());
	}
	
	
	public int addRoleMenuRelation(String role_id, List<String> menuList) {
		// TODO Auto-generated method stub
		dao.deleteRoleMenuRelation(role_id);
		return dao.addRoleMenuRelation(role_id,menuList);
	}
	
	public Map<String,Object> editRole(String role_id) {
		// TODO Auto-generated method stub
		return dao.editRole(role_id);
	}
	public User findUserByUsernameAndPwd(String username,String pwd) {
		// TODO Auto-generated method stub
		return dao.findUserByUsernameAndPwd(username,pwd);
	}
	public List<Privilege> findUserAllPrivilege(String id) {
		// TODO Auto-generated method stub
		return dao.findUserAllPrivilege(id);
	}
	public List<Role> findUserAllRole(String id) {
		// TODO Auto-generated method stub
		return dao.findUserAllRole(id);
	}
	public List<Menu> findAllMenu() {
		// TODO Auto-generated method stub
		return dao.findAllMenu();
	}
	public int addMenu(Menu menu) {
		// TODO Auto-generated method stub
		return dao.addMenu(menu);
	}
	
	public int updateMenu(Menu menu) {
		// TODO Auto-generated method stub
		return dao.updateMenu(menu);
	}
	public int deleteMenu(String menu_id) {
		// TODO Auto-generated method stub
		return dao.deleteMenu(menu_id);
	}
	public List<Menu> findUserAllMenu(String user_id) {
		// TODO Auto-generated method stub
		return dao.findUserAllMenu( user_id);
	}
	public int  deleteRole(String role_id) {
		//删除角色 和删除角色的全部资源 和菜单
		//删除跟角色相关的菜单
		dao.deleteRoleRelationMenu(role_id);
		//删除跟角色相关的资源
		dao.deleteRoleRelationPrivilege(role_id);
		return dao.deleteRole(role_id);
	}
	public Menu editMenu(String menu_id) {
		// TODO Auto-generated method stub
		return dao.editMenu(menu_id);
	}
	
	
	
}
