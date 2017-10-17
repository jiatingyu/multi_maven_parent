package com.jty.service.manage;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.jty.manage.entity.Menu;
import com.jty.manage.entity.Privilege;
import com.jty.manage.entity.Role;
import com.jty.manage.entity.User;

public interface PermissionService {

	List<User> getAllUser();

	String insertUser(User user);

	void deleteUser(String id);

	void generatePrivilege(Map<String, String> map);

	List<Privilege> findAllPrivilege();

	List<Role> findAllRole();

	void addRole(Role role);

	User findUserByUsernameAndPwd(String username,String pwd);

	List<Privilege> findUserAllPrivilege(String id);

	List<Role> findUserAllRole(String id);

	List<Menu> findAllMenu();

	int addMenu(Menu menu);

	int deleteMenu(String menu_id);
	/**
	 * 查询系统当前用户的全部菜单
	 * 	 */
	List<Menu> findUserAllMenu(String user_id);

	int  deleteRole(String role_id);
/**
 * 编辑菜单
 * @param menu_id
 * @return
 */
	Menu editMenu(String menu_id);
/**
 * 更新菜单
 * @param menu
 * @return
 */
int updateMenu(Menu menu);

Map<String,Object> editRole(String role_id);

int addRoleMenuRelation(String role_id, List<String> menuList);

}
