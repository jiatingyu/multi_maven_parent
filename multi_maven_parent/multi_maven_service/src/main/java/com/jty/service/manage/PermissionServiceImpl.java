package com.jty.service.manage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jty.manage.dao.PermissionDao;
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
	
}
