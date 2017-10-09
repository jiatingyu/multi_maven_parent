package com.jty.manage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.jty.manage.entity.Permission;
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
    void deleteRole(String id);  
  
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
    //生成权限数据
	void generatePrivilege(@Param("priviMap")Map<String, String> priviMap);
	
	@Delete("delete from privilege")
	void deletePrivilege();  
}
