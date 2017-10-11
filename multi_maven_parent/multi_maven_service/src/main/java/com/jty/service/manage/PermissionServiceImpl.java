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
	public void insertUser(User user) {
		 dao.insertUser(user);
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
	
	
}
