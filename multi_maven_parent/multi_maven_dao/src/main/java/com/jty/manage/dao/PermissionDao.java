package com.jty.manage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.jty.manage.entity.Menu;
import com.jty.manage.entity.Permission;
import com.jty.manage.entity.Privilege;
import com.jty.manage.entity.Resource;
import com.jty.manage.entity.Role;
import com.jty.manage.entity.User;

@Repository
public interface PermissionDao {

	// 插入新权限
	void insertPermission(Permission permission);

	// 删除权限
	void deletePermission(String id);

	// 根据id查找权限
	Permission findPermissionById(String id);

	// 查找所有权限
	@SuppressWarnings("unchecked")
	List<Permission> findAllPermission();

	// 增加资源
	void insertResource(Resource resource);

	// 修改资源
	void updateResource(Resource resource);

	// 查找所有资源
	@SuppressWarnings("unchecked")
	List<Resource> findAllResource();

	// 根据uri查找资源
	Resource findResourceByURI(String uri);

	// 根据id查找资源
	Resource findResourceById(String id);

	// 删除资源
	void deleteResource(String id);

	// 新增角色
	void insertRole(Role role);

	// 更新角色
	void updateRole(Role role);

	// 删除角色
	@Delete("delete from role where role_id=#{id}")
	int deleteRole(String id);
	
	@Delete("delete from role_menu where role_id=#{id}")
	int deleteRoleRelationMenu(String id);
	@Delete("delete from role_privilege where roleid=#{id}")
	int deleteRoleRelationPrivilege(String id);

	// 根据id查找角色
	@SuppressWarnings("unchecked")
	Role findRoleById(String id);

	// 查找所有角色
	@SuppressWarnings("unchecked")
	List<Role> fineAllRole();

	// 插入用户
	void insertUser(User user);

	// 更新用户
	void updateUser(User user);

	// 删除用户
	void deleteUser(String id);

	// 根据id查找用户
	@SuppressWarnings("unchecked")
	User findUserById(String id);

	// 查找所有用户
	@SuppressWarnings("unchecked")
	List<User> findAllUser();

	User login(String username, String password);

	// 生成权限数据
	void generatePrivilege(@Param("priviMap") Map<String, String> priviMap);

	@Delete("delete from privilege")
	void deletePrivilege();

	/**
	 * 查询所有权限资源
	 * 
	 * @return
	 */
	List<Privilege> findAllPrivilege();

	@Select("select * from role")
	List<Role> findAllRole();

	void addRole(Role role);

	@Select("select * from user where username=#{username} and password=#{pwd}")
	User findUserByUsernameAndPwd(@Param("username") String username, @Param("pwd") String pwd);

	@Select("SELECT DISTINCT e.*,c.* FROM `user` a " + "LEFT JOIN user_role b on a.id=b.userid "
			+ "LEFT JOIN role c on b.roleid=c.role_id " + "LEFT JOIN role_privilege d on c.role_id=d.roleid "
			+ "LEFT JOIN privilege e on d.privilegeid=e.privilege_id WHERE a.id=#{id}")
	List<Privilege> findUserAllPrivilege(String id);

	@Select("SELECT DISTINCT c.* FROM `user` a " + "LEFT JOIN user_role b on a.id=b.userid "
			+ "LEFT JOIN role c on b.roleid=c.role_id " + " WHERE a.id=#{id}")
	List<Role> findUserAllRole(String id);

	@Select("select * from tb_menu")
	List<Menu> findAllMenu();

	@Insert("insert into tb_menu (name,parentId,type,resUrl, icon,sort,isValid,description,createTime,updateTime) values ("
			+ "					#{name},#{parentId},#{type},#{resUrl},#{icon},#{sort},#{isValid},#{description},NOW(),NOW())")
	int addMenu(Menu menu);

	@Delete("delete from tb_menu where menu_id =#{menu_id}")
	int deleteMenu(String menu_id);

	@Select("SELECT e.* from user a " + "LEFT JOIN user_role b on 	a.id=b.userid "
			+ "LEFT JOIN role c on b.roleid=c.role_id " + "LEFT JOIN role_menu d on c.role_id =d.role_id "
			+ "LEFT JOIN tb_menu e on d.menu_id=e.menu_id "
			+ "where a.id=#{user_id} and e.isValid =1  ORDER BY e.parentId")
	List<Menu> findUserAllMenu(String user_id);

	@Insert("insert into user_role (userid,roleid) values (#{userId} , #{roleId})")
	void addUserAndRoleRelation(@Param("userId") String userId, @Param("roleId") String roleId);

	void addRoleAndPrivilegeRelation(@Param("role_id") String role_id,
			@Param("permissions") List<Privilege> permissions);

	@Select("select * from tb_menu where menu_id = #{menu_id}")
	Menu editMenu(String menu_id);

	@Update("update tb_menu set name=#{name},parentId=#{parentId},type=#{type},resUrl=#{resUrl}, icon=#{icon},sort=#{sort},isValid=#{isValid},description=#{description},updateTime=NOW() where menu_id=#{menu_id}")
	int updateMenu(Menu menu);

	@Select("select * from role where role_id=#{role_id}")
	Map<String,Object> editRole(String role_id);
}
